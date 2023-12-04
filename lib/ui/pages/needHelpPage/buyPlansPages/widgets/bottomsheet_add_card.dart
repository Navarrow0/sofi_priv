

import 'package:flutter/material.dart';
import 'package:sofi/themes/themeLight.dart';

bottomSheetAddCard(BuildContext context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height / 1.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Agregar tarjeta", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Color(0xff272C64)
                    ),),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      child: TextButton(onPressed: (){}, child: Icon(Icons.clear_rounded, size: 15.0,), style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Color(0xffE1E6F0),
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(0.0)
                      ),),
                    )
                  ],
                ),
              ),
              Text("Nombre Completo", style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff272C64)
              ),),
              TextField(
                decoration: InputDecoration(
                  filled: false,
                  hintText: 'Example Example',
                  hintStyle: TextStyle(color: Color(0xff5E6F8D)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff272C64)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff272C64)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Número de Tarjeta", style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff272C64)
              ),),
              TextField(
                decoration: InputDecoration(
                  filled: false,
                  hintText: '1234 1234 1234 1234',
                  hintStyle: TextStyle(color: Color(0xff5E6F8D)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff272C64)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff272C64)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Fecha expiración", style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff272C64)
                        ),),
                        TextField(
                          decoration: InputDecoration(
                            filled: false,
                            hintText: 'MM / AA',
                            hintStyle: TextStyle(color: Color(0xff5E6F8D)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff272C64)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff272C64)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Código de seguridad", style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff272C64)
                        ),),
                        TextField(
                          decoration: InputDecoration(
                            filled: false,
                            hintText: 'CVV',
                            hintStyle: TextStyle(color: Color(0xff5E6F8D)),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff272C64)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff272C64)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              TextButton(
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
                      'Agregar tarjeta',
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
            ],
          ),
        );
      });
}
