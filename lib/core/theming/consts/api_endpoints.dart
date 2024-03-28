class ApiEndPoints {
  // auth
  static const String _auth = '/auth';
  static const String login = '$_auth/patient/login';
  static const String register = '$_auth/register';
  static const String requestEmailVerificationCode =
      '$_auth/email-verification-code';
  static const String verifyEmail = '$_auth/verify-email';
  static const String resetPassword = '$_auth/reset-password';
}
