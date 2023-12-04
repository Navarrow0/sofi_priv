import 'package:flutter/material.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/widgets/expansion_tile_custom.dart';


class FaqPage extends StatelessWidget {
  final ThemeLight themeBase = new ThemeLight();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "FAQ",
          style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.normal,
              color: themeBase.colorSecondaryBlue),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 22.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/illustrations/preguntas.png",
                    fit: BoxFit.contain,
                    width: 235.0,
                    height: 190.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39.0),
                  child: Text(
                    'Preguntas frecuentes',
                    style: TextStyle(
                        color: themeBase.colorSecondaryBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: ExpansionTileCustom(
                    headerBackgroundColor: Color(0xffF4F7FD),
                    title:
                    Text('¿Qué es muerte legal y qué es muerte natural?'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Text(
                          'Muerte legal: es aquella defunción en la que por sus características o lugar en el que ocurre interviene el Ministerio Público. Muerte natural: es aquella que por sus características sólo requiere la emisión del certificado médico de defunción, que extiende el hospital o bien el médico tratante.',
                          style:
                          TextStyle(color: Color(0xff9595A0)),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: ExpansionTileCustom(
                    headerBackgroundColor: Color(0xffF4F7FD),
                    title: Text('¿Puedo guardar las cenizas o debo tirarlas?'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Text(
                          'Muerte legal: es aquella defunción en la que por sus características o lugar en el que ocurre interviene el Ministerio Público. Muerte natural: es aquella que por sus características sólo requiere la emisión del certificado médico de defunción, que extiende el hospital o bien el médico tratante.',
                          style:
                          TextStyle(color: Color(0xff9595A0)),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: ExpansionTileCustom(
                    headerBackgroundColor: Color(0xffF4F7FD),
                    title: Text(
                        '¿J. García López puede conseguir nichos en las iglesias?'),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Text(
                          'Muerte legal: es aquella defunción en la que por sus características o lugar en el que ocurre interviene el Ministerio Público. Muerte natural: es aquella que por sus características sólo requiere la emisión del certificado médico de defunción, que extiende el hospital o bien el médico tratante.',
                          style:
                          TextStyle(color: Color(0xff9595A0)),
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 63,
                  margin: const EdgeInsets.only(top:67.0),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      gradient: themeBase.colorGradientLeftBlueLight
                  ),
                  child: MaterialButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Text(
                      'Contactar servicio',
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
