import 'package:flutter/material.dart';


class PrivacyPolicies extends StatelessWidget {
  const PrivacyPolicies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Stack(
          alignment: Alignment.center,
          children: [
            Align(alignment: Alignment.centerLeft,child: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios_rounded))),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(child: Text('Políticas de\nPrivacidad', style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500
                ),)),
                SizedBox(
                  width: 10.0,
                ),
                Image.asset('assets/illustrations/privacidad.png', width: 170.0,)
              ],
            ),


            Container(
              color: Color(0xffF5F7F8),
              height: 191.0,
              margin: const EdgeInsets.only(top: 33.0),
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vehicula, turpis ac congue euismod, lectus tortor luctus nibh, eu rutrum velit sem eu urna. Donec dictum nunc a euismod tempus. Donec pulvinar tellus a risus condimentum, sed pellentesque risus efficitur. Aenean imperdiet at dolor quis placerat. Pellentesque eget convallis ante. Pellentesque et lectus ac augue sodales ultrices sed ut tellus. Cras quis',
                style: TextStyle(fontSize: 13.0, color: Color(0xff5E6F8D)),),
            ),

            Container(
              margin: const EdgeInsets.only(top: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1. Generales.",style: TextStyle(fontSize: 20.0, color: Color(0xff30396A),fontWeight: FontWeight.bold) ),
                  Text('venenatis risus. Nulla feugiat vel odio et tristique. Donec tristique felis ante, fringilla ultricies leo tristique nec. Maecenas enim lacus, sodales ac dapibus ornare, dignissim sagittis lorem. Nunc pellentesque eget purus eu condimentum. Nam dolor purus, ullamcorper a enim eget, finibus consectetur arcu. Quisque commodo eros ut nibh sollicitudin, quis mattis ligula mollis. Vivamus pretium at massa ac vestibulum. Pellentesque sed maximus lacus, ac scelerisque risus. Suspendisse felis orci, elementum quis fringilla in, elementum sed nisi.',
                    style: TextStyle(fontSize: 13.0, color: Color(0xff5E6F8D)),),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("2. Definiciones.",style: TextStyle(fontSize: 20.0, color: Color(0xff30396A),fontWeight: FontWeight.bold) ),
                  Text('venenatis risus. Nulla feugiat vel odio et tristique. Donec tristique felis ante, fringilla ultricies leo tristique nec. Maecenas enim lacus, sodales ac dapibus ornare, dignissim sagittis lorem. Nunc pellentesque eget purus eu condimentum. Nam dolor purus, ullamcorper a enim eget, finibus consectetur arcu. Quisque commodo eros ut nibh sollicitudin, quis mattis ligula mollis. Vivamus pretium at massa ac vestibulum. Pellentesque sed maximus lacus, ac scelerisque risus. Suspendisse felis orci, elementum quis fringilla in, elementum sed nisi.',
                    style: TextStyle(fontSize: 13.0, color: Color(0xff5E6F8D)),),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
