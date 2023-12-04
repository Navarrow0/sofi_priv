
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/registerUserPage/register_user_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeBaseLight = new ThemeLight();

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle(statusBarColor: Colors.white, statusBarBrightness: Brightness.dark),
        child: SafeArea(
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  top: 30.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: RichText(
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                    text: 'Hola, bienvenido\n',
                                    style: TextStyle(
                                        color: themeBaseLight.colorSecondaryBlue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0),
                                  ),
                                  TextSpan(
                                      text: "a ",
                                      style: TextStyle(
                                          color: themeBaseLight.colorSecondaryBlue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0)),
                                  TextSpan(
                                      text: "sofi app",
                                      style: TextStyle(
                                          color: themeBaseLight.colorGold,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 30.0)),
                                ], style: TextStyle(
                                    fontFamily: themeBaseLight.primaryFont
                                )),
                              ),
                            ),
                            Container(
                              width: 320.0,
                              margin: EdgeInsets.only(top: 18.0),
                              child: Text("Inicia sesión para ver el estado de tu\ncuenta y rendir homenaje a tu ser querido",
                                style: TextStyle(color: Color(0xff717481), fontSize: 15.0, ),),
                            )
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 75.0),
                            child: Image.asset('assets/illustrations/flowers.png',height: 216.0,
                              width: 68,
                              fit: BoxFit.contain,)
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 230.0,
                  bottom: 0.0,
                  right: 0.0,
                  left: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40.0,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Email o Usuario',
                              contentPadding: EdgeInsets.all(28.0)),
                        ),
                        SizedBox(
                          height: 34.0,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(28.0),
                              labelText: 'Contraseña',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility_outlined),
                                onPressed: () {},
                                padding: EdgeInsets.only(right: 30.0),
                              )),
                        ),
                        SizedBox(
                          height: 13.0,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: (){
                              /*Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return RecoverPasswordPage();
                                }),
                              );*/

                              Navigator.pushNamed(
                                  context,
                                  '/RecoveryPasswordPage'
                              );
                            },
                            child: Text(
                              '¿Olvidaste tu contraseña?',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: themeBaseLight.colorSecondaryBlue,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 34.0,
                        ),

                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/HomePage');
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: themeBaseLight.colorGradientBlue,
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 72.0,
                              alignment: Alignment.center,
                              child: Text(
                                'Iniciar sesión',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                              padding: const EdgeInsets.all(0.0),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                        ),
                        SizedBox(
                          height: 28.0,
                        ),
                        /*Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text( '¿No tienes cuenta? ',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: themeBaseLight.colorSecondaryBlue,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return RegisterUserPage();
                                  }),
                                );*/
                              },
                              child: Text("Regístrate.",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: themeBaseLight.colorGold,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ],
                        )*/

                      ],
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(bottom: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text( '¿No tienes cuenta? ',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: themeBaseLight.colorSecondaryBlue,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            InkWell(
                              onTap: (){

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return RegisterUserPage();
                                  }),
                                );
                                /*Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return RegisterUserPage();
                                    }),
                                  );*/
                              },
                              child: Text("Regístrate.",
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: themeBaseLight.colorGold,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ],
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/HelPage');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xffE8BD70),
                              Color(0xffEDD185)
                            ], begin: Alignment.centerLeft,
                              end: Alignment.centerRight,)),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 72.0,
                            alignment: Alignment.center,
                            child: Text(
                              'Ayuda inmediata',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                                color: Color(0xff936A1F),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
                /*Flex(
                  direction: Axis.horizontal,
                  children: [


                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/HelPage');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: themeBaseLight.colorGradientGoldSecondary,),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 72.0,
                              alignment: Alignment.center,
                              child: Text(
                                'Ayuda inmediata',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Color(0xff936A1F),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
