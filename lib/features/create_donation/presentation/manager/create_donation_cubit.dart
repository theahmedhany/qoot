import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:qoot/core/di/service_locator.dart';
import 'package:qoot/features/create_donation/data/models/create_donation_response.dart';
import 'package:qoot/features/create_donation/data/repos/create_donation_repo.dart';
import 'package:qoot/features/create_donation/presentation/manager/create_donation_state.dart';

class CreateDonationCubit extends Cubit<CreateDonationState> {
  final _repo = getIt<CreateDonationRepo>();

  CreateDonationCubit() : super(const CreateDonationState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController foodTypeController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController estimatedServingsController =
      TextEditingController();
  final TextEditingController specialInstructionsController =
      TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController contactPersonController = TextEditingController();
  final TextEditingController contactPhoneController = TextEditingController();

  final ValueNotifier<List<File>> donationImagesNotifier =
      ValueNotifier<List<File>>([]);
  DateTime? selectedExpiryDate;

  List<File> get donationImages => donationImagesNotifier.value;

  void setDonationImages(List<File> images) {
    donationImagesNotifier.value = List.from(images);
  }

  void setExpiryDate(DateTime date) {
    selectedExpiryDate = date;
    expiryDateController.text = _formatDateForUI(date);
  }

  String _formatDateForUI(DateTime date) {
    const arabicMonths = [
      'يناير',
      'فبراير',
      'مارس',
      'أبريل',
      'مايو',
      'يونيو',
      'يوليو',
      'أغسطس',
      'سبتمبر',
      'أكتوبر',
      'نوفمبر',
      'ديسمبر',
    ];
    return '${date.day} ${arabicMonths[date.month - 1]} ${date.year}';
  }

  String _formatDateForBackend(DateTime date) {
    return date.toUtc().toIso8601String();
  }

  Future<void> createDonation() async {
    if (!formKey.currentState!.validate()) return;

    if (selectedExpiryDate == null) {
      emit(
        const CreateDonationState.error(
          error: "يرجى اختيار تاريخ الانتهاء",
        ),
      );
      return;
    }

    emit(const CreateDonationState.loading());

    try {
      final List<MultipartFile> imageFiles = [];

      for (var image in donationImages) {
        imageFiles.add(
          await MultipartFile.fromFile(
            image.path,
            filename:
                'donation_${DateTime.now().millisecondsSinceEpoch}_${imageFiles.length}.jpg',
          ),
        );
      }

      final formData = FormData.fromMap({
        'FoodType': foodTypeController.text.trim(),
        'Description': descriptionController.text.trim(),
        'EstimatedServings':
            int.tryParse(estimatedServingsController.text.trim()) ?? 0,
        'SpecialInstructions': specialInstructionsController.text.trim(),
        'ExpiryDateTime': _formatDateForBackend(selectedExpiryDate!),
        'ContactPerson': contactPersonController.text.trim(),
        'ContactPhone': contactPhoneController.text.trim(),
        'RequiresPickup': true,
      });

      for (var imageFile in imageFiles) {
        formData.files.add(MapEntry('Images', imageFile));
      }

      final response = await _repo.createDonation(formData);

      try {
        final data = (response as dynamic).data as CreateDonationResponse;
        emit(CreateDonationState.success(data));
      } catch (_) {
        try {
          final failure = (response as dynamic).failure;
          final errorMsg =
              failure?.map(
                noInternet: (_) => 'لا يوجد اتصال بالإنترنت',
                unauthorized: (_) => 'غير مصرح',
                notFound: (_) => 'غير موجود',
                serverError: (error) => error.message ?? 'خطأ في الخادم',
                timeout: (_) => 'انتهت مهلة الطلب',
                unknown: (error) => error.message ?? 'حدث خطأ غير متوقع',
              ) ??
              'حدث خطأ غير متوقع';
          emit(CreateDonationState.error(error: errorMsg));
        } catch (_) {
          emit(const CreateDonationState.error(error: 'حدث خطأ غير متوقع'));
        }
      }
    } catch (e) {
      emit(
        const CreateDonationState.error(
          error: "حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.",
        ),
      );
    }
  }

  @override
  @override
  Future<void> close() {
    foodTypeController.dispose();
    descriptionController.dispose();
    estimatedServingsController.dispose();
    specialInstructionsController.dispose();
    expiryDateController.dispose();
    contactPersonController.dispose();
    contactPhoneController.dispose();
    donationImagesNotifier.dispose();
    return super.close();
  }
}
