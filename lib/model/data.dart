import 'package:flutter/cupertino.dart';
import 'package:ui_app/view/facebook/main_screen.dart';
import 'package:ui_app/view/fiverr/main_screen.dart';
import 'package:ui_app/view/instagram/main_screen.dart';
import 'package:ui_app/view/linkedin/main_screen.dart';
import 'package:ui_app/view/messanger/main_screen.dart';
import 'package:ui_app/view/playstore/main_screen.dart';
import 'package:ui_app/view/telegram/main_screen.dart';
import 'package:ui_app/view/whatsapp/main_screen.dart';
import 'package:ui_app/view/youtube/main_screen.dart';

class Datas {
  final String? title;
  final String? message;
  final String? img;
  final bool? status;
  final Widget? page;

  Datas(
      {required this.title,
      required this.message,
      required this.img,
      required this.status,
      required this.page});
}

List<Datas> listDatas = [
  Datas(
    title: 'Gmail',
    message: 'This is a dummy UI Gmail',
    img: 'assets/svg/gmail.svg',
    status: false,
    page: WhatsAppMainScreen(),
  ),
  Datas(
    title: 'Facebook',
    message: 'This is a dummy UI Facebook',
    img: 'assets/svg/facebook.svg',
    status: false,
    page: FacebookMainScreen(),
  ),
  Datas(
    title: 'LinkedIn',
    message: 'This is a dummy UI LinkedIn',
    img: 'assets/svg/linkedin.svg',
    status: false,
    page: LinkedInMainScreen(),
  ),
  Datas(
    title: 'Messanger',
    message: 'This is a dummy UI Messanger',
    img: 'assets/svg/messenger.svg',
    status: false,
    page: MessangerMainScreen(),
  ),
  Datas(
    title: 'Instagram',
    message: 'This is a dummy UI Instagram',
    img: 'assets/svg/instagram.svg',
    status: false,
    page: InstagramMainScreen(),
  ),
  Datas(
    title: 'Fiverr',
    message: 'This is a dummy UI Fiverr',
    img: 'assets/svg/fiverr.svg',
    status: false,
    page: FiverrMainScreen(),
  ),
  Datas(
    title: 'Telegram',
    message: 'This is a dummy UI Telegram',
    img: 'assets/svg/telegram.svg',
    status: false,
    page: TelegramMainScreen(),
  ),
  Datas(
    title: 'Whatsapp',
    message: 'This is a dummy UI Whatsapp',
    img: 'assets/svg/whatsapp.svg',
    status: true,
    page: WhatsAppMainScreen(),
  ),
  Datas(
    title: 'Playstore',
    message: 'This is a dummy UI Playstore',
    img: 'assets/svg/playstore.svg',
    status: false,
    page: PlaystoreMainScreen(),
  ),
  Datas(
    title: 'Youtube',
    message: 'This is a dummy UI of Youtube',
    img: 'assets/svg/youtube.svg',
    status: false,
    page: YoutubeMainScreen(),
  )
];
