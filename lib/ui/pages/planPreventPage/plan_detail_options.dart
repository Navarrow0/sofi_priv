import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sofi/themes/themeLight.dart';


class PlanDetailOptions extends StatelessWidget {
  const PlanDetailOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeLight themeLight = new ThemeLight();


    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 0.0,),
              width: 40.0,
              height: 40.0,
              child: TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white,
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
                  color: Colors.white,
                  fontSize: 15.0),
            ),
          ],
        ),
      ),
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/imgs/bg_prim.png', fit: BoxFit.cover),

                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Column(
                      children: [
                        Text("Plan Prevent",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            )),
                        Text("Boutique Prim",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 15.0),
                          width: Get.width / 4.0,
                          child: Divider(
                            height: 2,
                            thickness: 3,
                            color: Color(0xffD0AF74),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Selecciona una opción',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 19.0, right: 19.0, bottom: 40.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: Ink(
                              height: 79,
                              color: Color(0xffEAEFF8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Información',
                                    style: TextStyle(fontSize: 11.0, color: themeLight.colorGreyPrimary),
                                  ),
                                  Text(
                                    'Boutique Prim',
                                    style: TextStyle(
                                        fontSize: 15.0, color: themeLight.colorGreyPrimary),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: Ink(
                              height: 79,
                              color: Color(0xffEAEFF8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Text(
                                    'Contrata',
                                    style: TextStyle(fontSize: 11.0, color: themeLight.colorGreyPrimary),
                                  ),
                                  Text(
                                    'Boutique Prim',
                                    style: TextStyle(
                                        fontSize: 15.0, color: themeLight.colorGreyPrimary),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),


                    Container(
                      width: Get.width,
                      height: 370.0,
                      margin: EdgeInsets.only(top: 24.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Color(0xffC3C6E6)),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30.0, top: 40.0, right: 30.0),
                        child: Column(
                          children: [

                            Container(
                              margin: EdgeInsets.only(bottom: 14.0),
                              child: Column(
                                children: [
                                  Align(
                                  alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Nuestro',
                                        style: TextStyle(
                                          fontFamily: themeLight.primaryFont,
                                          color: themeLight.colorSecondaryBlue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(text: ' Plan Boutique ',
                                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffD9AB4E)
                                              )
                                          ),
                                          TextSpan(text: 'te incluye')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 290.0,
                                    margin: EdgeInsets.only(top: 16.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.check_rounded, color: themeLight.colorGold, size: 20.0,),
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Expanded(
                                              child: Text('Seguro de vida de \$50,000 por un año gratis (1)', style: TextStyle(
                                                  fontSize: 11.0
                                              ),),
                                            )
                                          ],
                                        ),

                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.check_rounded, color: themeLight.colorGold, size: 20.0,),
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Expanded(
                                              child: Text('Asesoría y atención personalizada las 24 horas', style: TextStyle(
                                                  fontSize: 11.0
                                              ),),
                                            )
                                          ],
                                        ),

                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.check_rounded, color: themeLight.colorGold, size: 20.0,),
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Expanded(
                                              child: Text('Traslados en carroza dentro de la Ciudad de México y área metropolitana', style: TextStyle(
                                                  fontSize: 11.0
                                              ),),
                                            )
                                          ],
                                        ),

                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.check_rounded, color: themeLight.colorGold, size: 20.0,),
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Expanded(
                                              child: Text('Trámites gubernamentales (2)', style: TextStyle(
                                                  fontSize: 11.0
                                              ),),
                                            )
                                          ],
                                        ),

                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.check_rounded, color: themeLight.colorGold, size: 20.0,),
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Expanded(
                                              child: Text('Acta de defunción', style: TextStyle(
                                                  fontSize: 11.0
                                              ),),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),

                            Divider(),

                            Container(
                              margin: EdgeInsets.only(top: 17.0),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Servicios',
                                        style: TextStyle(
                                          fontFamily: themeLight.primaryFont,
                                          color: themeLight.colorSecondaryBlue,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        children: <TextSpan>[
                                          TextSpan(text: ' para tu ',),
                                          TextSpan(text: 'ser querido',  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffD9AB4E)
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 290.0,
                                    margin: EdgeInsets.only(top: 16.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.check_rounded, color: themeLight.colorGold, size: 20.0,),
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Expanded(
                                              child: Text('Arreglo estético', style: TextStyle(
                                                  fontSize: 11.0
                                              ),),
                                            )
                                          ],
                                        ),

                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.check_rounded, color: themeLight.colorGold, size: 20.0,),
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Expanded(
                                              child: Text('Sala para 60 personas en circulación', style: TextStyle(
                                                  fontSize: 11.0
                                              ),),
                                            )
                                          ],
                                        ),

                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.check_rounded, color: themeLight.colorGold, size: 20.0,),
                                            SizedBox(
                                              width: 8.0,
                                            ),
                                            Expanded(
                                              child: Text('Video Homenaje®', style: TextStyle(
                                                  fontSize: 11.0
                                              ),),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),


                    /*Container(
                      margin: EdgeInsets.only(top: 24.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Nombre',
                              contentPadding: EdgeInsets.all(22.0),),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Apellido paterno',
                              contentPadding: EdgeInsets.all(22.0),),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Correo electronico',
                              contentPadding: EdgeInsets.all(22.0),),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Télefono',
                              contentPadding: EdgeInsets.all(22.0),),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          DropdownButtonFormField(
                            items: [],
                            hint: Text('-- Elegir una opción --'),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextFormField(
                            textAlignVertical: TextAlignVertical.top,
                            maxLines: 6,
                            decoration: InputDecoration(
                              labelText: 'Escribir un mensaje',
                              contentPadding: EdgeInsets.all(22.0),
                              alignLabelWithHint: true,
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 73,
                            margin: const EdgeInsets.only(top:28.0),
                            decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),
                                gradient: themeLight.colorGradientRightBlue
                            ),
                            child: MaterialButton(
                              padding: const EdgeInsets.all(0.0),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Text(
                                'Solicitar Información',
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
                    )*/


                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
