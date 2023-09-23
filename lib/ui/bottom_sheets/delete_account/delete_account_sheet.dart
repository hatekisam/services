import 'package:flutter/material.dart';
import 'package:socialservices/ui/common/app_colors.dart';
import 'package:socialservices/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'delete_account_sheet_model.dart';

class DeleteAccountSheet extends StackedView<DeleteAccountSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const DeleteAccountSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DeleteAccountSheetModel viewModel,
    Widget? child,
  ) {
    return  Container(
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
                Icons.delete_outline_rounded,
                color: Color(0xFFFF0000),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Delete Account",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              )
            ],
          ),
          verticalSpaceTiny,
          Text(
            "Are you sure you want to  delete your account?",
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
                    primary: Color(0xFFFF0000),
                  ),
                  child: Text(
                    "Delete",
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
  DeleteAccountSheetModel viewModelBuilder(BuildContext context) =>
      DeleteAccountSheetModel();
}
