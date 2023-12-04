import 'package:flutter/material.dart';
import 'package:sofi/themes/themeLight.dart';

class RegisterUserPage extends StatelessWidget {
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
        /*title: Container(
          margin: EdgeInsets.only(left: 0.0,),
          width: 40.0,
          height: 40.0,
          child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: themeBase.colorRoyal,
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0))),
              child: Icon(Icons.arrow_back_ios_rounded, size: 18.0,),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),*/
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: 'Regístrate ahora ',
                      style: TextStyle(
                          color: themeBase.colorSecondaryBlue,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                    TextSpan(
                        text: "en ",
                        style: TextStyle(
                            color: themeBase.colorSecondaryBlue,
                            fontWeight: FontWeight.normal,
                            fontSize: 30.0)),
                    TextSpan(
                        text: "sofi",
                        style: TextStyle(
                            color: themeBase.colorGold,
                            fontWeight: FontWeight.normal,
                            fontSize: 30.0)),
                  ]),
                ),
                SizedBox(
                  height: 28.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nombre',
                      contentPadding: EdgeInsets.all(32.0)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      contentPadding: EdgeInsets.all(32.0)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Contraseña',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility_outlined),
                        onPressed: () {},
                        padding: EdgeInsets.only(right: 30.0),
                      ),
                      contentPadding: EdgeInsets.all(32.0)),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Repetir contraseña',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility_outlined),
                        onPressed: () {},
                        padding: EdgeInsets.only(right: 30.0),
                      ),
                      contentPadding: EdgeInsets.all(32.0)),
                ),
                SizedBox(height: 28,),
                Container(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'Al crear una cuenta, acepta nuestra \n',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0),
                      ),
                      TextSpan(
                          text: "Términos del servicio y política de privacidad",
                          style: TextStyle(
                              color: themeBase.colorGold,
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0)),
                    ]),
                  ),
                ),
                SizedBox(height: 28,),
                /*Container(
                  width: MediaQuery.of(context).size.width,
                  height: 78.0,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Registrarme',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0,
                        fontFamily: Theme.of(context)
                            .textTheme
                            .headline1
                            .fontFamily,
                      ),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: themeBase.colorButton,
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),*/

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 73,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      gradient: themeBase.colorGradientRightBlue
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Text(
                      'Registrarme',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white),
                    ),
                    onPressed: () {
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
