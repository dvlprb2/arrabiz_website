import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Features extends StatefulWidget {
  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: VStack(
        [
          VStack([
            "Features".text.uppercase.bodyText2(context).letterSpacing(2.0).lineHeight(1.0).teal600.semiBold.make(),
            "What we offer".text.capitalize.black.bold.headline4(context).make().box.py16.make()
          ], alignment: MainAxisAlignment.center, crossAlignment: CrossAxisAlignment.center),
          VStack(
            [
              Feature(
                icon: 'assets/invoice.png',
                title: 'Create your Estimates & Invoices',
                description:
                'Create estimates and invoices on the go. Maintain an easy '
                    'flow of creating estimates for your services & products with convert to invoice option.',
              ),
              Feature(
                icon: 'assets/backup.png',
                title: "Safe and Quick Data Backup",
                description:
                'Providing an smooth data backup option with GOOGLE DRIVE with daily, weekly, monthly'
                    ' and when I tap backup options to keep your data safe & secure',
              ),
              Feature(
                icon: 'assets/reports.png',
                title: "Detailed and Accurate Reports",
                description:
                'View monthly sales reports with ease and differentiate with PAID & UNPAID '
                    'invoices on a single click, we have made it easy to track your business with detailed reports.',
              ),
            ],
            alignment: MainAxisAlignment.spaceBetween,
            crossAlignment: CrossAxisAlignment.center,
          )
        ],
        alignment: MainAxisAlignment.spaceEvenly,
        crossAlignment: CrossAxisAlignment.center,
      ).box.width(context.screenWidth).make(),
      web: VStack(
        [
          VStack([
              "Features".text.uppercase.bodyText2(context).letterSpacing(2.0).lineHeight(1.0).teal600.semiBold.make(),
              "What we offer".text.capitalize.black.bold.headline4(context).make().box.py16.make()
            ], alignment: MainAxisAlignment.center, crossAlignment: CrossAxisAlignment.center),
          HStack(
            [
              Feature(
                icon: 'assets/invoice.png',
                title: 'Create your Estimates & Invoices',
                description:
                    'Create estimates and invoices on the go. Maintain an easy '
                        'flow of creating estimates for your services & products with convert to invoice option.',
              ),
              Feature(
                icon: 'assets/backup.png',
                title: "Safe and Quick Data Backup",
                description:
                    'Providing an smooth data backup option with GOOGLE DRIVE with daily, weekly, monthly'
                        ' and when I tap backup options to keep your data safe & secure',
              ),
              Feature(
                icon: 'assets/reports.png',
                title: "Detailed and Accurate Reports",
                description:
                    'View monthly sales reports with ease and differentiate with PAID & UNPAID '
                        'invoices on a single click, we have made it easy to track your business with detailed reports.',
              ),
            ],
            alignment: MainAxisAlignment.spaceEvenly,
            crossAlignment: CrossAxisAlignment.center,
          )
        ],
        alignment: MainAxisAlignment.spaceEvenly,
        crossAlignment: CrossAxisAlignment.center,
      ).box.width(context.screenWidth).make(),
    );
  }
}

class Feature extends StatelessWidget {
  final String title, description, icon;

  Feature(
      {@required this.title, @required this.description, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        Image.asset(
          this.icon,
          width: 80.0,
          height: 80.0,
        ),
        this.title.text.black.bold.subtitle1(context).make(),
        this
            .description
            .text
            .bodyText2(context)
            .coolGray500
            .center
            .make()
            .box
            .width(350.0)
            .make(),
      ],
      alignment: MainAxisAlignment.spaceBetween,
      crossAlignment: CrossAxisAlignment.center,
    ).box.width(400.0).height(200.0).margin(Vx.mOnly(bottom: 24.0)).make();
  }
}
