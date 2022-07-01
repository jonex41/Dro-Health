import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:dex_app/data/fake_repo/fake_repository.dart';
import 'package:dex_app/general_widgets/category_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../Router/router.gr.dart';
import '../../../Utils/colors.dart';
import '../../../Utils/constants.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);
  final Gradient gradient = const LinearGradient(
      colors: [kPrimaryStartGradientColor, kPrimaryLightColor]);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Color(0xFF852CF7),
                floating: true,
                pinned: true,
                snap: false,
                expandedHeight: height / 9,
                centerTitle: false,
                shape: kSilvershape,
                leading: InkWell(
                  onTap: () {
                    context.router.navigateBack();
                  },
                  child: const Icon(
                    FontAwesomeIcons.angleLeft,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
                title: const Text(
                  'Category',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
                actions: [
                  Badge(
                    badgeColor: Colors.yellow,
                    position: BadgePosition.topEnd(top: 4, end: -2),
                    badgeContent: Text(''),
                    child: InkWell(
                      onTap: () {
                        context.pushRoute(CartRouter(children: [CartRoute()]));
                      },
                      child: Icon(
                        FontAwesomeIcons.truckFast,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                  15.width,
                ],
              ),
              const SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 5),
              ),
              /*     SliverToBoxAdapter(
                child: Container(
                  width: width / 2,
                  height: height / 4,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listCategories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 150.0,
                        child: CategoryWidget(post: listCategories[index])
                            .paddingAll(5),
                      );
                    },
                  ),
                ),
              ), */
              SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0,
                childAspectRatio: 1,
                children: [
                  ...listCategories
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CategoryWidget(post: e),
                          ))
                      .toList(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
