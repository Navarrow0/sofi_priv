

import 'dart:async';

import 'package:flutter/material.dart';

class ProcessPaymentPage extends StatefulWidget {
  const ProcessPaymentPage({Key? key}) : super(key: key);

  @override
  State<ProcessPaymentPage> createState() => _ProcessPaymentPageState();
}

class _ProcessPaymentPageState extends State<ProcessPaymentPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), (){
      Navigator.pushNamed(context, '/SuccesPayment');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Spacer(),

            Image.asset('assets/illustrations/process_payment.png', width: 286,),

            SizedBox(
              height: 40,
            ),
            Text('Estamos procesando\ntu pago online …',
              style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff2F3664),
                  fontWeight: FontWeight.bold,
              ),textAlign: TextAlign.center,),
            Spacer(),
            Text('Tu pedido quedará listo en breve',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff878CAA)
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
