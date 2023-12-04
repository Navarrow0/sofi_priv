

import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: const Text("Nosotros", style: TextStyle(
          color: Color(0xff2F3664)
        ),),
        alwaysShowTitle: true,
        alwaysShowLeadingAndAction: true,
        headerExpandedHeight: 0.48,
        backgroundColor: Colors.white,
        curvedBodyRadius: 40,
        headerWidget: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 80,),
              Text('J GARCÍA LÓPEZ',
              style: TextStyle(
                fontSize: 14,
                  color: Color(0xff2F3664)
              ),),
              Text('Sobre nosotros',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                    color: Color(0xff2F3664)
                ),),
              SizedBox(height: 40,),
              Image.asset('assets/imgs/about_us.png')
            ],
          ),
        ),
        body: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 38),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Text('Desde 1981',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2F3664)
                  ),),
                SizedBox(height: 24,),
                Text('Nos ha motivado nuestra filosofía: Hacer más fáciles los momentos difíciles® misma que nos lleva a ofrecer siempre un servicio profesional y eficiente, acompañado de un trato digno, cálido y humano.'
                '\n\nHoy somos, gracias a su preferencia, la empresa funeraria que brinda más servicios en la Ciudad de México y área Metropolitana.'
                '\n\nNuestra empresa fue fundada por doña Julieta Bravo de García López en el año 1981, bajo el nombre Previsión Final. Destacamos por ser la primera compañía en ofrecer servicios de cremación fuera de un panteón, y fuimos pioneros en la venta anticipada de Planes a Futuro, accesibles y transferibles.'
    '\n\nEn la esquina de las calles General Prim y Versalles, abrimos nuestra primera agencia funeraria en 1989 con la misión bajo la cual se fundó la empresa: dar un trato digno, cálido y humano, a un precio justo. Esta agencia funeraria fue la primera a nivel nacional en ofrecer servicios crematorios en sus mismas instalaciones.'
                    '\nA partir de 1997, una nueva dirección general en nuestra empresa impulsó un rápido crecimiento, consolidando un fuerte equipo de trabajo. Hoy somos líderes en servicios funerarios atendidos por la iniciativa privada, una de cada tres familias nos prefiere.',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff2F3664)
                  ),),
              ],
            ),
          )
        ]
    );
  }
}
