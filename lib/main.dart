import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sofi/themes/themeLight.dart';
import 'package:sofi/ui/pages/about_us/about_us_page.dart';
import 'package:sofi/ui/pages/branchesGoogleMaps/branches_google_maps_page.dart';
import 'package:sofi/ui/pages/homePage/detail_plan_page.dart';
import 'package:sofi/ui/pages/homePage/home_page.dart';
import 'package:sofi/ui/pages/homePage/privacy_policies/privacy_policies.dart';
import 'package:sofi/ui/pages/homePage/settings_page.dart';
import 'package:sofi/ui/pages/homePage/terms/terms_page.dart';
import 'package:sofi/ui/pages/needHelpPage/additionalPages/additional_home_page.dart';
import 'package:sofi/ui/pages/needHelpPage/buyPlansPages/customer_page.dart';
import 'package:sofi/ui/pages/needHelpPage/camera_certificate_page.dart';
import 'package:sofi/ui/pages/needHelpPage/innovationsPages/innovation_detail_page.dart';
import 'package:sofi/ui/pages/needHelpPage/innovationsPages/innovation_home_page.dart';
import 'package:sofi/ui/pages/needHelpPage/marketplacePages/marketPlace_home_page.dart';
import 'package:sofi/ui/pages/needHelpPage/need_help_page.dart';
import 'package:sofi/ui/pages/needHelpPage/orbituaryPages/obituary_profile_page.dart';
import 'package:sofi/ui/pages/needHelpPage/orbituaryPages/obituary_shop_flower_page.dart';
import 'package:sofi/ui/pages/needHelpPage/orbituaryPages/orbituary_home_page.dart';
import 'package:sofi/ui/pages/needHelpPage/pageFlowerShopBlanc/flower_shop_blanc_page.dart';
import 'package:sofi/ui/pages/needHelpPage/planPreventPages/plan_prevent_home_page.dart';
import 'package:sofi/ui/pages/onBoarding/onBoarding_page.dart';
import 'package:sofi/ui/pages/passwordPages/new_password_page.dart';
import 'package:sofi/ui/pages/passwordPages/password_success_page.dart';
import 'package:sofi/ui/pages/passwordPages/recovery_password_page.dart';
import 'package:sofi/ui/pages/passwordPages/send_code_recovery_password.dart';
import 'package:sofi/ui/pages/planPreventPage/plan_detail_options.dart';
import 'package:sofi/ui/pages/planPreventPage/plan_prevent_detail_page.dart';
import 'package:sofi/ui/pages/planPreventPage/plan_prevent_page.dart';
import 'package:sofi/ui/pages/process_payment/process_payment_page.dart';
import 'package:sofi/ui/pages/process_payment/success_payment_page.dart';
import 'package:sofi/ui/pages/trackingServicePage/share_service_page.dart';
import 'package:sofi/ui/pages/trackingServicePage/tracking_code_page.dart';
import 'package:sofi/ui/pages/trackingServicePage/tracking_service_active_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      initialRoute: '/OnBoarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeLight.light,
      routes: {
        '/OnBoarding' : (context) => OnBoardingPage(),
        '/HelPage' : (context) => NeedHelpPage(),
        '/BrancesGoogleMaps' : (context) => BranchesGoogleMapsPage(),
        '/TrackingServicePage': (context) => TrackingCodePage(),
        '/TrackingServiceActivePage': (context) => TrackingServiceActivePage(),
        '/TrackingServiceSharePage': (context) => TrackingServiceSharePage(),
        '/CameraCertificatePage': (context) => CameraCertificatePage(),
        '/MarketPlaceHomePage': (context) => MarketPlaceHomePage(),
        '/FlowerShopBlancPage': (context) => FlowerShopBlancPage(),
        '/OrbituaryHomePage': (context) => OrbituaryHomePage(),
        '/OrbituaryProfilePage': (context) => ObituaryProfilePage(),
        '/ObituaryShopFlowerPage': (context) => ObituaryShopFlowerPage(),
        '/InnovationHomePage' : (context) => InnovationHomePage(),
        '/InnovationDetailPage' : (context) => InnovationDetailPage(),
        '/AditionalHomePage' : (context) => AdditionalHomePage(),
        '/RecoveryPasswordPage' : (context) => RecoveryPasswordPage(),
        '/SendCodeRecoveryPasswordPage' : (context) => SendCodeRecoveryPassword(),
        '/NewPasswordPage' : (context) => NewPasswordPage(),
        '/PasswordSuccessPage' : (context) => PasswordSuccessPage(),
        '/PlanPreventPage' : (context) => PlanPreventPage(),
        '/PlanPreventDetailPage' : (context) => PlanPreventDetailPage(),
        '/PlanPreventDetailOptionsPage' : (context) => PlanDetailOptions(),
        '/PlanPreventHomePage' : (context) => PlanPreventHomePage(),
        '/ContractPlanPreventHomePage' : (context) => PlanPreventHomePage(),
        '/CustomerPage' : (context) => CustomerPage(),
        '/HomePage': (context) => HomePage(),
        '/PlanDetailPage': (context) => PlanDetailPage(),
        '/SettingsPage': (context) => SettingsPage(),
        '/TermsPage': (context) => TermsPage(),
        '/PrivacyPoliciesPage': (context) => PrivacyPolicies(),
        '/AboutUs' : (context) => AboutUsPage(),
        '/ProcessPayment' : (context) => ProcessPaymentPage(),
        '/SuccesPayment' : (context) => SuccessPaymentPage()
      },
    );
  }
}