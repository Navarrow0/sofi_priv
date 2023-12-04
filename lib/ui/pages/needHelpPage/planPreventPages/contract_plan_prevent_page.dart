import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContractPlanPreventPage extends StatelessWidget {
  const ContractPlanPreventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Color(0xffFAFAFA),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 16.0,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                Align(alignment: Alignment.topCenter,child: Text("Planes Prevent")),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0, top: 15.0, left: 12.0, right: 12.0),
            child: Column(
              children: [

              ],
            ),
          )
      ),
    );
  }
}
