import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/style/style.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';

class logout extends StatefulWidget {
  const logout({Key? key}) : super(key: key);

  @override
  State<logout> createState() => _logoutState();
}

class _logoutState extends State<logout> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          left: MediaQuery.of(context).size.width * 0.03,
        ),
        child: Column(
          children: <Widget>[
            Text('Profiles', style: textstyle1()),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            CircleAvatar(
              radius: 66.sp, // Half of 132px to make it 132px in diameter
              backgroundImage: NetworkImage(
                'https://s3-alpha-sig.figma.com/img/a1aa/4b6f/ac9cc0c5260548277ada795a19348014?Expires=1713139200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qrxudsDSPkflmwS~K6gMmBm-kdEiTTjFQ513u0kvezggM50SdW6x5w7SSn5hb7GtCIKGM04ZVXDHsy2OF2uCmEN75mk7D-5R1dica3iFnKueKmh0C8soSM~97Aw6-jmgONntUpDlMvTbSVtoAwv0r1o2X1C9x9BpQAcLntP55ScazdaQEw9N9wuxx-Ot5fKUE63N2NsRHesh2ifwV1cI4UG0CNBH14Yh0FivhiLSofi5D17gHpZsF94DLixrP4RY2FNFDs677An-vBpqHcBVLYGjdwhhE1iVHqnVWNTC4jOkK6MNWX72e53mVjKN9XwtabPxF0cmBxttDTr36TRdqw__',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text('Mohamed Maher', style: textstyle1()),
            Container(
              width: MediaQuery.of(context).size.width / 1.09,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.logoutcolor, // Change color as needed
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'See You Soon',
                        style: TextStyle(
                            fontFamily: 'OleoScriptSwashCaps',
                            color: Colors.white,
                            fontSize: 30.0.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: Center(
                        child: Text(
                          "You are about to logout. Are you sure this is what you want? ",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 22.7.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Cancel',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                              fontSize: 22.7.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Button onPressed logic
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 24),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          child: Text(
                            'Confirm Logout',
                            style: TextStyle(
                              color: AppColors.four,
                              fontFamily: 'Poppins',

                              fontSize: 16.sp,
                              height: 1.0, // Line height
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                      ),
                      child: Row(
                        children: <Widget>[
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                _isChecked = value!;
                              });
                            },
                            visualDensity: VisualDensity
                                .standard, // Reduce the size of the checkbox
                            checkColor: Colors.white, // Color of the check mark
                            activeColor: Colors.white, // Transparent fill color
                            fillColor: MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return Colors
                                    .white; // White color when selected
                              }
                              return Colors
                                  .white; // Transparent color otherwise
                            }),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Colors.white), // Border color
                              borderRadius:
                                  BorderRadius.circular(3), // Border radius
                            ),
                          ),
                          Text(
                            'Logout from all devices',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              height: 1.0, // Line height
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
