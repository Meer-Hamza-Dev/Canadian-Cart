import 'package:candian_cart/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:candian_cart/utils/app_constants/const_images.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();
  final auth = FirebaseAuth.instance;

  var selectedFlag = ImageConst.flag2.obs;

  final List<String> flags = [
    ImageConst.flag1,
    ImageConst.flag2,
  ];

  void setSelectedFlag(String flag) {
    selectedFlag.value = flag;
  }

  var selectedImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      selectedImage.value = File(pickedFile.path);
    }
  }

  var isExpanded = false.obs;

  void toggleExpanded() {
    isExpanded.value = !isExpanded.value;
  }

  var currentIndex = 0.obs;

  void updateIndex(int index) {
    currentIndex.value = index;
  }

// phone authentication

  late User _firebaseUser;
  String? _verificationCode;
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController codeController = TextEditingController();
  String token = "your_device_token_here";

  @override
  void onInit() {
    super.onInit();
    phoneController.text = '+923245055755';
    verifyPhone();
  }

  void verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        try {
          await FirebaseAuth.instance.signInWithCredential(credential);
          print(
              "Phone number automatically verified and user signed in: ${FirebaseAuth.instance.currentUser}");
        } catch (e) {
          print("Error during automatic sign-in: $e");
        }
      },
      verificationFailed: (FirebaseAuthException e) {
        print("Verification failed: ${e.message}");
        Get.snackbar('Verification Failed', e.message!);
      },
      codeSent: (String verificationID, int? resendToken) {
        _verificationCode = verificationID;
        Get.snackbar(
          'Code Sent',
          'Please check your phone for the verification code.',
        );
      },
      codeAutoRetrievalTimeout: (String verificationID) {
        _verificationCode = verificationID;
      },
      timeout: Duration(seconds: 120),
    );
  }

  void signInWithPhoneNumber(String currentText) async {
    try {
      final result = await FirebaseAuth.instance.signInWithCredential(
        PhoneAuthProvider.credential(
          verificationId: _verificationCode!,
          smsCode: currentText,
        ),
      );

      if (result.user != null) {
        print("User signed in successfully.");
        Get.toNamed(Routes.OTPConfirmRoute);
      }
    } catch (e) {
      print("Error during sign-in: $e");
      Get.snackbar('Error', 'Invalid code. Please try again.');
    }
  }

  @override
  void onClose() {
    phoneController.dispose();
    codeController.dispose();
    super.onClose();
  }
}
