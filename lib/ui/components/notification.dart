import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final Icon? icon;
  final String? image;
  final String? title;
  final String? body;
  final String? primaryBtn;
  final String? secondBtn;
  final VoidCallback? primaryAction;
  final VoidCallback? secondaryAction;

  NotificationCard(
      {this.icon,
      this.image,
      this.title,
      this.body,
      this.primaryBtn,
      this.secondBtn,
      this.primaryAction,
      this.secondaryAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Row(
            children: [
              icon != null
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: icon,
                    )
                  : CircleAvatar(
                      backgroundImage: NetworkImage(
                        image!,
                      ),
                      radius: 25,
                    ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Column(
                  children: [
                    title != null
                        ? RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                color: Color(0xFF6B5E5E),
                                fontFamily: 'Outfit',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: title,
                                ),
                                TextSpan(
                                  text: body,
                                  style: TextStyle(
                                    color: Color(0xFF0386D0),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : Text(
                            body!,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        secondBtn != null
                            ? OutlinedButton(
                                onPressed: secondaryAction,
                                child: Text(
                                  secondBtn!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                              )
                            : Container(),
                        if (primaryBtn != null)
                          ElevatedButton(
                            onPressed: primaryAction,
                            child: Text(
                              primaryBtn!,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
