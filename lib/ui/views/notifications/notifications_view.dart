import 'package:flutter/material.dart';
import 'package:socialservices/ui/components/notification.dart';
import 'package:stacked/stacked.dart';

import 'notifications_viewmodel.dart';

class NotificationsView extends StackedView<NotificationsViewModel> {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotificationsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Align widgets to the left
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            IconButton(
                                onPressed: () {
                                  viewModel.goBack();
                                },
                                icon: Icon(Icons.arrow_back_ios),
                                iconSize: 20),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Notifications",
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontFamily: "Outfit",
                                fontSize: 24.0,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                height: 1.0,
                              ),
                            )
                          ]),
                        ],
                      ),
                      Expanded(
                          child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Now",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            NotificationCard(
                              image:
                                  "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg",
                              body:
                                  "Your request to service provider was approved",
                            ),
                            NotificationCard(
                              image:
                                  "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg",
                              body:
                                  "Your request to service provider was approved",
                              primaryBtn: "Accept",
                              primaryAction: () {
                                print("Accepted");
                              },
                              secondBtn: "Decline",
                              secondaryAction: () {
                                print("Declined");
                              },
                            ),
                            NotificationCard(
                              image:
                                  "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg",
                              body:
                                  "Your request to service provider was approved",
                              primaryBtn: "Accept",
                              primaryAction: () {
                                print("Accepted");
                              },
                              secondBtn: "Decline",
                              secondaryAction: () {
                                print("Declined");
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Yesterday",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            NotificationCard(
                                image:
                                    "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg",
                                body:
                                    "Your request to service provider was approved",
                                primaryBtn: "Set Profile",
                                primaryAction: () {
                                  print("Accepted");
                                }),
                            NotificationCard(
                                image:
                                    "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg",
                                body:
                                    "Your request to service provider was approved",
                                secondBtn: "Try Again",
                                secondaryAction: () {
                                  print("Accepted");
                                }),
                          ],
                        ),
                      ))
                    ]))));
  }

  @override
  NotificationsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotificationsViewModel();
}
