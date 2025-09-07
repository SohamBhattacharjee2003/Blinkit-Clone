import 'package:flutter/material.dart';
import 'package:my_app/reposistory/screens/bottomnavbar/bottomnavscreen.dart';
import 'package:my_app/reposistory/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            const SizedBox(height: 30),
            UiHelper.CustomImage(img: "image 10.png"),
            const SizedBox(height: 20),
            UiHelper.CustomText(
              text: "India's last minute app",
              color: const Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold",
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    UiHelper.CustomText(
                      text: "Sujal",
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w500,
                      fontsize: 20,
                    ),
                    SizedBox(height: 5),
                    UiHelper.CustomText(
                      text: "787565XXXX",
                      color: const Color(0xFF9C9C9C),
                      fontWeight: FontWeight.w400,
                      fontsize: 14,
                      fontfamily: "bold",
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 40,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                              text: "Login with",
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontsize: 14,
                              fontfamily: "bold",
                            ),
                            SizedBox(width: 5),
                            UiHelper.CustomImage(img: "image 9.png"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    UiHelper.CustomText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: const Color(0xFF9C9C9C),
                      fontWeight: FontWeight.normal,
                      fontsize: 10,
                    ),
                    SizedBox(height: 10),
                    UiHelper.CustomText(
                      text: "or login with phone number",
                      color: const Color(0xFF269237),
                      fontWeight: FontWeight.normal,
                      fontsize: 14,
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
