import 'package:e_commerce_app/utilities/asset_app.dart';
import 'package:e_commerce_app/view_models/home_cubit/home_cubit.dart';
import 'package:e_commerce_app/views/widgets/categories_tab_view.dart';
import 'package:e_commerce_app/views/widgets/home_tab_view.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getHomeData(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(AssetApp.profilePhoto),
                          radius: 30.h,
                        ),
                        SizedBox(width: 16.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abdullah",
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            Text(
                              "Let's go shopping",
                              style: Theme.of(context).textTheme.labelMedium!
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 26.0.h),
                TabBar(
                  controller: _tabController,

                  tabs: const [
                    Tab(text: "Home"),
                    Tab(text: "Categories"),
                  ],
                ),
                SizedBox(height: 26.0.h),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [const HomeTabView(), const CategoriesTabView()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
