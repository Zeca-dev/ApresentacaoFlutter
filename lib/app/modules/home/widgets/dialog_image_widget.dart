import 'package:flutter/material.dart';

class DialogImageWidget extends StatelessWidget {
  final String title;
  final String sourceImage;
  const DialogImageWidget(
      {Key? key, this.title = "DialogImageWidget", this.sourceImage = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      content: Image.asset(
        sourceImage,
        scale: 0.1,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.blue)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
              )),
        )
      ],
    );
  }
}
