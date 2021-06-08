import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_app/sizeConfig.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to UI Master"),
      ),
      body: Container(
        padding: EdgeInsets.all(sizeConfig.smallSize),
        child: ListView(
          children: [
            listTile(
              press: () {},
              title: 'Gmail',
              subtitle: 'This is a dummy UI Gmail',
              iconAsset: 'assets/svg/gmail.svg',
            ),
            listTile(
              press: () {},
              title: 'Facebook',
              subtitle: 'This is a dummy UI Facebook',
              iconAsset: 'assets/svg/facebook.svg',
            ),
            listTile(
              press: () {},
              title: 'LinkedIn',
              subtitle: 'This is a dummy UI LinkedIn',
              iconAsset: 'assets/svg/linkedin.svg',
            ),
            listTile(
              press: () {},
              title: 'Messanger',
              subtitle: 'This is a dummy UI Messanger',
              iconAsset: 'assets/svg/messenger.svg',
            ),
            listTile(
              press: () {},
              title: 'Instagram',
              subtitle: 'This is a dummy UI Instagram',
              iconAsset: 'assets/svg/instagram.svg',
            ),
            listTile(
              press: () {},
              title: 'Fiverr',
              subtitle: 'This is a dummy UI Fiverr',
              iconAsset: 'assets/svg/fiverr.svg',
            ),
            listTile(
              press: () {},
              title: 'Telegram',
              subtitle: 'This is a dummy UI Telegram',
              iconAsset: 'assets/svg/telegram.svg',
            ),
            listTile(
              press: () {},
              title: 'Whatsapp',
              subtitle: 'This is a dummy UI Whatsapp',
              iconAsset: 'assets/svg/whatsapp.svg',
            ),
            listTile(
              press: () {},
              title: 'Playstore',
              subtitle: 'This is a dummy UI Playstore',
              iconAsset: 'assets/svg/playstore.svg',
            ),
            listTile(
              press: () {},
              title: 'Youtube',
              subtitle: 'This is a dummy UI of Youtube',
              iconAsset: 'assets/svg/youtube.svg',
            )
          ],
        ),
      ),
    );
  }
}

class listTile extends StatelessWidget {
  const listTile(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.iconAsset,
      required this.press})
      : super(key: key);

  final String? title;
  final String? subtitle;
  final String? iconAsset;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(sizeConfig.mediumSize),
          color: Colors.blueGrey,
        ),
        child: ListTile(
          onTap: press,
          title: Text(
            title!,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: sizeConfig.largeSize),
          ),
          subtitle: Text(
            subtitle!,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          trailing: SvgPicture.asset(
            iconAsset!,
            height: 50.0,
            width: 50.0,
          ),
        ),
      ),
    );
  }
}
