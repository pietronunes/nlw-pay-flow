import 'package:appnlw/shared/themes/app_colors.dart';
import 'package:appnlw/shared/themes/app_images.dart';
import 'package:appnlw/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.shape,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: AppColors.stroke)),
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.google),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      width: 1,
                      height: 56,
                      color: AppColors.stroke,
                    )
                  ],
                )),
            Expanded(
              flex: 4,
              child: Text(
                "Entrar com Google",
                textAlign: TextAlign.center,
                style: TextStyles.buttonGray,
              ),
            )
          ],
        ),
      ),
    );
  }
}
