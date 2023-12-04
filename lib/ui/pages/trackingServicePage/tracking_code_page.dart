
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sofi/themes/themeLight.dart';

class TrackingCodePage extends StatelessWidget {
  const TrackingCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeBaseLight = ThemeLight();
    final themeContext = Theme.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        toolbarHeight: 80.0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17.0)),
                  gradient:
                  themeBaseLight.colorGradient90Blue),
              child: MaterialButton(
                materialTapTargetSize:
                MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(17.0)),
                padding: EdgeInsets.zero,
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),

          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 17.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/illustrations/preguntas.png", fit: BoxFit.contain, width: 197.0, height: 197,),
                SizedBox(
                  height: 44.0,
                ),
                Text(
                  'Código de rastreo inmediato',
                  style: TextStyle(
                      color: themeBaseLight.colorSecondaryBlue,
                      fontFamily: themeContext.textTheme.headline1!.fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Hemos creado un código de rastreo\nPara monitorear tu servicio en tiempo real',
                  style: TextStyle(
                    color: themeBaseLight.colorGreyPrimary,
                    fontFamily: themeContext.textTheme.headline1!.fontFamily,
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
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
                    activeColor: themeBaseLight.colorFill,
                    activeFillColor: themeBaseLight.colorFill,
                    selectedFillColor: themeBaseLight.colorFill,
                    inactiveFillColor: themeBaseLight.colorFill,
                    inactiveColor: themeBaseLight.colorFill,
                    selectedColor: themeBaseLight.colorSecondaryBlue,
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


                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/TrackingServiceActivePage');
                    },
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: ThemeLight().colorGradientBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 72.0,
                        alignment: Alignment.center,
                        child: Text(
                          'Rastrear servicio',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0,
                            fontFamily: themeContext.textTheme.headline1!.fontFamily,
                          ),
                        ),
                      ),
                    ),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
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
