
import 'package:flutter/material.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/widgets/WaterRipple.dart';

class SuccessPaymentPage extends StatefulWidget {
  const SuccessPaymentPage({Key? key}) : super(key: key);

  @override
  State<SuccessPaymentPage> createState() => _SuccessPaymentPageState();
}

class _SuccessPaymentPageState extends State<SuccessPaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      width: 285.0,
                      height: 285.0,
                      child: WaterRipple(
                        count: 4,
                        color: Color(0xff8ED08C),
                      )),
                  Align(
                      child: Container(
                        width: 165.0,
                        height: 165.0,
                        child: TextButton(
                          onLongPress: () {
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Icon(Icons.check_rounded, size: 60,)
                          ),
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              primary: Colors.white,
                              shape: CircleBorder(),
                              backgroundColor: Color(0xff8ED08C)),
                          onPressed: () {
                          },
                        ),
                      )),

                ],
              ),
              Text('Pago completado',
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xff2F3664),
                  fontWeight: FontWeight.bold,
                ),textAlign: TextAlign.center,),

              SizedBox(
                height: 38,
              ),
              Text('El pago de tu Plan Prevent se\nha completado exitosamente, recibirás en\ntu correo el estado de tu pedido ',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff2F3664)
                ),textAlign: TextAlign.center,),
              SizedBox(
                height: 50,
              ),
              Text('También puedes habilitar las notificaciones\npara recibirlo directo en tu teléfono',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff2F3664)
                ),textAlign: TextAlign.center,),
              SizedBox(
                height: 50,
              ),
              TextButton(
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
                      'Habilitar notificaciones',
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
        ),
      ),
    );
  }
}
