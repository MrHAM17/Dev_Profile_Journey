import '../filter_page/widgets/buyingformate_item_widget.dart';import '../filter_page/widgets/itemlocation_item_widget.dart';import '../filter_page/widgets/showonly_item_widget.dart';import 'models/buyingformate_item_model.dart';import 'models/itemlocation_item_model.dart';import 'models/showonly_item_model.dart';import 'notifier/filter_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_01_e_commerce/core/app_export.dart';import 'package:the_6_01_e_commerce/widgets/custom_elevated_button.dart';class FilterPage extends ConsumerStatefulWidget {const FilterPage({Key? key}) : super(key: key);

@override FilterPageState createState() =>  FilterPageState();

 }
class FilterPageState extends ConsumerState<FilterPage> with  AutomaticKeepAliveClientMixin<FilterPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 24.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [_buildBuyingFormat(context), SizedBox(height: 23.v), _buildItemLocation(context), SizedBox(height: 25.v), _buildShowOnly(context), SizedBox(height: 28.v), CustomElevatedButton(text: "lbl_apply".tr, onPressed: () {onTapApply(context);})]))]))))); } 
/// Section Widget
Widget _buildBuyingFormat(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_buying_format".tr, style: theme.textTheme.titleSmall), SizedBox(height: 11.v), Consumer(builder: (context, ref, _) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(ref.watch(filterNotifier).filterModelObj?.buyingformateItemList.length ?? 0, (index) {BuyingformateItemModel model = ref.watch(filterNotifier).filterModelObj?.buyingformateItemList[index] ?? BuyingformateItemModel(); return BuyingformateItemWidget(model, onSelectedChipView1: (value) {ref.read(filterNotifier.notifier).onSelectedChipView1(index, value);});}));})]); } 
/// Section Widget
Widget _buildItemLocation(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_item_location".tr, style: theme.textTheme.titleSmall), SizedBox(height: 13.v), Consumer(builder: (context, ref, _) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(ref.watch(filterNotifier).filterModelObj?.itemlocationItemList.length ?? 0, (index) {ItemlocationItemModel model = ref.watch(filterNotifier).filterModelObj?.itemlocationItemList[index] ?? ItemlocationItemModel(); return ItemlocationItemWidget(model, onSelectedChipView2: (value) {ref.read(filterNotifier.notifier).onSelectedChipView2(index, value);});}));})]); } 
/// Section Widget
Widget _buildShowOnly(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_show_only".tr, style: theme.textTheme.titleSmall), SizedBox(height: 10.v), Consumer(builder: (context, ref, _) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(ref.watch(filterNotifier).filterModelObj?.showonlyItemList.length ?? 0, (index) {ShowonlyItemModel model = ref.watch(filterNotifier).filterModelObj?.showonlyItemList[index] ?? ShowonlyItemModel(); return ShowonlyItemWidget(model, onSelectedChipView3: (value) {ref.read(filterNotifier.notifier).onSelectedChipView3(index, value);});}));})]); } 
/// Navigates to the searchResultScreen when the action is triggered.
onTapApply(BuildContext context) { NavigatorService.pushNamed(AppRoutes.searchResultScreen, ); } 
 }
