import 'package:dex_app/Utils/colors.dart';
import 'package:dex_app/data/models/category_model.dart';
import 'package:dex_app/data/models/drug_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

class DrugWidget extends StatelessWidget {
  final DrugModel post;

  // ignore: use_key_in_widget_constructors
  const DrugWidget({required this.post, required this.isSearching});
  final ValueNotifier isSearching;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    width: double.infinity,
                    height: 120,
                    image: AssetImage('assets/images/${post.imageUrl}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              post.requiresPrescription
                  ? Column(
                      children: [
                        Container(
                          height: 95,
                        ),
                        Container(
                          height: 25,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text(
                            'Requires a prescription',
                            style: TextStyle(color: Colors.white),
                          ),
                          color: Colors.black45,
                        ),
                      ],
                    )
                  : Container()
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    post.drugName,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              5.height,
              Row(children: [
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
                      shape: BoxShape.circle, color: kUnselectedTabColor),
                  width: 5 / 2,
                  height: 5 / 2,
                ),
                5.width,
                Text(
                  post.dosage,
                  style: const TextStyle(
                      fontSize: 14.0, color: kUnselectedTabColor),
                  overflow: TextOverflow.ellipsis,
                ),
              ]),
              5.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₦${post.price}',
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  isSearching.value
                      ? Container(
                          height: 45,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 237, 234, 239),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                PhosphorIcons.heart,
                                size: 40,
                                color: kAppPrimaryColor,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
              isSearching.value
                  ? OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          fixedSize: const Size(double.infinity, 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          side: const BorderSide(
                            color: kAppPrimaryColor,
                          )),
                      onPressed: () {},
                      child: const Text(
                        'ADD TO CART',
                        style: TextStyle(
                            color: kAppPrimaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                      ))
                  : Container(),
            ],
          ).paddingAll(5),
        ],
      ),
    );
  }
}
