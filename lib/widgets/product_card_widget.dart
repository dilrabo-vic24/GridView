import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gridview_example/models/product_models.dart';
import 'package:gridview_example/widgets/custom_text_style.dart';

class ProductCardWidget extends StatefulWidget {
  final Product product;
  const ProductCardWidget({super.key, required this.product});

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      margin: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 10.r,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Image.asset(
                  widget.product.imageUrl,
                  width: 150.w,
                  height: 150.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 5.h,
                right: 5.w,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.1),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                      icon: Icon(
                        isPressed ? Icons.favorite : Icons.favorite_outline,
                        size: 18.w,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              customTextStyle(
                text: widget.product.productName,
                fontWeight: FontWeight.w400,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: const Color.fromARGB(255, 230, 210, 29),
                    size: 16.w,
                  ),
                  SizedBox(width: 5.w),
                  customTextStyle(
                    text: widget.product.grade.toString(),
                    fontWeight: FontWeight.w400,
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              customTextStyle(
                text: widget.product.price,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
