import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/customerController/customer_controller.dart';
import 'package:sofi/themes/themeLight.dart';

class CustomerAddress extends StatelessWidget {
  const CustomerAddress({Key? key, required this.themeLight}) : super(key: key);

  final ThemeLight themeLight;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerController>(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Domicilio", style: TextStyle(color: themeLight.colorSecondaryBlue, fontWeight: FontWeight.bold, fontSize: 18.0),),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Región / Provincia *',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Código postal *',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Calle *',
                              contentPadding: EdgeInsets.all(20.0)),
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Número *',
                              contentPadding: EdgeInsets.all(20.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Interior(opcional)',
                              contentPadding: EdgeInsets.all(20.0)),
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Colonia *',
                              contentPadding: EdgeInsets.all(20.0)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Alcaldia*',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextFormField( decoration: InputDecoration(
                      labelText: 'Télefono*'
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextFormField(decoration: InputDecoration(
                      labelText: 'Correo electrónico'
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                  child: TextButton(
                    onPressed: () {
                      _.pageViewController.jumpToPage(2);
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
                          'Siguiente',
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
          );
        }
    );
  }
}
