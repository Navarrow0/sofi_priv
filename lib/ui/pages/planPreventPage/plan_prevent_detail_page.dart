import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sofi/domains/blocs/planPreventDetailController/plan_prevent_detail_controller.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/needHelpPage/marketplacePages/marketPlace_home_page.dart';
import 'package:sofi/ui/widgets/card_tip.dart';


class PlanPreventDetailPage extends StatelessWidget {
  const PlanPreventDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final planPreventDetailCtlr = Get.lazyPut<PlanPreventDetailController>(() => PlanPreventDetailController(), fenix: true);

    ThemeLight themeLight = new ThemeLight();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Planes Prevent',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0,),
              child: CardTip(themeLight: themeLight, marginTop: 23.0,),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 35, right: 20.0),
                child: Text(
                  "Planes a futuro",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Color(0xff241555)),
                ),
              ),
            ),

            GetBuilder<PlanPreventDetailController>(
              id: 'pageViewPlans',
              builder: (_) {
                return Container(
                  height: Get.height * 0.57,
                  margin: EdgeInsets.only(top: 15.0),
                  child: Swiper(
                    loop: false,
                    itemBuilder: (BuildContext context, int index) {
                      return cardBranchOffice(context, _.listOfBranchOffice[index]);
                    },
                    outer: true,
                    itemCount: _.listOfBranchOffice.length,
                    viewportFraction: 0.72,
                    physics: BouncingScrollPhysics(),
                    scale: 0.82,
                  ),
                );
              }
            ),

          ],
        ),
      ),
    );
  }
}


Widget cardBranchOffice(context ,Map data) {

  return InkWell(
    borderRadius: BorderRadius.circular(25.0),
    onTap: (){
      Navigator.pushNamed(context, '/PlanPreventDetailOptionsPage');
    },
    child: Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xff677EA3).withAlpha(18),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 14.0, left: 14, right: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Get.width,
              height: 279.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                image: DecorationImage(
                  image: AssetImage('${data['image']}'),
                  fit: BoxFit.cover
                )
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${data['titlePlan']}', style: TextStyle(fontSize: 17.0),),
                  Text('${data['title']}', style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text('${data['description']}', style: TextStyle(fontSize: 11.0, color: themeBaseLight.colorGreyPrimary)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}