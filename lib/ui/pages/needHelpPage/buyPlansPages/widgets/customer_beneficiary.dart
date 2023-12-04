import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/customerController/customer_controller.dart';
import 'package:sofi/themes/themeLight.dart';

class CustomerBeneficiary extends StatelessWidget {
  const CustomerBeneficiary({Key? key, required this.themeLight}) : super(key: key);

  final ThemeLight themeLight;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomerController>(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Beneficiario", style: TextStyle(color: themeLight.colorSecondaryBlue, fontWeight: FontWeight.bold, fontSize: 18.0,),),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Nombre *',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Apellido Paterno *',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Apellido Materno *',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Edad',
                        contentPadding: EdgeInsets.all(20.0)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: DropdownButtonFormField(
                    items: null,
                    decoration: InputDecoration(
                      labelText: 'Sexo'
                  ), onChanged: (value) {

                  },),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 11.0),
                  child: TextFormField( decoration: InputDecoration(
                      labelText: 'Télefono'
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 90.0, bottom: 40.0),
                  child: TextButton(
                    onPressed: () {
                      _.pageViewController.jumpToPage(4);
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
