class ApiEndPoints {
  //common auth
  static const String _auth = '/auth';
  /////////////// Doctor \\\\\\\\\\\\\\\\\\\\\

  // auth
  static const String doctorSignUp = '$_auth/doctor/signup?ln=ar';
  static const String doctorLogin = '$_auth/doctor/login?ln=en';
  static const String doctorPreSignup = '$_auth/doctor/preSignup/?ln=ar';
  static const String doctorForgetPassword =
      '$_auth/doctor/password/forget?ln=ar';
  static const String doctorResetPassword =
      '$_auth/doctor/password/reset?ln=ar';
  // chat
  static const String doctorSendMessage = '/chat?ln=ar';
  static const String doctorGetChat = '/chat/655f5bcdfdea76a8717c76af?ln=ar';
  static const String doctorSoftDeleteChat =
      '/chat/6563bb6f196630a79b9b3a15?ln=ar';
  // add Date
  static const String doctorAddDate = '/doctor/addDate?ln=ar';

  /////////////// Patient \\\\\\\\\\\\\\\\\\\\\
 
  // auth
  static const String patientSignUp = '$_auth/patient/signup?ln=en';
  static const String patientLogin = '$_auth/patient/login?ln=ar';
  static const String patientPreSignup = '$_auth/patient/preSignup/?ln=ar';
  static const String patientForgetPassword =
      '/$_auth/doctor/password/forget?ln=ar';
  static const String patientResetPassword =
      '$_auth/doctor/password/reset?ln=ar';
  // review
  static const String patientAddReview = '/review/?ln=en';
  static const String patientUpdateReview =
      '/review/65490b2fd6f775358398783f?ln=en';
  static const String patientDeleteReview =
      '/review/65490264d6f7753583987819?ln=en';
  static const String patientGetReview =
      '/review/6549001800f6e57d9a7ee5d5?ln=en';
  static const String patientGetAllReview = '/review/?ln=en';

  // chat
  static const String patientSendMessage = '/chat?ln=ar';
  static const String patientGetChat = '/chat/655f5877fdea76a8717c769b?ln=ar';
  static const String patientSoftDeleteChat =
      '/chat/6563bb6f196630a79b9b3a15?ln=ar';
  // general
  static const String patientGetPatientProfile =
      '/patient/6543e86e2c22bece8c5d7b6b5?ln=en';
  static const String patientGetAllPatientProfile = '/patient/?ln=ar';
  static const String patientChangePassword = '/doctor/changePassword?ln=en';
  static const String patientlogout = '/patient/logout?ln=en';
  static const String patientUpdate = '/patient/updateInfo?ln=en';
  static const String patientChangeEmail = '/patient/changeEmail?ln=en';
  static const String patientConfirmChangeEmail =
      '/patient/confirmChangeEmail?ln=en';

  /////////////// Admin \\\\\\\\\\\\\\\\\\\\\
 
  // auth
  static const String adminSignUp = '$_auth/admin/signup?ln=en';
  static const String adminLogin = '$_auth/admin/login?ln=en';
  static const String adminPreSignup = '$_auth/admin/preSignUp?ln=en';
  static const String adminForgetPassword =
      '/$_auth/admin/password/forget?ln=en';
  static const String adminResetPassword = '$_auth/admin/password/reset?ln=en';
  // review
  static const String adminAddReview = '/review/?ln=en';
  static const String adminUpdateReview =
      '/review/65490b2fd6f775358398783f?ln=en';
  static const String adminDeleteReview =
      '/review/65490264d6f7753583987819?ln=en';
  static const String adminGetReview = '/review/65490264d6f7753583987819?ln=en';
  static const String adminGetAllReview =
      '/review/65490264d6f7753583987819?ln=en';

  // general
  static const String adminGetPatientProfile =
      '/patient/6543e86e2c22bece85d7b6b5?ln=enn';
  static const String adminGetAllPatientProfile = '/patient/?ln=ar';
  static const String adminChangePassword = '/doctor/changePassword?ln=en';
  static const String adminlogout = '/patient/logout?ln=en';
  static const String adminUpdate = '/patient/updateInfo?ln=en';
  static const String adminChangeEmail = '/patient/changeEmail?ln=en';
  static const String adminConfirmChangeEmail =
      '/patient/confirmChangeEmail?ln=en';

  /////////////// Category \\\\\\\\\\\\\\\\\\\\\
  
  // admin
  static const String adminCreateCategory = '/category/admin?ln=ar';
  static const String adminDelete =
      'http://localhost:3000/category/admin/655dde5233c1615e20e822f8?ln=ar'; // note : url is different from baseurl
  static const String adminUpdateCategory =
      '/category/admin/655ddcc53857a048a01df2ad?ln=ar';
  static const String adminGetCategory =
      '/category/admin/655ddcc53857a048a01df2ad?ln=ar';
  static const String adminGetCategories = '/category/admin?ln=ar';
  // patient
  static const String patientGetCategory =
      '/category/patient/655ddcc53857a048a01df2ad?ln=ar';
  static const String patientGetCategories = '/category/admin?ln=ar';
  // doctor
  static const String doctorGetCategory =
      '/category/doctor/655ddcc53857a048a01df2ad?ln=ar';
  static const String doctorGetCategories = '/category/doctor?ln=ar';
  /////////////// Reservation \\\\\\\\\\\\\\\\\\\\\
  
  // patient
  static const String patientMakeReservation =
      '/reservation/patient/6578d74b106c7d948f8bd947?ln=a';
  static const String patientCancelReservation =
      '/reservation/patient/6564e4565aeb048bcb227c5a/cancel?ln=en';
  static const String patientTodayReservations =
      '/reservation/today/patient/?ln=en';
  static const String patientReservationsForOneDoctor =
      '/reservation/patient/6548ffb200f6e57d9a7ee5ca?ln=en';
  // doctor
  static const String doctorConfirmReservation =
      '/reservation/doctor/6578d74c106c7d948f8bd954/confirm?ln=ar';
  static const String doctorCancelReservation =
      '/reservation/doctor/6578d74b106c7d948f8bd947/cancel?ln=ar';
  static const String patientDeleteReservation =
      '/reservation/doctor/6564e64ae69371ffc13e46a8?ln=ar';
  static const String patientAccepted = '/reservation/doctor/accepted?ln=ar';
  static const String patientConfirmNeedToConfirm =
      '/reservation/doctor/confirm?ln=ar';
  static const String patientRejected = '/reservation/doctor/rejected?ln=ar';
  static const String patientSelectedBookedByDate =
      '/reservation/doctor/booked?ln=ar';
}
