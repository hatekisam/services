import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'become_provider_viewmodel.dart';

class BecomeProviderView extends StackedView<BecomeProviderViewModel> {
  const BecomeProviderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BecomeProviderViewModel viewModel,
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
                        "Become Service Provider",
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
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        viewModel.body,
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              viewModel.requestProfile();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10),
                              child: Text(
                                viewModel.btn,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
        ));
  }

  @override
  BecomeProviderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BecomeProviderViewModel();
}
