import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home_app/presentation/settings/widgets/subscription_card.dart';
import 'package:smart_home_app/utils/managers/color_manager.dart';
import 'package:smart_home_app/utils/managers/string_manager.dart';
import 'package:smart_home_app/utils/managers/style_manager.dart';
import 'package:smart_home_app/utils/managers/value_manager.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.darkGrey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: SizeManager.s20.h,),
            Text(StringsManager.subscriptionPackages, style: StyleManager.homePageTextSpacerTextStyle,),
            SizedBox(height: SizeManager.s20.h,),

          SubscriptionCard(color: Colors.purpleAccent,name:'Basic',time:'1 month',money: '£10',),
          SubscriptionCard(color: Colors.pinkAccent,name:'Standard',time:'6 month',money: '£50',),
          SubscriptionCard(color: Colors.deepOrangeAccent,name:'Premium',time:'1 year',money: '£80',),
        ],),
      ),
    );
  }
}
