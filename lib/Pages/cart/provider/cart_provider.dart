import 'package:dex_app/data/fake_repo/fake_repository.dart';
import 'package:dex_app/data/models/cart_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider = StateNotifierProvider<CartsNotifier, List<CartModel>>(
    (ref) => CartsNotifier());
final totalProvider = StateProvider<String>((ref) {
  var finalValue = 0.0;
  List<CartModel> list = ref.watch(cartProvider);

  list.forEach((element) {
    finalValue += element.drugModel.price * element.quantity;
  });
  return finalValue.toStringAsFixed(2);
});

class CartsNotifier extends StateNotifier<List<CartModel>> {
  CartsNotifier() : super([...listCart]);

  void changeQuatity(int quantity, CartModel model) {
    state = [
      for (final todo in state)
        if (todo.drugModel.drugName == model.drugModel.drugName &&
            todo.drugModel.dosage == model.drugModel.dosage)
          CartModel(drugModel: model.drugModel, quantity: quantity)
        else
          todo,
    ];
  }

  List<CartModel> getAllCart() {
    return [...state];
  }

  void addCart(CartModel model) {
    state = [...state, model];
  }

  int totalCart() {
    return state.length;
  }

  void removeCart(CartModel model) {
    for (final todo in state) {
      if (todo.drugModel.drugName != model.drugModel.drugName &&
          todo.drugModel.imageUrl != model.drugModel.imageUrl) {
        state.add(todo);
      }
    }
  }
  // TODO add other methods, such as "removeTodo", ...
}
