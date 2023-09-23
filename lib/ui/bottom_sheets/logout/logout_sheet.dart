import 'package:flutter/material.dart';
import 'package:socialservices/ui/common/app_colors.dart';
import 'package:socialservices/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'logout_sheet_model.dart';

class LogoutSheet extends StackedView<LogoutSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const LogoutSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LogoutSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.exit_to_app_outlined,
                color: Color(0xFF466FE6),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Logout",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              )
            ],
          ),
          verticalSpaceTiny,
          Text(
            "Are you sure you want to  Logout",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          verticalSpaceTiny,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(width: 1.0, color: Color(0xFF466FE6)),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Color(
                          0xFF466FE6), // Text color to match the border color
                    ),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF466FE6),
                  ),
                  child: Text(
                    "Logout",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ))
            ],
          ),
          verticalSpaceLarge,
        ],
      ),
    );
  }

  @override
  LogoutSheetModel viewModelBuilder(BuildContext context) => LogoutSheetModel();
}
