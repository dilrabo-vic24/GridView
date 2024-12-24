import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gridview_example/data/products.dart';
import 'package:gridview_example/widgets/product_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.h),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 2 / 3,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ProductCardWidget(product: clothes[index]);
          },
        ),
      ),
    );
  }
}
