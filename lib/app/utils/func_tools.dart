import 'package:apresentacao/app/modules/home/widgets/dialog_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchURL(String url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

showCustomDialog(
  BuildContext context,
  String sourceImage,
  String title,
) {
  return showDialog(
      context: context,
      builder: (context) {
        return DialogImageWidget(
          sourceImage: sourceImage,
          title: title,
        );
      });
}
