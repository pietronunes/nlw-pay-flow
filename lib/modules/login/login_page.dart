import 'package:appnlw/shared/themes/app_colors.dart';
import 'package:appnlw/shared/themes/app_images.dart';
import 'package:appnlw/shared/themes/app_text_styles.dart';
import 'package:appnlw/shared/widgets/social_button_login/social_button_login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        height: screen.height,
        child: Stack(
          children: [
            Container(
              height: screen.height * 0.36,
              color: Theme.of(context).primaryColor,
            ),
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
              bottom: screen.height * 0.05,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: SocialLoginButton(
                      onTap: () {
                        print("CLicou");
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
