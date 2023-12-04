import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/customerController/customer_controller.dart';
import 'package:sofi/themes/themeLight.dart';

import 'bottomsheet_add_card.dart';

class CustomerPayment extends StatelessWidget {
  const CustomerPayment({Key? key, required this.themeLight}) : super(key: key);

  final ThemeLight themeLight;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerController>(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Visibility(
              visible: false,
              replacement: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Método de pago", style: TextStyle(color: themeLight.colorSecondaryBlue, fontWeight: FontWeight.bold, fontSize: 18.0),),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0, left: 25, bottom: 40),
                    child: Text("+ Agregar nueva tarjeta", style: TextStyle(color: themeLight.colorDescriptions, fontSize: 15.0),),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff6C91D3),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/icons/mastercard_icon.png', width: 40,),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('Mauricio López', style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                            ),),
                            Spacer(),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),

                            ),
                            SizedBox(
                              width: 4,
                            ),Container(
                              width: 6,
                              height: 6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Text('Mastercard', style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        ),),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('****  ****  ****', style: TextStyle(
                                color: Colors.white,
                                fontSize: 24
                            ),),
                            Text('20/02', style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 46,
                  ),

                  Text('Recuerda que todos tus pagos se manejan mediante el protocolo SSL, lo cual asegura un pago seguro y eficiente.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff878CAA)
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 90.0, bottom: 40.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/ProcessPayment');
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: ThemeLight().colorGradientBlue,
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 72.0,
                          alignment: Alignment.center,
                          child: Text(
                            'Continuar',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        padding: EdgeInsets.all(0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Align(alignment: Alignment.centerLeft,child: Text("Método de pago", style: TextStyle(color: themeLight.colorSecondaryBlue, fontWeight: FontWeight.bold, fontSize: 18.0),)),

                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Column(
                      children: [
                        Image.asset('assets/illustrations/tarjeta.png', height: 236.0,),
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                          child: Text("Sin tarjetas agregadas", style: TextStyle(color: themeLight.colorSecondaryBlue, fontWeight: FontWeight.bold, fontSize: 18.0),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text("Aun no has agregado un método de pago,\nañade uno para poder hacer compras en sofí", style: TextStyle(color: themeLight.colorGreyPrimary, fontSize: 16.0, ), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
                    child: TextButton(
                      onPressed: () {
                        bottomSheetAddCard(context);
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: ThemeLight().colorGradientBlue,
                            borderRadius: BorderRadius.circular(15)),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 72.0,
                          alignment: Alignment.center,
                          child: Text(
                            'Agregar nueva',
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        padding: EdgeInsets.all(0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}
