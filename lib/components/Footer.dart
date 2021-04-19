import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class Footer extends StatelessWidget {

  final String instagramURL = 'https://instagram.com/developerb2';
  final String githubURL = 'https://github.com/dvlprb2';

  @override
  Widget build(BuildContext context) {
    return HStack(
      [
        "Copyright \u00a9 2021 Awadh Techsol LLP."
            .text
            .bodyText2(context)
            .make(),
        HStack([
          InkWell(
            onTap: () {
              if(canLaunch(instagramURL) != null){
                launch(instagramURL);
              } else {
                print("Invalid URL");
              }
            },
            child: SvgPicture.asset(
              'assets/instagram.svg',
              color: Vx.coolGray400,
              width: 40.0,
            ),
          ),
          SizedBox(width: 10.0),
          InkWell(
            onTap: () async {
              if(canLaunch(githubURL) != null){
                await launch(githubURL);
              } else {
                print("Invalid URL");
              }
            },
            child: SvgPicture.asset(
              'assets/github.svg',
              color: Vx.coolGray400,
              width: 40.0,
            ),
          )
        ])
      ],
      alignment: MainAxisAlignment.spaceBetween,
    )
        .box
        .width(context.screenWidth)
        .height(64.0)
        .px24
        .withDecoration(
            BoxDecoration(border: Border(top: BorderSide(color: Vx.coolGray200))))
        .make();
  }
}
