import 'dart:ffi';

import 'package:billa/core/utils/app_images.dart';

class FoodModel{
  String images;
  String foodName;
  final double price;
  bool fav;
  FoodModel(
      {
  required this.images,
  required this.foodName,
  required this.price,
        this.fav=false
      }
      );
}

List <FoodModel> foods=[
  FoodModel(
      images: AppImages.beafBurger,
      foodName: "beafBurger",
      price: 7.5,

  ),
  FoodModel(
      images: AppImages.crispyZenger,
      foodName: "crispyZenger",
      price: 5.5

  ),
  FoodModel(
      images: AppImages.meatShawerma,
      foodName: "meatShawerma",
      price: 6.5
  ),
  FoodModel(
      images: AppImages.pizza,
      foodName: "pizza",
      price: 4.5
  ),

  FoodModel(
      images: AppImages.beafBurger,
      foodName: "beafBurger",
      price: 7.5
  ),
  FoodModel(
      images: AppImages.crispyZenger,
      foodName: "crispyZenger",
      price: 5.5

  ),
  FoodModel(
      images: AppImages.meatShawerma,
      foodName: "meatShawerma",
      price: 6.5
  ),
] ;