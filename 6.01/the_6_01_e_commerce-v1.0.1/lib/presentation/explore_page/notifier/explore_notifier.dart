import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/categories_item_model.dart';import '../models/categories1_item_model.dart';import 'package:the_6_01_e_commerce/presentation/explore_page/models/explore_model.dart';part 'explore_state.dart';final exploreNotifier = StateNotifierProvider<ExploreNotifier, ExploreState>((ref) => ExploreNotifier(ExploreState(searchController: TextEditingController(), exploreModelObj: ExploreModel(categoriesItemList: [CategoriesItemModel(manWorkEquipment: ImageConstant.imgManWorkEquipment, officeBag: "Office Bag"), CategoriesItemModel(manWorkEquipment: ImageConstant.imgArrowRight, officeBag: "Shirt"), CategoriesItemModel(manWorkEquipment: ImageConstant.imgManTShirtIcon, officeBag: "T-Shirt"), CategoriesItemModel(manWorkEquipment: ImageConstant.imgManShoesIcon, officeBag: "Shoes"), CategoriesItemModel(manWorkEquipment: ImageConstant.imgManPantsIcon, officeBag: "Pants"), CategoriesItemModel(manWorkEquipment: ImageConstant.imgManUnderwearIcon, officeBag: "Underwear")], categories1ItemList: [Categories1ItemModel(womanTShirtIcon: ImageConstant.imgWomanTShirtIcon, tShirt: "T-Shirt"), Categories1ItemModel(womanTShirtIcon: ImageConstant.imgDressIcon, tShirt: "Dress"), Categories1ItemModel(womanTShirtIcon: ImageConstant.imgWomanPantsIcon, tShirt: "Pants"), Categories1ItemModel(womanTShirtIcon: ImageConstant.imgSkirtIcon, tShirt: "Skirt"), Categories1ItemModel(womanTShirtIcon: ImageConstant.imgWomanBagIcon, tShirt: "Bag"), Categories1ItemModel(womanTShirtIcon: ImageConstant.imgHighHeelsIcon, tShirt: "Heels"), Categories1ItemModel(womanTShirtIcon: ImageConstant.imgBikiniIcon, tShirt: "Bikini")]))));
/// A notifier that manages the state of a Explore according to the event that is dispatched to it.
class ExploreNotifier extends StateNotifier<ExploreState> {ExploreNotifier(ExploreState state) : super(state);

 }
