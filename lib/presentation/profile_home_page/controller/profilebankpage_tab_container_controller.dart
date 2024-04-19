import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:muhammad_s_application3/core/app_export.dart';
import 'package:muhammad_s_application3/data/apiClient/image_upload_api/image_upload_api.dart';
import 'package:muhammad_s_application3/data/apiClient/login_api/login_controller.dart';
import 'package:muhammad_s_application3/presentation/profile_home_page/models/profilebankpage_tab_container_model.dart';
import 'package:flutter/material.dart';


class ProfilebankpageTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ProfilebankpageTabContainerModel> profilebankpageTabContainerModelObj =
      ProfilebankpageTabContainerModel().obs;
  final ImageUploadController imageUploadcontroller =
      Get.put(ImageUploadController());

  final LoginController loginController = Get.put(LoginController());
  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));
  Rx<XFile?> imagePath = Rx<XFile?>(null);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAlluserdata();
  }

  void uploadImage({required File imageFile}) async {
    final String? token = await loginController.getAuthToken();
    final String? userid = await loginController.getUserId();
    imageUploadcontroller.updateProfileImage(userid!, imageFile, token!);
  }

  void getAlluserdata() async {
    final String? token = await loginController.getAuthToken();
    final String? userid = await loginController.getUserId();
    print(token);
    print(userid);

    await loginController.fetchUserData(Authtoken: token!, userId: userid!);
  }

  Future<void> openCamera() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      imagePath.value = pickedImage;
      // Use the picked file (e.g., upload or display the image)
      print('Image from camera: ${imagePath.value!.path}');
    }
  }

  Future<void> openGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      imagePath.value = pickedImage;
      // Use the picked file (e.g., upload or display the image)
      print('Image from gallery: ${imagePath.value!.path}');
    }
  }
}
