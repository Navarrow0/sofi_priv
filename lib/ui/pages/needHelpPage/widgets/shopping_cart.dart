import 'package:flutter/material.dart';
import 'package:get/get.dart';

bottomSheetShoppingCart(BuildContext context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: 680.0,
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Mi Carrito", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
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

                  Divider(),

                  Container(
                    margin: EdgeInsets.only(top: 24.0),
                    width: Get.width,
                    height: 85.0,
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            child: Image.asset('assets/imgs/flores01@3x.png', height: 76.0, width: 76, fit: BoxFit.cover, alignment: Alignment.center,)
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Por tus abrazos -Blanc"),
                              Text("Floreria"),

                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  width: 250.0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("\$286.00", style: TextStyle(
                                          color: Color(0xffD9AB4E),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0
                                      ),),
                                      Container(
                                        height: 32.0,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.04),
                                                spreadRadius: 2,
                                                blurRadius: 8,
                                                offset: Offset(0, 3),
                                              ),
                                            ]),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            TextButton(onPressed: (){}, child: Text("-"),
                                              style: TextButton.styleFrom(padding: EdgeInsets.zero, shape: CircleBorder(),side: BorderSide(width: 1.0), minimumSize: Size(50, 0),),),
                                            Text("1", style: TextStyle(fontSize: 12.0),),
                                            TextButton(onPressed: (){}, child: Text("+"),
                                              style: TextButton.styleFrom(padding: EdgeInsets.zero, shape: CircleBorder(),side: BorderSide(width: 1.0), minimumSize: Size(50, 0),),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text("¿Quieres agregar un mensaje a este pedido?", style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      width: 280.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Agregar mensaje / nota especial", style: TextStyle(
                            color: Color(0xffD9AB4E),
                            fontSize: 14,
                          )),

                          Icon(Icons.arrow_forward_ios, size: 10.0, color: Color(0xffD9AB4E),)
                        ],
                      ),
                    ),
                  ),


                  Divider(),

                ],
              ),


              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total a cobrar:", style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                        ),),
                        Text("\$286.00 MXN", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    Text("Pago con tarjeta", style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/CustomerPage');
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xff4F78AE),
                                Color(0xff262158)
                              ], begin: Alignment.centerRight,
                                end: Alignment.centerLeft, ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 72.0,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Ir a pagar',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.0,
                                  ),
                                ),
                                Text(
                                  '\$286.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17.0,
                                      color: Color(0xffD9AB4E)
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0.0),
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                  ],
                ),
              ),




            ],
          ),
        );
      });
}
