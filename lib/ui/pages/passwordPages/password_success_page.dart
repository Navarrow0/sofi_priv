
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sofi/themes/themeLight.dart';

class PasswordSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeLight themeBase = new ThemeLight();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 52.0),
                  child: Align(alignment: Alignment.center,child: Image.asset('assets/illustrations/sucess_password.png', width: 235.0,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 52.0, bottom: 34.0),
                  child: Text(
                    'Tu contraseña ha sido recuperada',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28.0),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  'Se ha restableido tu contraseña, inicia sesión y disfruta de los beneficios de sofi',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 73,
                  margin: const EdgeInsets.only(top:140.0),
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
                      'Iniciar sesión',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
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
