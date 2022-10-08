import 'package:flutter/material.dart';
import 'package:store_app2/constant.dart';
import 'package:store_app2/view_models/product_view_model.dart';

import '../widgets/details/details_body_widget.dart';

class DetailsScreen extends StatelessWidget {
  final ProductViewModel? productViewModel;
  DetailsScreen({this.productViewModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBar(() => Navigator.pop(context)),
      body: DetailsBodyWidget(productViewModel: productViewModel!),
    );
  }

  AppBar appBar(Function()? onPressedFun) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kBackgroundColor,
      title: const Text(
        "رجوع",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15.0,
        ),
      ),
      leading: IconButton(
        onPressed: onPressedFun,
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
      ),
    );
  }
}