import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../sofi_icons.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

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
            Align(alignment: Alignment.center,child: Text('Configuración', style: TextStyle(fontSize: 18.0),))
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 30.0, left: 38.0, right: 38.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Sofi.icon_notification, color: Color(0xff30396A)),
                    SizedBox(
                      width: 23.0,
                    ),
                    Text('Notificación', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xff30396A)),)
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Divider(
              color: Color(0xffE7EAEB),
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 34.0,  left: 38.0, right: 38.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Notificaciones', style: TextStyle(fontSize: 16.0, color: Color(0xff77819B)),),
                    FlutterSwitch(
                      width: 50.0,
                      height: 25.0,
                      value: true,
                      borderRadius: 30.0,
                      padding: 2.0,
                      toggleColor: Color(0xffC39C55),
                      switchBorder: Border.all(
                        color: Color(0xffC39C55),
                        width: 1.0,
                      ),
                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      onToggle: (val) {
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Promociones Sofi', style: TextStyle(fontSize: 16.0, color: Color(0xff77819B)),),
                    FlutterSwitch(
                      width: 50.0,
                      height: 25.0,
                      value: false,
                      borderRadius: 30.0,
                      padding: 2.0,
                      toggleColor: Color(0xffC39C55),
                      activeSwitchBorder: Border.all(
                        color: Color(0xffC39C55),
                        width: 1.0,
                      ),
                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      inactiveToggleColor: Colors.grey,
                      inactiveSwitchBorder: Border.all(
                        color: Color(0xffC39C55),
                        width: 1.0,
                      ),
                      onToggle: (val) {
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0, top: 57.0, left: 38.0, right: 38.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Sofi.icon_lenguaje, color: Color(0xff30396A)),
                    SizedBox(
                      width: 23.0,
                    ),
                    Text('Lenguaje', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xff30396A)),)
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Divider(
              color: Color(0xffE7EAEB),
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 34.0,  left: 38.0, right: 38.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Lenguaje', style: TextStyle(fontSize: 16.0, color: Color(0xff77819B)),),
                    Container(
                      width: 120.0,
                      child: DropdownButtonFormField(
                        items: null,
                        elevation: 0,
                        decoration: InputDecoration(
                          fillColor: Colors.transparent,
                          contentPadding: EdgeInsets.zero,
                          labelText: 'Español'
                        ), onChanged: (Object? value) {  },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, '/TermsPage');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsets.zero,
                  title: Text('Aviso de privacidad', style: TextStyle(
                    color: Color(0xff77819B)
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff9C9FA7), size: 20.0,),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, '/PrivacyPoliciesPage');
                  },
                  contentPadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Text('Términos y condiciones', style: TextStyle(
                      color: Color(0xff77819B)
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff9C9FA7), size: 20.0,),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
