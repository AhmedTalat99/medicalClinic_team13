class ApiEndPoints {

  // auth
  static const String _auth = '/auth';
  static const String doctorLogin = '$_auth/doctor/login?ln=en';
  static const String doctorSignUp = '$_auth/doctor/signup?ln=ar';
  static const String patientLogin = '$_auth/patient/login?ln=ar';
  static const String patientSignUp = '$_auth/patient/signup?ln=en';
}
