import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:dex_app/Pages/cart/provider/cart_provider.dart';
import 'package:dex_app/Router/router.gr.dart';
import 'package:dex_app/Utils/colors.dart';
import 'package:dex_app/data/fake_repo/fake_repository.dart';
import 'package:dex_app/data/models/cart_model.dart';
import 'package:dex_app/data/models/drug_model.dart';
import 'package:dex_app/general_widgets/category_widget.dart';
import 'package:dex_app/general_widgets/color_button.dart';
import 'package:dex_app/general_widgets/drug_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../Utils/constants.dart';

class DetailScreen extends HookConsumerWidget {
  const DetailScreen({Key? key, required this.model}) : super(key: key);
  final DrugModel model;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var quantity = useState(1);
    final scrollController = useScrollController();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                 backgroundColor: const Color(0xFF852CF7),
                floating: true,
                pinned: true,
                snap: false,
                expandedHeight: height / 8,
                centerTitle: false,
                shape: kSilvershape,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    gradient: kGradient,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
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
                title: Text(
                  model.drugName,
                  style: const TextStyle(
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
              SliverToBoxAdapter(
                child: SizedBox(
                  width: width / 2,
                  height: height / 1.1,
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 200,
                            height: height / 5,
                            child: Image(
                              image:
                                  AssetImage('assets/images/${model.imageUrl}'),
                              fit: BoxFit.cover,
                            ),
                          ).center(),
                          10.height,
                          Text(
                            model.drugName,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ).center(),
                          10.height,
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Tablet',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: kUnselectedTabColor,
                                      fontWeight: FontWeight.w400),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                5.width,
                                Container(
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kUnselectedTabColor),
                                  width: 5 / 2,
                                  height: 5 / 2,
                                ),
                                5.width,
                                Text(
                                  model.dosage,
                                  style: const TextStyle(
                                      fontSize: 14.0,
                                      color: kUnselectedTabColor),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ]),
                          ListTile(
                            leading: const SizedBox(
                              height: 40,
                              width: 40,
                              child: Image(
                                width: double.infinity,
                                height: 40,
                                image: AssetImage('assets/images/mzor.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: const Text(
                              'SOLD BY',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: kUnselectedTabColor,
                                  fontWeight: FontWeight.w400),
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text(
                              model.drugName,
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: kUnselectedTabColor,
                                  fontWeight: FontWeight.w700),
                              overflow: TextOverflow.ellipsis,
                            ),
                            trailing: Container(
                              height: 30,
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 237, 234, 239),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    PhosphorIcons.heart,
                                    size: 24,
                                    color: kAppPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ListTile(
                            leading: _buildCOunter(quantity),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Pack(s)',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: kUnselectedTabColor,
                                      fontWeight: FontWeight.w400),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color: kUnselectedTabColor,
                                      fontWeight: FontWeight.w400),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                            trailing: SizedBox(
                              height: 40,
                              width: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(children: [
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(2, -4),
                                          child: const Text(
                                            '₦ ',
                                            //superscript is usually smaller in size
                                            textScaleFactor: 0.7,
                                            style: TextStyle(),
                                          ),
                                        ),
                                      ),
                                      TextSpan(
                                          text:
                                              '${model.price * quantity.value}',
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w700,
                                          )),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(2, -1),
                                          child: const Text(
                                            '.00',
                                            //superscript is usually smaller in size
                                            textScaleFactor: 0.7,
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      )
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            leading: const Text(
                              'PRODUCT DETAILS',
                              style: TextStyle(
                                color: kUnselectedTabColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ).paddingLeft(20),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 200,
                                child: Table(
                                  border: const TableBorder(
                                      horizontalInside: BorderSide(
                                          width: 1,
                                          color: Colors.white,
                                          style: BorderStyle.solid)),
                                  children: [
                                    TableRow(children: [
                                      SizedBox(
                                        height: width / 3,
                                        width: height / 4,
                                        child: const ListTile(
                                          leading: Image(
                                            width: 30,
                                            height: 30,
                                            image: AssetImage(
                                                'assets/images/image1.png'),
                                            fit: BoxFit.cover,
                                          ),
                                          title: Text(
                                            'PACK SIZE',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: kUnselectedTabColor,
                                                fontWeight: FontWeight.w400),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          subtitle: Text(
                                            '8 x 12 tablets (96)',
                                            style: const TextStyle(
                                                fontSize: 14.0,
                                                color: kPrimaryLightColor,
                                                fontWeight: FontWeight.w700),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: width / 3,
                                        width: height / 4,
                                        child: const ListTile(
                                          leading: Image(
                                            width: 30,
                                            height: 30,
                                            image: AssetImage(
                                                'assets/images/image2.png'),
                                            fit: BoxFit.cover,
                                          ),
                                          title: Text(
                                            'PRODUCT ID',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: kUnselectedTabColor,
                                                fontWeight: FontWeight.w400),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          subtitle: Text(
                                            'PRO23648856',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: kPrimaryLightColor,
                                                fontWeight: FontWeight.w700),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ]),
                                    TableRow(children: [
                                      SizedBox(
                                        height: width / 3,
                                        width: height / 4,
                                        child: ListTile(
                                          leading: const Image(
                                            width: 30,
                                            height: 30,
                                            image: AssetImage(
                                                'assets/images/image3.png'),
                                            fit: BoxFit.cover,
                                          ),
                                          title: const Text(
                                            'CONSTITUENTS',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: kUnselectedTabColor,
                                                fontWeight: FontWeight.w400),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          subtitle: Text(
                                            model.drugName,
                                            style: const TextStyle(
                                                fontSize: 14.0,
                                                color: kPrimaryLightColor,
                                                fontWeight: FontWeight.w700),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: width / 3,
                                        width: height / 4,
                                        child: const ListTile(
                                          leading: Image(
                                            width: 30,
                                            height: 30,
                                            image: AssetImage(
                                                'assets/images/image4.png'),
                                            fit: BoxFit.cover,
                                          ),
                                          title: Text(
                                            'DISPENSED IN',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: kUnselectedTabColor,
                                                fontWeight: FontWeight.w400),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          subtitle: Text(
                                            'Packs',
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: kPrimaryLightColor,
                                                fontWeight: FontWeight.w700),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ],
                                ),
                              ),
                              ListTile(
                                leading: const Text(
                                  'Similar Products',
                                  style: TextStyle(
                                    color: kUnselectedTabColor,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ).paddingLeft(20),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
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
              ),
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: SliverToBoxAdapter(
                  child: Container(
                    width: width / 2,
                    height: height / 4,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listCategories.length,
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColoredButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        FontAwesomeIcons.cartShopping,
                        color: white,
                        size: 22,
                      ),
                      10.width,
                      const Text(
                        'Add to cart',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ],
                  ),
                  onPressed: () {
                    ref.read(cartProvider.notifier).addCart(
                        CartModel(drugModel: model, quantity: quantity.value));
                    _showMyDialog(context, model.drugName, width);
                  },
                  width: width / 1.2,
                )
              ],
            ).paddingSymmetric(vertical: 5, horizontal: 10),
          )
        ],
      ),
    );
  }

  Widget _buildCOunter(ValueNotifier notifier) {
    return Card(
      child: SizedBox(
        height: 50,
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                if (notifier.value > 1) {
                  notifier.value -= 1;
                }
              },
              child: const Icon(
                FontAwesomeIcons.minus,
                color: Colors.black,
                size: 24,
              ),
            ),
            10.width,
            Text('${notifier.value}', style: const TextStyle(fontSize: 22.0)),
            10.width,
            InkWell(
              onTap: () {
                if (notifier.value < 10) {
                  notifier.value += 1;
                }
              },
              child: const Icon(
                FontAwesomeIcons.plus,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showMyDialog(BuildContext context, String name, double width) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: Text(
            '$name has been successfully added to cart!',
            textAlign: TextAlign.center,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: Column(
                    children: [
                      const Icon(
                        FontAwesomeIcons.cartShopping,
                        color: white,
                        size: 22,
                      ),
                      10.width,
                       ColoredButton(
                          child:  Text(
                            'VIEW CART',
                            style: const TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          width: width / 2,
                          onPressed: () {
ctx.popRoute();
                            context.pushRoute(
                              CartRouter(children: [CartRoute()]));
                          }),
                      10.height,
                      SizedBox(
                        width: width / 2,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            ctx.popRoute();
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0))),
                          ),
                          child: const Text('CONTINUE SHOPPING'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
