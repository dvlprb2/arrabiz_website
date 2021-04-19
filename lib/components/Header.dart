import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:transparent_image/transparent_image.dart';


class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: VStack([
        VStack(
          [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage('assets/logo.png'),
              width: 100.0,
              height: 100.0,
            ).box.margin(Vx.mOnly(top: 24.0)).make(),
            // Image.asset(
            //   'logo.png',
            //   width: 100,
            //   height: 100,
            // ).,
            "Arrabiz"
                .text
                .uppercase
                .letterSpacing(4.6)
                .xl
                .teal600
                .semiBold
                .lineHeight(1.5)
                .make()
                .box
                .margin(Vx.mOnly(bottom: 24.0))
                .width(100.0)
                .make(),
            "Empowering your \nBusiness process"
                .text
                .black
                .bold
                .headline4(context)
                .center
                .lineHeight(1.0)
                .make()
                .box
                .margin(Vx.mOnly(bottom: 8.0))
                .make(),
            "We have initiated a free & open source app for all small businesses to easily do invoicing and view reports of day to day business."
                .text
                .bodyText2(context)
                .center
                .coolGray500
                .make()
                .box
                .margin(Vx.mOnly(bottom: 8.0))
                .make(),
            ElevatedButton(
              onPressed: () => null,
              child: "Try it now".text.uppercase.make(),
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Vx.teal600)),
            ).w(150.0),
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetImage('assets/mockup.png'),
              fit: BoxFit.cover,
            )
          ],
          alignment: MainAxisAlignment.spaceBetween,
          crossAlignment: CrossAxisAlignment.center,
        ).box.teal100.width(context.screenWidth).make(),
        SvgPicture.asset(
          'assets/waves.svg',
          color: Vx.teal100,
          width: context.screenWidth,
        )
      ]),
      web: ZStack([
        Positioned.fill(
          child: HStack(
            [
              VStack(
                [
                  Image.asset(
                    'assets/logo.png',
                    width: 100,
                    height: 100,
                  ).box.make(),
                  "Arrabiz"
                      .text
                      .uppercase
                      .letterSpacing(4.6)
                      .xl
                      .teal600
                      .semiBold
                      .lineHeight(1.5)
                      .make()
                      .box
                      .width(100.0)
                      .make(),
                  "Empowering your \nBusiness process"
                      .text
                      .black
                      .bold
                      .headline3(context)
                      .lineHeight(1.2)
                      .make()
                      .box
                      .make(),
                  "We have initiated a free & open source app for all small businesses \nto easily do invoicing and view reports of day to day business."
                      .text
                      .bodyText2(context)
                      .coolGray500
                      .make()
                      .box
                      .make(),
                  ElevatedButton(
                    onPressed: () => null,
                    child: "Try it now".text.uppercase.make(),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Vx.teal600)),
                  ).w(100.0).py12()
                ],
              ),
              Image.asset(
                'assets/mockup.png',
                fit: BoxFit.cover,
              ),
            ],
            alignment: MainAxisAlignment.spaceAround,
            crossAlignment: CrossAxisAlignment.center,
          ).box.make(),
        ),
        Positioned(
          top: context.screenHeight * .6,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SvgPicture.asset(
              'assets/waves.svg',
              color: Vx.teal100,
              width: context.screenWidth,
            ),
          ),
        )
      ])
          .box
          .teal100
          .width(context.screenWidth)
          .height(context.screenHeight * .6)
          .make(),
    );
  }
}

