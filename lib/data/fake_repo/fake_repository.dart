import 'package:dex_app/data/models/cart_model.dart';
import 'package:dex_app/data/models/category_model.dart';
import 'package:dex_app/data/models/drug_model.dart';

List<DrugModel> listDrug = const [
  DrugModel(
      imageUrl: 'parace500.webp',
      drugName: 'Paracetamol',
      dosage: '500mg',
      price: 350.00,
      requiresPrescription: false),
  DrugModel(
      imageUrl: 'doliprane1.jpg',
      drugName: 'Doliplane',
      dosage: '1000mg',
      price: 350.00,
      requiresPrescription: true),
  DrugModel(
      imageUrl: 'paracetamol500.webp',
      drugName: 'Paracetamol',
      dosage: '500mg',
      price: 350.00,
      requiresPrescription: false),
  DrugModel(
      imageUrl: 'ibuprufen200.webp',
      drugName: 'Ibruprofen',
      dosage: '500mg',
      price: 350.00,
      requiresPrescription: true),
  DrugModel(
      imageUrl: 'panadol.webp',
      drugName: 'Panadol',
      dosage: '500mg',
      price: 350.00,
      requiresPrescription: false),
  DrugModel(
      imageUrl: 'ibuprufen400.webp',
      drugName: 'Ibruprofen',
      dosage: '400mg',
      price: 350.00,
      requiresPrescription: false),
];

List<CategoryModel> listCategories = const [
  CategoryModel(
    imageUrl: 'headache.webp',
    name: 'Headache',
  ),
  CategoryModel(
    imageUrl: 'infant.webp',
    name: 'Infants',
  ),
  CategoryModel(
    imageUrl: 'surplement.jpeg',
    name: 'Supplements',
  ),
  CategoryModel(
    imageUrl: 'cough.webp',
    name: 'Cough',
  )
];

List<DrugModel> similarDrug = const [
  DrugModel(
      imageUrl: 'parace500.webp',
      drugName: 'Paracetamol',
      dosage: '500mg',
      price: 350.00,
      requiresPrescription: false),
  DrugModel(
      imageUrl: 'doliprane1.jpg',
      drugName: 'Doliplane',
      dosage: '1000mg',
      price: 350.00,
      requiresPrescription: true),
  DrugModel(
      imageUrl: 'paracetamol500.webp',
      drugName: 'Paracetamol',
      dosage: '500mg',
      price: 350.00,
      requiresPrescription: false),
];


 List<CartModel> listCart =  [

CartModel(drugModel:const DrugModel(
      imageUrl: 'parace500.webp',
      drugName: 'Paracetamol',
      dosage: '500mg',
      price: 350.00,
      requiresPrescription: false), quantity: 1),

      CartModel(drugModel:  DrugModel(
      imageUrl: 'doliprane1.jpg',
      drugName: 'Doliplane',
      dosage: '1000mg',
      price: 350.00,
      requiresPrescription: true), quantity: 3)

  
];
