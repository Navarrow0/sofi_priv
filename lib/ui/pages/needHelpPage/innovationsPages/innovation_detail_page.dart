import 'package:flutter/material.dart';
import 'package:get/get.dart';


class InnovationDetailPage extends StatelessWidget {
  const InnovationDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
          backgroundColor: Color(0xffFAFAFA),
          centerTitle: true,
          title: Text("Urna Huichiol")
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 26.0, right: 26.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Image.asset(
                  'assets/imgs/urna@3x.png',
                  fit: BoxFit.cover,
                  width: Get.width,

                ),
                Text(
                  "URNA HUICHOL",
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0),
                  child: Text(
                    "El arte huichol es una tradición que ha vivido a través de muchas generaciones, por sus colores, sus texturas, su simbolismo y por el trabajo tan detallado y dedicado de los artesanos mexicanos. "
                        "En J. García López queremos mantener viva esta tradición y lo hicimos innovando, creando una nueva manera de rendir Homenajes® a la vida de nuestros seres queridos: una urna intervenida por artesanos huicholes."
                        "Rinda un Homenaje® único al ser querido con la Urna Huichol."
                        "Parte de los recursos obtenidos por la venta de la Urna Huichol se donará a las comunidades indígenas."
                        "Pida a nuestros Asesores más información."
                        "A las líneas 01800 FUNERAL o 5705 6000."
                        "O a través de nuestro Chat o WhatsApp en esta página web.",
                    style: TextStyle(fontSize: 13.0),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}
