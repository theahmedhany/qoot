import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/theme/app_texts/app_text_styles.dart';
import '../../../../../core/theme/theme_manager/theme_extensions.dart';
import '../../../../../core/utils/app_icons.dart';
import 'text_field_border_builder.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    this.errorMessage,
    this.hintText,
    this.isPassword = false,

    //File picker mode
    this.isFilePicker = false,
    this.onFileSelected,
    this.allowedExtensions = const ['pdf'],
    this.maxFileSizeMB = 5,

    //Dropdown mode
    this.isDropdown = false,
    this.dropdownItems,
    this.onDropdownChanged,
    this.selectedDropdownValue,
    this.dropdownHintText,
  });

  final TextEditingController? controller;
  final String? errorMessage;
  final String? hintText;
  final bool isPassword;

  // ===== FILE PICKER =====
  final bool isFilePicker;
  final void Function(File file)? onFileSelected;
  final List<String> allowedExtensions;
  final int maxFileSizeMB;

  // ===== DROPDOWN =====
  final bool isDropdown;
  final List<DropdownMenuItem<int>>? dropdownItems;
  final void Function(int?)? onDropdownChanged;
  final int? selectedDropdownValue;
  final String? dropdownHintText;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isVisible = true;
  File? selectedFile;

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: widget.allowedExtensions,
    );

    if (result != null && result.files.single.path != null) {
      final file = File(result.files.single.path!);
      final sizeInMB = file.lengthSync() / (1024 * 1024);
      final ext = file.path.split('.').last.toLowerCase();

      String? validationMessage;
      if (!widget.allowedExtensions.contains(ext)) {
        validationMessage =
            'Invalid file type. Allowed: ${widget.allowedExtensions.join(', ')}';
      } else if (sizeInMB > widget.maxFileSizeMB) {
        validationMessage = 'File size must be ≤ ${widget.maxFileSizeMB} MB';
      }

      if (validationMessage != null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(validationMessage)));
        return;
      }

      setState(() => selectedFile = file);
      widget.onFileSelected?.call(file);
    }
  }

  @override
  Widget build(BuildContext context) {
    final appColors = context.customAppColors;

    // === If dropdown mode ===
    if (widget.isDropdown) {
      return DropdownButtonFormField<int>(
        initialValue: widget.selectedDropdownValue,
        items: widget.dropdownItems,
        onChanged: widget.onDropdownChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.w,
            vertical: 11.h,
          ),
          hintText:
              widget.dropdownHintText ?? widget.hintText ?? 'Select an option',
          hintStyle: AppTextStyles.font16Regular.copyWith(
            color: appColors.grey400,
          ),
          error: widget.errorMessage != null
              ? Transform.translate(
                  offset: Offset(-15.w, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.error_outline,
                        color: appColors.error700,
                        size: 16.w,
                      ),
                      SizedBox(width: 4.w),
                      Expanded(
                        child: Text(
                          widget.errorMessage!,
                          style: AppTextStyles.font12Regular.copyWith(
                            color: appColors.error700,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              : null,
          border: textFieldBorderBuilder(color: appColors.grey100),
          enabledBorder: textFieldBorderBuilder(color: appColors.grey100),
          errorBorder: textFieldBorderBuilder(color: appColors.error700),
        ),
        style: AppTextStyles.font16Regular.copyWith(color: appColors.grey900),
        icon: Icon(Icons.keyboard_arrow_down_rounded, color: appColors.grey800),
      );
    }

    // === If file picker mode ===
    if (widget.isFilePicker) {
      return GestureDetector(
        onTap: _pickFile,
        behavior: HitTestBehavior.translucent,
        child: AbsorbPointer(
          absorbing: true,
          child: TextFormField(
            style: AppTextStyles.font16Regular.copyWith(
              color: appColors.grey900,
            ),
            readOnly: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 11.h,
              ),
              hintText: selectedFile != null
                  ? selectedFile!.path.split('/').last
                  : widget.hintText ?? 'Upload file',
              hintStyle: AppTextStyles.font16Regular.copyWith(
                color: appColors.grey400,
              ),
              suffixIcon: SizedBox(
                child: SvgPicture.asset(
                  AppIcons.iconsFileUpload,
                  fit: BoxFit.scaleDown,
                  colorFilter: ColorFilter.mode(
                    context.customAppColors.grey900,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              error: widget.errorMessage != null
                  ? Transform.translate(
                      offset: Offset(-15.w, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.error_outline,
                            color: appColors.error700,
                            size: 16.w,
                          ),
                          SizedBox(width: 4.w),
                          Expanded(
                            child: Text(
                              widget.errorMessage!,
                              style: AppTextStyles.font12Regular.copyWith(
                                color: appColors.error700,
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    )
                  : null,
              border: textFieldBorderBuilder(color: appColors.grey100),
              enabledBorder: textFieldBorderBuilder(color: appColors.grey100),
              errorBorder: textFieldBorderBuilder(color: appColors.error700),
            ),
          ),
        ),
      );
    }

    // === Default text field ===
    return TextFormField(
      controller: widget.controller,
      style: AppTextStyles.font16Regular.copyWith(color: appColors.grey900),
      obscureText: widget.isPassword ? isVisible : false,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
        hintText: widget.hintText,
        hintStyle: AppTextStyles.font16Regular.copyWith(
          color: appColors.grey400,
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () => setState(() => isVisible = !isVisible),
                icon: Icon(
                  isVisible
                      ? Icons.remove_red_eye_outlined
                      : Icons.visibility_off_outlined,
                  color: appColors.grey800,
                  size: 24.w,
                ),
              )
            : null,
        error: widget.errorMessage != null
            ? Transform.translate(
                offset: Offset(-15.w, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: appColors.error700,
                      size: 16.w,
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Text(
                        widget.errorMessage!,
                        style: AppTextStyles.font12Regular.copyWith(
                          color: appColors.error700,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              )
            : null,
        border: textFieldBorderBuilder(color: appColors.grey100),
        enabledBorder: textFieldBorderBuilder(color: appColors.grey100),
        errorBorder: textFieldBorderBuilder(color: appColors.error700),
      ),
    );
  }
}
