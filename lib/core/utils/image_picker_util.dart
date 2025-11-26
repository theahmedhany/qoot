import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerUtil {
  static final ImagePicker _picker = ImagePicker();

  static Future<File?> pickImageFromGallery({
    int imageQuality = 85,
    double? maxWidth,
    double? maxHeight,
  }) async {
    try {
      final bool hasPermission = await _requestGalleryPermission();
      if (!hasPermission) {
        debugPrint('Gallery permission denied');
        return null;
      }

      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );

      if (pickedFile != null) {
        return File(pickedFile.path);
      }
      return null;
    } catch (e) {
      debugPrint('Error picking image from gallery: $e');
      return null;
    }
  }

  static Future<File?> pickImageFromCamera({
    int imageQuality = 85,
    double? maxWidth,
    double? maxHeight,
    CameraDevice preferredCameraDevice = CameraDevice.rear,
  }) async {
    try {
      final bool hasPermission = await _requestCameraPermission();
      if (!hasPermission) {
        debugPrint('Camera permission denied');
        return null;
      }

      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        preferredCameraDevice: preferredCameraDevice,
      );

      if (pickedFile != null) {
        return File(pickedFile.path);
      }
      return null;
    } catch (e) {
      debugPrint('Error picking image from camera: $e');
      return null;
    }
  }

  static Future<List<File>?> pickMultipleImages({
    int imageQuality = 85,
    double? maxWidth,
    double? maxHeight,
    int? limit,
  }) async {
    try {
      final bool hasPermission = await _requestGalleryPermission();
      if (!hasPermission) {
        debugPrint('Gallery permission denied');
        return null;
      }

      final List<XFile> pickedFiles = await _picker.pickMultiImage(
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
        limit: limit,
      );

      if (pickedFiles.isNotEmpty) {
        return pickedFiles.map((file) => File(file.path)).toList();
      }
      return null;
    } catch (e) {
      debugPrint('Error picking multiple images: $e');
      return null;
    }
  }

  static Future<File?> pickVideo({
    VideoSource source = VideoSource.gallery,
    Duration? maxDuration,
  }) async {
    try {
      final bool hasPermission = source == VideoSource.camera
          ? await _requestCameraPermission()
          : await _requestGalleryPermission();

      if (!hasPermission) {
        debugPrint('Permission denied for video picking');
        return null;
      }

      final XFile? pickedFile = await _picker.pickVideo(
        source: source == VideoSource.camera
            ? ImageSource.camera
            : ImageSource.gallery,
        maxDuration: maxDuration,
      );

      if (pickedFile != null) {
        return File(pickedFile.path);
      }
      return null;
    } catch (e) {
      debugPrint('Error picking video: $e');
      return null;
    }
  }

  static Future<File?> showImageSourceDialog(
    BuildContext context, {
    String title = 'Select Image Source',
    String cameraText = 'Camera',
    String galleryText = 'Gallery',
    String cancelText = 'Cancel',
    int imageQuality = 85,
    double? maxWidth,
    double? maxHeight,
  }) async {
    final File? image = await showModalBottomSheet<File?>(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: Text(cameraText),
                  onTap: () async {
                    final File? image = await pickImageFromCamera(
                      imageQuality: imageQuality,
                      maxWidth: maxWidth,
                      maxHeight: maxHeight,
                    );
                    if (context.mounted) {
                      Navigator.pop(context, image);
                    }
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: Text(galleryText),
                  onTap: () async {
                    final File? image = await pickImageFromGallery(
                      imageQuality: imageQuality,
                      maxWidth: maxWidth,
                      maxHeight: maxHeight,
                    );
                    if (context.mounted) {
                      Navigator.pop(context, image);
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    cancelText,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    return image;
  }

  static Future<bool> _requestCameraPermission() async {
    if (Platform.isIOS) {
      final PermissionStatus status = await Permission.camera.request();
      return status.isGranted;
    } else if (Platform.isAndroid) {
      final PermissionStatus status = await Permission.camera.request();
      return status.isGranted;
    }
    return true;
  }

  static Future<bool> _requestGalleryPermission() async {
    if (Platform.isIOS) {
      final PermissionStatus status = await Permission.photos.request();
      if (status.isPermanentlyDenied) {
        await openAppSettings();
        return false;
      }
      return status.isGranted || status.isLimited;
    } else if (Platform.isAndroid) {
      final androidInfo = await Permission.mediaLibrary.status;
      if (androidInfo.isDenied) {
        final PermissionStatus status = await Permission.storage.request();
        return status.isGranted;
      }
      return true;
    }
    return true;
  }

  static Future<bool> checkCameraPermission() async {
    final PermissionStatus status = await Permission.camera.status;
    return status.isGranted;
  }

  static Future<bool> checkGalleryPermission() async {
    if (Platform.isIOS) {
      final PermissionStatus status = await Permission.photos.status;
      return status.isGranted || status.isLimited;
    } else if (Platform.isAndroid) {
      final PermissionStatus status = await Permission.storage.status;
      return status.isGranted;
    }
    return true;
  }

  static Future<void> openSettings() async {
    await openAppSettings();
  }

  static String getFileSize(File file) {
    final int bytes = file.lengthSync();
    if (bytes <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB"];
    final int i = (bytes.bitLength / 10).floor();
    return '${(bytes / (1 << (i * 10))).toStringAsFixed(2)} ${suffixes[i]}';
  }

  static String getFileName(File file) {
    return file.path.split('/').last;
  }

  static String getFileExtension(File file) {
    final String path = file.path;
    final int lastDot = path.lastIndexOf('.');
    if (lastDot != -1 && lastDot < path.length - 1) {
      return path.substring(lastDot + 1);
    }
    return '';
  }

  static bool isImage(File file) {
    final String extension = getFileExtension(file).toLowerCase();
    const imageExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp'];
    return imageExtensions.contains(extension);
  }

  static bool isVideo(File file) {
    final String extension = getFileExtension(file).toLowerCase();
    const videoExtensions = ['mp4', 'avi', 'mov', 'wmv', 'flv', 'mkv'];
    return videoExtensions.contains(extension);
  }
}

enum VideoSource {
  camera,
  gallery,
}
