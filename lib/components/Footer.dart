import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
          IconButton(
            onPressed: () async {
              if(canLaunch(instagramURL) != null){
                await launch(instagramURL);
              } else {
                print("Invalid URL");
              }
            },
            icon: Icon(
              MdiIcons.instagram,
              color: Vx.coolGray400,
            ),
            iconSize: 24.0,
          ),
          IconButton(
            onPressed: () async {
              if(canLaunch(githubURL) != null){
                await launch(githubURL);
              } else {
                print("Invalid URL");
              }
            },
            icon: Icon(
              MdiIcons.github,
              color: Vx.coolGray400,
            ),
            iconSize: 24.0,
          ),
        ])
      ],
      alignment: MainAxisAlignment.spaceBetween,
    )
        .box
        .width(context.screenWidth)
        .height(64.0)
        .padding(EdgeInsets.symmetric(horizontal: context.isMobile ? 12 : 24))
        .withDecoration(
            BoxDecoration(border: Border(top: BorderSide(color: Vx.coolGray200))))
        .make();
  }
}
