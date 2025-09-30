import 'package:e_commerce_app/models/categories_model.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesTabView extends StatelessWidget {
  const CategoriesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyCategories.length,
      itemBuilder: (context, index) {
        final categories = dummyCategories[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: InkWell(
            onTap: () {
              // Handle category tap
            },
            child: Container(
              //height: 60,
              decoration: BoxDecoration(
                color: categories.bgColor,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 32.0,
                ),
                child: Column(
                  children: [
                    Text(
                      categories.name,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: categories.textColor,
                        // fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "${categories.productsCount} Products",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: categories.textColor,
                        // fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
