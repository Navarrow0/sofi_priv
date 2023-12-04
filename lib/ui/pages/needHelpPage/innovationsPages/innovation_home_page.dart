import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InnovationHomePage extends StatelessWidget {
  const InnovationHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
          backgroundColor: Color(0xffFAFAFA),
          centerTitle: true,
          title: Text("Innovaciones")
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 26.0, right: 26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "J GARCIA LOPEZ",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      "Innovaciones para ti",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 24),
                  child: Text(
                    "J. García López tiene más de 35 años innovando en pro de las familias. Hoy, cuenta con una serie de exclusivos productos que buscan hacer más emotivo el Homenaje® a su ser querido.",
                    style: TextStyle(fontSize: 13.0,),
                    textAlign: TextAlign.justify,
                  ),
                ),

                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/InnovationDetailPage');
                  },
                  borderRadius: BorderRadius.circular(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/imgs/urna@3x.png',
                        fit: BoxFit.cover,
                        width: Get.width,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        "URNA HUICHOL",
                        style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "UNA NUEVA MANERA DE RENDIR UN HOMENAJE ÚNICO Y DE IMPULSAR NUESTRAS TRADICIONES.",
                        style: TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: InkWell(
                    onTap: (){},
                    borderRadius: BorderRadius.circular(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/imgs/registro_estrellas_detalle@3x.png',
                          fit: BoxFit.cover,
                          width: Get.width,
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                          "URNA HUICHOL",
                          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "UNA NUEVA MANERA DE RENDIR UN HOMENAJE ÚNICO Y DE IMPULSAR NUESTRAS TRADICIONES.",
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
