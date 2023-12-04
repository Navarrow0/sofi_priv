import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sofi/themes/themeLight.dart';

class SendCodeRecoveryPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeLight themeBase = new ThemeLight();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        toolbarHeight: 80.0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 0.0,),
              width: 40.0,
              height: 40.0,
              child: TextButton(
                  style: TextButton.styleFrom(
                      primary: themeBase.colorSecondaryBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0))),
                  child: Icon(Icons.arrow_back_ios_rounded, size: 18.0,),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),

            Text(
              'REGRESAR',
              style: TextStyle(
                  color: themeBase.colorSecondaryBlue,
                  fontSize: 15.0),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(alignment: Alignment.center,child: Image.asset("assets/illustrations/code_password.png", fit: BoxFit.contain, width: 189.0, height: 182,)),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Introduce el código Enviado',
                    style: TextStyle(
                        color: themeBase.colorSecondaryBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Revisa la bandeja de entrada de tu correo te\nenviamos un código de recuperación, si no\nLo encuentras busca en la carpeta “spam”',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 46,
                ),
                PinCodeTextField(
                  backgroundColor: Colors.transparent,
                  length: 4,
                  appContext: context,
                  onChanged: (String value) {},
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    activeColor: themeBase.colorFill,
                    activeFillColor: themeBase.colorFill,
                    selectedFillColor: themeBase.colorFill,
                    inactiveFillColor: themeBase.colorFill,
                    inactiveColor: themeBase.colorFill,
                    selectedColor: themeBase.colorSecondaryBlue,
                    fieldWidth: 76,
                    fieldHeight: 73,
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onCompleted: (value){

                  },
                  enableActiveFill: true,
                  textStyle: TextStyle(
                    fontSize: 37.0,
                    fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.number,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 73,
                  margin: const EdgeInsets.only(top:35.0),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                      gradient: themeBase.colorGradientRightBlue
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.all(0.0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Text(
                      'Siguiente',
                      style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context,
                          '/NewPasswordPage'
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
