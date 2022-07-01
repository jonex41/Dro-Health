import 'dart:ui';

import 'package:dex_app/Pages/cart/provider/cart_provider.dart';
import 'package:dex_app/Utils/colors.dart';
import 'package:dex_app/data/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

class CartWidget extends HookWidget {
  const CartWidget({
    Key? key,
    required this.model,
    required this.ref,
  }) : super(key: key);
  final CartModel model;
  final WidgetRef ref;
  @override
  Widget build(BuildContext context) {
    var valuechange = useState(model.quantity);
    return ListTile(
      leading: Image(
        width: 50,
        height: 100,
        image: AssetImage('assets/images/${model.drugModel.imageUrl}'),
        fit: BoxFit.cover,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.drugModel.drugName,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          3.height,
          Row(children: [
            const Text(
              'Tablet',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 14.0,
                  color: kUnselectedTabColor,
                  fontWeight: FontWeight.w400),
              overflow: TextOverflow.ellipsis,
            ),
            5.width,
            Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: kUnselectedTabColor),
              width: 5 / 2,
              height: 5 / 2,
            ),
            5.width,
            Text(
              model.drugModel.dosage,
              style:
                  const TextStyle(fontSize: 14.0, color: kUnselectedTabColor),
              overflow: TextOverflow.ellipsis,
            ),
          ]),
        ],
      ),
      subtitle: Row(
        children: [
          3.height,
          Text(
            '₦${model.drugModel.price}',
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /*  Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
                color: Colors.red, style: BorderStyle.solid, width: 0.80),
          ), */
          Container(
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                  color: kAppPrimaryColor,
                  style: BorderStyle.solid,
                  width: 0.80),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: DropdownButton<int>(
                icon: const Icon(
                  FontAwesomeIcons.angleDown,
                  size: 14,
                ),
                underline: Container(),
                hint: Text('${valuechange.value}'),
                items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(
                      '$value',
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  valuechange.value = value!;
                  ref.read(cartProvider.notifier).changeQuatity(value, model);
                },
              ),
            ),
          ),
          5.height,
          InkWell(
            onTap: (){
              ref.read(cartProvider.notifier).removeCart(model);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  FontAwesomeIcons.trashCan,
                  color: kAppPrimaryColor,
                  size: 18,
                ),
                5.width,
                const Text(
                  'Remove',
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 12,
                      color: kAppPrimaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
