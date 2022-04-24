import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobility_app/shared/widgets/buttons.dart';
import 'package:mobility_app/shared/widgets/fields.dart';
import 'package:mobility_app/utils/app_files.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImages.waitingCar,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.30,
                  height: MediaQuery.of(context).size.height * 0.30,
                ),
                CustomTextField(
                  label: 'E-mail',
                  icon: Icons.email,
                ),
                CustomTextField(
                  label: 'Senha',
                  icon: Icons.password,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: PrimaryButton(
                    label: 'Entrar',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            CustomTextButton(
              label: 'Ainda não tem conta? Cadastre-se',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
