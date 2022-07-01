
import 'package:dex_app/data/fake_repo/fake_repository.dart';
import 'package:dex_app/data/models/drug_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/models/cart_model.dart';

final newListProvider = StateProvider< List<DrugModel>>(
    (ref) => []);

    final listPharmacyProvider = StateProvider< List<DrugModel>>(
    (ref) => listDrug);