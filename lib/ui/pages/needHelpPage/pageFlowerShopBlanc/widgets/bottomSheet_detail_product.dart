import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofi/sofi_icons.dart';

bottomSheetDetailProduct(BuildContext context) {
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
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
                    child: Image.asset('assets/imgs/flores01@3x.png', height: 225.0, width: Get.width, fit: BoxFit.cover, alignment: Alignment.center,)
                  ),
                  Positioned(
                    top: 26.0,
                    right: 24,
                    child: Container(
                      width: 30.0,
                      height: 30.0,
                      child: TextButton(onPressed: (){}, child: Icon(Icons.clear_rounded), style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(0.0)
                      ),),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 35.0,
                  margin: EdgeInsets.only(left: 12.0, top: 23.0),
                  child: ListView.builder(itemBuilder: (ctx, index){
                    return Container(
                      margin: EdgeInsets.only(right: 5.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          child: Image.asset('assets/imgs/flores01@3x.png', width: 60.0, fit: BoxFit.cover,)
                      ),
                    );
                  }, shrinkWrap: true, itemCount: 3, scrollDirection: Axis.horizontal, clipBehavior: Clip.none,),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Anhelo", style: TextStyle(
                                fontSize: 25.0,
                                color: Color(0xff30396A)
                              ),),

                              Text("\$2,450.00", style: TextStyle(
                                  fontSize: 19.0,
                                  color: Color(0xffD9AB4E)
                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 40.0,
                                width: 40.0,
                                child: ElevatedButton(onPressed: (){}, child:
                                Icon(Sofi.icon_feather_heart, color: Color(0xffEA1972), size: 20.0,),
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0.0),
                                    shape: CircleBorder(),
                                    alignment: Alignment.center,
                                    shadowColor: Color(0xff6896DE).withOpacity(0.09),
                                  primary: Colors.white
                                ),),
                              ),
                              Container(
                                height: 40.0,
                                width: 40.0,
                                margin: EdgeInsets.only(left: 20.0),
                                child: ElevatedButton(onPressed: (){}, child: Icon(Sofi.icon_feather_share_2, size: 20.0),
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(0.0),
                                      shape: CircleBorder(),
                                      alignment: Alignment.center,
                                      shadowColor: Color(0xff6896DE).withOpacity(0.09),
                                      primary: Color(0xff446197)
                                  ),),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 26.0),
                      child: Text("Corona luctuosa, simbolizado que la eternidad, no tienen principio, ni fin, y en el que a su alrededor se emplean una variedad de tipos de flores que honran al espíritu.",textAlign: TextAlign.justify,
                      style: TextStyle(color: Color(0xff5E6F8D)),),
                    ),
                    Padding(padding: EdgeInsets.only(top: 22, bottom: 28.0),child: Container(
                      width: 188.0,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(onPressed: (){}, child: Text("-"),
                          style: TextButton.styleFrom(
                            shape: CircleBorder(),
                            side: BorderSide(
                              width: 1.0,
                              color: Color(0xffE8E8E8)
                            )
                          ),),
                          Text("1", style: TextStyle(fontSize: 19.0),),
                          TextButton(onPressed: (){}, child: Text("+"),
                            style: TextButton.styleFrom(
                                shape: CircleBorder(),
                                side: BorderSide(
                                    width: 1.0,
                                    color: Color(0xffE8E8E8)
                                )
                            ),)
                        ],
                      ),
                    ),),
                    TextButton(
                      onPressed: () {
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
                                'Agregar al carrito',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0,
                                ),
                              ),
                              Text(
                                '\$2,450.00',
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
                  ],
                ),
              ),
              ],
          ),
        );
      });
}
