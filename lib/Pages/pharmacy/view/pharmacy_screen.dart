import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:dex_app/Pages/cart/provider/cart_provider.dart';
import 'package:dex_app/Pages/pharmacy/provider/pharmary_provider.dart';

import 'package:dex_app/Router/router.gr.dart';
import 'package:dex_app/Utils/constants.dart';
import 'package:dex_app/data/fake_repo/fake_repository.dart';
import 'package:dex_app/general_widgets/category_widget.dart';
import 'package:dex_app/general_widgets/drug_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../Utils/colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PharmacyScreen extends HookConsumerWidget {
  const PharmacyScreen({Key? key}) : super(key: key);
  final Gradient gradient = const LinearGradient(
      colors: [kPrimaryStartGradientColor, kPrimaryLightColor]);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    var intTotal = ref.watch(cartProvider.notifier).totalCart();
    var newList = ref.watch(newListProvider);
    var listDrugList = ref.watch(listPharmacyProvider);

    var isSearching = useState(false);
    var textSearching = useState('');

    final _textController = useTextEditingController();

    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                pinned: true,
                snap: false,
                expandedHeight: height / 6,
                centerTitle: false,
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    gradient: kGradient,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
                shape: kSilvershape,
                title: const Text(
                  'Pharmacy',
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
                bottom: AppBar(
                  backgroundColor: transparentColor,
                  foregroundColor: transparentColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  title: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: 3),
                      ],
                    ),
                    child: Center(
                      child: TextField(
                        onChanged: (value) async {
                          textSearching.value = value;
                          //  await Future.delayed( const Duration(seconds: 1), () {});
                          ref.read(newListProvider.state).update((state) => []);
                          listDrugList.forEach((element) {
                            if (element.drugName
                                .toLowerCase()
                                .startsWith(value.toLowerCase())) {
                              ref
                                  .read(newListProvider.state)
                                  .update((state) => [...state, element]);
                            }
                          });
                        },
                        controller: _textController,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.white),
                            fillColor: Colors.white.withOpacity(0.7),
                            iconColor: Colors.white,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: 'Search',
                            prefixIcon: InkWell(
                                onTap: () {
                                  // newList = listCart as List<DrugWidget>;
                                },
                                child: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                )),
                            suffixIcon: Visibility(
                              visible: false,
                              child: InkWell(
                                  onTap: () {
                                    _textController.clear();
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  )),
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              const SliverPadding(padding: EdgeInsets.symmetric(vertical: 5)),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                      height: 20,
                      child: Row(
                        children: [
                          const Icon(
                            PhosphorIcons.map_pin,
                            color: Colors.black,
                            size: 22,
                          ),
                          5.width,
                          RichText(
                            text: const TextSpan(
                              // Note: Styles for TextSpans must be explicitly defined.
                              // Child text spans will inherit styles from parent
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Delivery in ',
                                    style:
                                        TextStyle(color: kUnselectedTabColor)),
                                TextSpan(
                                    text: 'Lagos, NG',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ],
                      )),
                ]),
              ),
              if (textSearching.value.trim().isEmpty)
                SliverList(
                  delegate: SliverChildListDelegate([
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'CATEGORIES',
                          style: TextStyle(
                              color: kUnselectedTabColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                        InkWell(
                          onTap: () {
                            // context.replaceRoute(CategoryRoute());
                            context.pushRoute(
                                CategoryRouter(children: [CategoryRoute()]));
                          },
                          child: const Text(
                            'VIEW ALL',
                            style: TextStyle(
                                color: kPrimaryLightColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ).paddingAll(15),
                  ]),
                ),
              if (textSearching.value.trim().isEmpty)
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
              if (textSearching.value.trim().isEmpty)
                SliverList(
                  delegate: SliverChildListDelegate([
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'SUGGESTIONS',
                          style: TextStyle(
                              color: kUnselectedTabColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ).paddingAll(15),
                  ]),
                ),
              if (textSearching.value.trim().isEmpty)
                SliverList(
                  delegate: SliverChildListDelegate([
                    StaggeredGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      children: [
                        ...listDrugList
                            .map((e) => InkWell(
                                onTap: () => context.pushRoute(DetailRouter(
                                    children: [DetailRoute(model: e)])),
                                child: DrugWidget(
                                    post: e, isSearching: isSearching)))
                            .toList(),
                      ],
                    )
                  ]),
                ),
              if (textSearching.value.trim().isNotEmpty && newList.isNotEmpty)
                SliverList(
                  delegate: SliverChildListDelegate([
                    StaggeredGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 5.0,
                      children: [
                        ...newList
                            .map((e) => InkWell(
                                onTap: () => context.pushRoute(DetailRouter(
                                    children: [DetailRoute(model: e)])),
                                child: DrugWidget(
                                    post: e, isSearching: isSearching)))
                            .toList(),
                      ],
                    )
                  ]),
                ),
              if (textSearching.value.trim().isNotEmpty && newList.isEmpty)
                SliverList(
                  delegate: SliverChildListDelegate([
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Image(
                          width: 200,
                          height: 200,
                          image: AssetImage('assets/images/error.png'),
                          fit: BoxFit.cover,
                        ),
                        Text(
                          'No result found for ${textSearching.value}',
                          style: TextStyle(
                              color: kUnselectedTabColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ).paddingAll(15),
                  ]),
                ),
              if (textSearching.value.trim().isEmpty)
                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverToBoxAdapter(
                    child: Container(
                      width: width / 2,
                      height: height / 5,
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
          Positioned(
            bottom: 5,
            right: 0,
            child: MaterialButton(
              onPressed: () => {
                context.pushRoute(CartRouter(children: [CartRoute()]))
              },

              /* Badge(
      badgeContent: Text('3'),
      child: Icon(Icons.settings),
    ) */
              child: textSearching.value.trim().isEmpty
                  ? Container(
                      decoration: kDownGradientColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              'Checkout',
                              style: TextStyle(color: white),
                            ),
                            5.width,
                            const Icon(
                              FontAwesomeIcons.cartShopping,
                              color: white,
                              size: 22,
                            ),
                            5.width,
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                                shape: BoxShape.circle,
                              ),
                              child: Text('$intTotal'),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      decoration: kDownGradientColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Badge(
                          position: BadgePosition.topEnd(top: -12, end: -20),
                          badgeColor: Colors.yellow,
                          badgeContent: Text(
                            '$intTotal',
                            style: const TextStyle(color: Colors.black),
                          ),
                          child: Icon(
                            color: Colors.white,
                            size: 22,
                            FontAwesomeIcons.cartShopping,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
