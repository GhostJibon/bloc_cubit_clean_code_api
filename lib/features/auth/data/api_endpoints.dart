class ApiEndPoints {
  ApiEndPoints._privateConstructor();
  static final ApiEndPoints instance = ApiEndPoints._privateConstructor();
  static const String baseUrl = "http://54.253.150.247:8080/";
  static const String splash = "splash";
  static const String promotionSlider = "promotion-slider";
  static const String login = "auth/user/login";
  static const String register = "auth/user/register";
  static const String checkUserExist = "user/check-user";

  // global data
  static const String enumList = "enum";
  static const String fuelType = "fuel";
  static const String fileUpload = "image-library";
  // global data

  // save fcm token
  static const String saveFcmToken = "user/fcm-token";
  // Boat
  static const String boat = "boat";
  static const String boatflullingHistory = "refuelling-boat";

  // support
  static const String support = "customer-support/";
  // refuelling
  static const String checkPrice = "refuelling-boat/price-calculate";
  static const String refuellingOrder = "refuelling-boat";
  static const String checkPayment = "refuelling-boat/payment-validate";

  // address
  static const String address = "user/delivery-address";
  static const String getAddress = "user/profile";

  static const String resetPassword = "auth/reset-password";
  static const String verifyOTp = "auth/otp-verify";
  static const String profileUpdate = "user/profile";
  static const String changePassword = "user/change-password";
  static const String forgotPasswordSendOTP = "auth/forgot-password";
  static const String forgotPasswordOtpVerify =
      "auth/forgot-password-otp-verify";
  static const String forgotPasswordUpdate = "auth/change-password";

  static const String resendVerifyEmail = "auth/resend-verify-email";
  static const String logout = "auth/logout";
  static const String refreshToken = "auth/refresh-token";
  static const String profile = "auth/profile";
  static const String imageBaseUrl =
      "http://54.253.150.247:8080/uploads/original/";
  static const thumbnail = "http://54.253.150.247:8080/uploads/thumbnail/";
  static const preview = "http://54.253.150.247:8080/uploads/preview/";
  //Notification
  static const String notification = "notification";
  static const String seen = "notification/seen";
}
