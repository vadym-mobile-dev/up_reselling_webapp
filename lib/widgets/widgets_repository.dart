import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_reselling_webapp/application/app_color.dart';
import 'package:up_reselling_webapp/application/style/dimens.dart';

class HelpCenterWidget extends StatelessWidget {
  const HelpCenterWidget({Key? key}) : super(key: key);

  Widget build(BuildContext context) => RichText(
    text: TextSpan(
      children: <TextSpan>[
        TextSpan(text: "Have any issues? ", style: TextStyle(color: AppColor.textGreyDark)),
        TextSpan(
            text: "Help Center",
            style: TextStyle(color: AppColor.textBlue, fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

class BeckToHomeWidget extends StatelessWidget {
  const BeckToHomeWidget({Key? key}) : super(key: key);

  Widget build(BuildContext context) => Row(
    children: [
      Expanded(
        child: Align(
          alignment: Alignment.centerLeft,
          child:   Icon(Icons.ac_unit),
        ),),
      Expanded(
        child: Align(
            alignment: Alignment.centerRight,
            child:       ElevatedButton.icon(
              icon: Icon(Icons.arrow_back_ios, color: AppColor.black, size: Dimens.paddingMedium),
              onPressed: () {},
              label: Text("Beck To Home", style: TextStyle(color: AppColor.black),),
              style: ElevatedButton.styleFrom(
                primary: AppColor.primaryGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Dimens.borderButtonRadius),
                ),
              ),
            )
        ),),
    ],
  );
}

class CardUnstoppableWidget extends StatelessWidget {
  const CardUnstoppableWidget({Key? key}) : super(key: key);

  Widget build(BuildContext context) => Card(
    color: AppColor.backgroundLightBlue,
    child: Padding(
      padding: EdgeInsets.all(Dimens.paddingLarge),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("UNSTOPPABLE\nDOMAINS",
              style: TextStyle(fontSize: 18.0, color: Colors.black, fontWeight: FontWeight.bold)),
          SizedBox(height: Dimens.paddingSemi),
          Text('Replace cryptocurrency addresses with\na human readable name',
              style: TextStyle(fontSize: 14.0, color: AppColor.textGreyDark)),
        ],
      ),
    ),
  );
}

class TitleExtensionsWidget extends StatelessWidget {
  const TitleExtensionsWidget({Key? key, required this.domainName}) : super(key: key);
  final String domainName;

  Widget build(BuildContext context) => Align(
      alignment: Alignment.centerLeft,
      child: Container(
          child: Text("Extensions for \"" + "$domainName" + "\"",
              style: TextStyle(color: AppColor.textBlue, fontWeight: FontWeight.bold))));
}

class CardPurchaseWidget extends StatelessWidget {
  const CardPurchaseWidget({Key? key}) : super(key: key);

  Widget build(BuildContext context) => Card(
    color: AppColor.backgroundLightGrey,
    elevation: 0.0,
    child: Padding(
      padding: EdgeInsets.only(top: Dimens.paddingMedium, bottom: Dimens.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("Purchase your\nBlockchain Domain",
              style: TextStyle(fontSize: 22.0, color: Colors.black, fontWeight: FontWeight.bold)),
          SizedBox(height: Dimens.paddingSemi),
          Text("Please enter at least 6 Characters", style: TextStyle(color: AppColor.textGrey)),
        ],
      ),
    ),
  );
}
