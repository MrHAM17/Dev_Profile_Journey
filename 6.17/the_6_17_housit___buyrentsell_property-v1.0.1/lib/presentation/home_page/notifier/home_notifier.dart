import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/promotionbanner_item_model.dart';import '../models/layout27_item_model.dart';import '../models/layout28_item_model.dart';import '../models/layout29_item_model.dart';import '../models/home_item_model.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/home_page/models/home_model.dart';part 'home_state.dart';final homeNotifier = StateNotifierProvider<HomeNotifier, HomeState>((ref) => HomeNotifier(HomeState(homeModelObj: HomeModel(promotionbannerItemList: [PromotionbannerItemModel(halloweenSale: "Halloween \nSale!", offer: "All discount up to 60%"), PromotionbannerItemModel(halloweenSale: "Summer\nVacation", offer: "All discount up to 60%")], layout27ItemList: [Layout27ItemModel(image: ImageConstant.imgShape61, favorite: ImageConstant.imgFavoriteRedA200, skyDandelionsApartment: "Sky Dandelions\nApartment", text: "4.9", jakartaIndonesia: "Jakarta, Indonesia", price: " 290", month: "/month"), Layout27ItemModel(image: ImageConstant.imgShape140x126, favorite: ImageConstant.imgFavorite, skyDandelionsApartment: "Sky Dandelions\nApartment", text: "4.2 ", jakartaIndonesia: "Jakarta, Indonesia", price: " 220", month: "/month")], layout28ItemList: [Layout28ItemModel(bali: ImageConstant.imgShape40x40, bali1: "Bali"), Layout28ItemModel(bali: ImageConstant.imgShape62, bali1: "Jakarta"), Layout28ItemModel(bali: ImageConstant.imgShape63, bali1: "Yogyakarta"), Layout28ItemModel(bali: ImageConstant.imgShape64, bali1: "Semarang")], layout29ItemList: [Layout29ItemModel(amanda: ImageConstant.imgShape70x70, amanda1: "Amanda"), Layout29ItemModel(amanda: ImageConstant.imgShape65, amanda1: "Anderson"), Layout29ItemModel(amanda: ImageConstant.imgShape66, amanda1: "Samantha"), Layout29ItemModel(amanda: ImageConstant.imgShape67, amanda1: "Andrew"), Layout29ItemModel(amanda: ImageConstant.imgShape68, amanda1: "Jakarta")], homeItemList: [HomeItemModel(wingsTower: ImageConstant.imgShape160x144, favorite: ImageConstant.imgFavorite, price: " 220", month: "/month", wingsTower1: "Wings Tower", image: ImageConstant.imgSignalOrange3009x9, text: "4.9", jakartaIndonesia: ImageConstant.imgLinkedin, jakartaIndonesia1: "Jakarta, Indonesia"), HomeItemModel(wingsTower: ImageConstant.imgShape1, favorite: ImageConstant.imgFavoriteRedA200, price: " 290", month: "/month", wingsTower1: "Sky Dandelions", image: ImageConstant.imgSignalOrange3009x9, text: "4.9", jakartaIndonesia: ImageConstant.imgLinkedin, jakartaIndonesia1: "Jakarta, Indonesia"), HomeItemModel(wingsTower1: "Jakarta, Indonesia", image: ImageConstant.imgShape3)]))));
/// A notifier that manages the state of a Home according to the event that is dispatched to it.
class HomeNotifier extends StateNotifier<HomeState> {HomeNotifier(HomeState state) : super(state);

 }
