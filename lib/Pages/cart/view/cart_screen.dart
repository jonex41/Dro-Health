import 'package:auto_route/auto_route.dart';
import 'package:dex_app/Pages/cart/provider/cart_provider.dart';
import 'package:dex_app/Pages/cart/widgets/cart_widget.dart';
import 'package:dex_app/Utils/colors.dart';
import 'package:dex_app/data/fake_repo/fake_repository.dart';
import 'package:dex_app/data/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart' hide AppButton;

import '../../../Utils/constants.dart';
import '../../../general_widgets/app_button.dart';

class CartScreen extends HookConsumerWidget {
  CartScreen({Key? key}) : super(key: key);
  final Gradient gradient = const LinearGradient(
      colors: [kPrimaryStartGradientColor, kPrimaryLightColor]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                 backgroundColor: const Color(0xFF852CF7),
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
                title: Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.cartShopping,
                      color: white,
                      size: 22,
                    ),
                    6.width,
                    const Text(
                      'Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                actions: [
                  const Icon(
                    FontAwesomeIcons.truckFast,
                    color: Colors.white,
                    size: 22,
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
              SliverList(
                delegate: SliverChildListDelegate([
                  ...ref
                      .read(cartProvider.notifier)
                      .getAllCart()
                      .map((e) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CartWidget(model: e, ref: ref),
                          ))
                      .toList(),
                ]),
              ),
            ],
          ),
          /*  Positioned(
            bottom: 0,
            child:Container(
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: const Text('Total cash')),
                    Expanded(
                      flex: 1,
                      child: AppButton(
                        onPressed: () {},
                        child: const Text(
                          'CHECKOUT',
                          style:
                              TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ),
        */

          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    const Text(
                      'Total:',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87),
                    ),
                    10.width,
                    Text(
                      '₦${ref.watch(totalProvider)}',
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ],
                ),
                Container(
                  height: 44.0,
                  width: width / 2,

                  /*  decoration: BoxDecoration(
                border: Border.all(
                    color: Color(0xFFF05A22),
                    style: BorderStyle.solid,
                    width: 1.0,
                ), */
                  decoration: kButtonGradientColor,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent),
                    child: const Text(
                      'CHECKOUT',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                  ),
                )
              ],
            ).paddingSymmetric(vertical: 5, horizontal: 10),
          )
        ],
      ),
    );
  }
}
