import 'package:flutter/material.dart';
import 'package:sofi/themes/themeLight.dart';

class RecoveryPasswordPage extends StatelessWidget {
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
                    Align(alignment: Alignment.center,child: Image.asset("assets/illustrations/recovery_password.png", fit: BoxFit.contain, width: 189.0, height: 189,)),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Recuperar tu Contraseña',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text(
                        'Te enviaremos un código de recuperación al\n correo que proporciones, para poder recuperar\ntu contraseña',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 46,
                    ),
                    TextFormField(
                      autofocus: true,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (value) {

                      },
                      decoration: InputDecoration(
                        labelText: 'Email o Usuario',
                        contentPadding: EdgeInsets.all(22.0),),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 73,
                      margin: const EdgeInsets.only(top:67.0),
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
                              '/SendCodeRecoveryPasswordPage'
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
