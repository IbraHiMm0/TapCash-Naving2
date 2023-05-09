import 'package:demo/presentation/resources/string_manager.dart';
import 'package:demo/screens/forgot_password/forgot_password_view.dart';
import 'package:demo/screens/reset_password/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:pinput/pinput.dart';
import '../../presentation/resources/assets_manager.dart';
import '../../presentation/resources/color_manager.dart';
import '../../presentation/resources/routes_manager.dart';
import '../../presentation/resources/styles_manager.dart';
import '../../presentation/resources/values_manager.dart';
import '../components/customButton.dart';


class VerfiyView extends StatefulWidget {
  const VerfiyView({Key? key}) : super(key: key);

  @override
  State<VerfiyView> createState() => _VerfiyViewState();
}


GlobalKey<FormState> formKey = GlobalKey();

class _VerfiyViewState extends State<VerfiyView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.mainColor,
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            const SizedBox(
              height: AppSize.s50,
            ),
            const Image(
              image: AssetImage(ImageAssets.checkVerification),
              height: AppSize.s50,
              width: AppSize.s50,
            ),

            const Image(
              image: AssetImage(ImageAssets.forgotPassword),
              height: AppSize.s300,
              width: AppSize.s300,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.verfiy,
                    style: getRegularStyle(
                        color: ColorManager.inputBlack,
                        fontSize: AppSize.s30),
                  ),
                ),
                const SizedBox(
                  height: AppSize.s8,
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s30),
              child: Pinput(
                onCompleted: (pin) => print(pin),
                length: 6,
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Pin Number is Required';
                  }
                  else if(value.length <= 5){
                    return 'Pin Number should contain 6 characters';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: AppSize.s24,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn\'t receive a code ? ',
                  style: getRegularStyle(
                      color: ColorManager.titleBlack,
                      fontSize: AppSize.s16
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasswordView()));

                  },
                  child: Text(
                    'Request again',
                    style: getBoldStyle(
                        color: ColorManager.blueArrow,
                        fontSize: AppSize.s18),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSize.s24),
              child: customButton(
                text: 'Submit',
                color: ColorManager.blueArrow,
                onTap: () async {
                  if (formKey.currentState!.validate()) {
                    setState(() {});
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ResetPasswordView()));

                    setState(() {});
                    // }
                  }
                },
              ),
            ),
            const SizedBox(
              height: AppSize.s14,
            ),
          ],
        ),
      ),
    );
  }
}
