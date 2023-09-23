import 'package:flutter/material.dart';
import 'package:socialservices/ui/components/order.dart';
import 'package:stacked/stacked.dart';

import 'your_orders_viewmodel.dart';

class YourOrdersView extends StackedView<YourOrdersViewModel> {
  const YourOrdersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    YourOrdersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
            child: Column(
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
                        iconSize: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Orders",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ]),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Order(
                            id: "1234567890",
                            stage: 1,
                            date: DateTime.now(),
                            weight: 3,
                            dealerImg:
                                "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg",
                            dealerName: "Mugisha Yves",
                            dealerPhone: "0798888888",
                            dealerEmail: "sjflasjdflka@gmail.com"),
                        SizedBox(
                          height: 10,
                        ),
                        Order(
                            id: "1234567890",
                            stage: 2,
                            date: DateTime.now(),
                            weight: 3,
                            dealerImg:
                                "https://i.pinimg.com/236x/88/08/b8/8808b840ef5f755396e2b8f465e3d4bf.jpg",
                            dealerName: "Mugisha Yves",
                            dealerPhone: "0798888888",
                            dealerEmail: "sjflasjdflka@gmail.com"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  @override
  YourOrdersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      YourOrdersViewModel();
}
