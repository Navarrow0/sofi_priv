
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/customerController/customer_controller.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/buyPlansPages/widgets/customer_address.dart';
import 'package:sofi/ui/pages/needHelpPage/buyPlansPages/widgets/customer_beneficiary.dart';
import 'package:sofi/ui/pages/needHelpPage/buyPlansPages/widgets/customer_data.dart';
import 'package:sofi/ui/pages/needHelpPage/buyPlansPages/widgets/customer_payment.dart';
import 'package:timelines/timelines.dart';

class CustomerPage extends StatefulWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  State<CustomerPage> createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {

  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    ThemeLight themeLight = new ThemeLight();
    final customerController = Get.lazyPut<CustomerController>(() => CustomerController(), fenix: true);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 16.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Text("Volver al carrito")
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: GetBuilder<CustomerController>(
              builder: (_) {
                return Column(
                  children: [

                    Container(
                    width: Get.width,
                    height: 70.0,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10.0, left: 18.0),
                    child: Timeline(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        TimelineTile(
                          oppositeContents: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('1. Datos de cliente', style: TextStyle(
                              fontSize: 13.0
                            ),),
                          ),
                          node: TimelineNode(
                            startConnector: SolidLineConnector(thickness: 8, color: Color(0xffE8BD70),),
                            endConnector: SolidLineConnector(thickness: 8, color: Color(0xffE8BD70)),
                          ),
                        ),
                        TimelineTile(
                          oppositeContents: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('2. Dirección', style: TextStyle(
                                fontSize: 13.0
                            )),
                          ),
                          node: TimelineNode(
                            startConnector: SolidLineConnector(thickness: 8, color: Color(0xffF4F4F4)),
                            endConnector: SolidLineConnector(thickness: 8, color: Color(0xffF4F4F4)),
                          ),
                        ),
                        TimelineTile(
                          oppositeContents: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('3. Beneficiarios', style: TextStyle(
                                fontSize: 13.0
                            )),
                          ),
                          node: TimelineNode(
                            startConnector: SolidLineConnector(thickness: 8, color: Color(0xffF4F4F4)),
                            endConnector: SolidLineConnector(thickness: 8, color: Color(0xffF4F4F4)),
                          ),
                        ),
                        TimelineTile(
                          oppositeContents: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text('4. Pago', style: TextStyle(
                                fontSize: 13.0
                            )),
                          ),
                          node: TimelineNode(
                            startConnector: SolidLineConnector(thickness: 8, color: Color(0xffF4F4F4)),
                            endConnector: SolidLineConnector(thickness: 8, color: Color(0xffF4F4F4)),
                          ),
                        )
                      ],
                    ),
                  ),


                    ExpandablePageView(
                      controller: _.pageViewController,
                      children: [
                        CustomerData(themeLight: themeLight),
                        CustomerAddress(themeLight: themeLight),
                        CustomerBeneficiary(themeLight: themeLight),
                        CustomerPayment(themeLight: themeLight)
                      ],
                    ),

                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}

