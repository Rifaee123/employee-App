import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import 'package:muhammad_s_application3/data/models/image_upload_response/image_upload_response.dart';

class ImageUploadController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isImageUploaded = false.obs;
  ImageUploadResponse profileUpdateResponse = ImageUploadResponse();

  RxString imageurl = ''.obs;

  Future<void> updateProfileImage(
      String userId, File imageFile, String authToken) async {
    try {
      isLoading(true);
      File file = File(imageFile.path);
      List<int> imageBytes = await file.readAsBytes();

      var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'https://marketfed.cyenosure.in/api/userlogin/profile-update/$userId'),
      );
      request.headers['Authorization'] = 'Bearer $authToken';
      request.files.add(http.MultipartFile.fromBytes('image', imageBytes,
          filename: 'image.jpg'));

      var response = await request.send();
      log(response.statusCode.toString());
      if (response.statusCode == 200) {
        var jsonResponse =
            await json.decode(await response.stream.bytesToString());
        log(jsonResponse.toString());
        profileUpdateResponse = ImageUploadResponse.fromJson(jsonResponse);
        print('Success: ${profileUpdateResponse.success}');
        print('Message: ${profileUpdateResponse.message}');
        print('Image URL: ${profileUpdateResponse.data}');

        Get.showSnackbar(GetSnackBar(
          title: 'Image uploaded ',
          backgroundColor: const Color.fromARGB(142, 76, 175, 79),
          message: profileUpdateResponse.message,
          duration: Duration(milliseconds: 2000),
        ));

        isImageUploaded(true);

        // Access the response data
      } else {
        // Handle error
        var jsonResponse = await http.Response.fromStream(response);
        Get.snackbar('Error', jsonResponse.body);
        print('Error: ${response.reasonPhrase}');
      }
    } catch (error) {
      Get.snackbar('Error', 'An error occurred: $error');
      // Handle unexpected errors
      print('Error: $error');
    } finally {
      isLoading(false);
    }
  }

  Future<File?> pickImage() async {
    final picker = ImagePicker();
    var pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      return File(pickedFile.path);
    }

    return null;
  }
}
