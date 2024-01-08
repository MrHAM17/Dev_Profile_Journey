import 'models/add_new_property_address_model.dart';import 'notifier/add_new_property_address_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/core/utils/validation_functions.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/appbar_subtitle_two.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/custom_drop_down.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/custom_elevated_button.dart';import 'package:the_6_21_vertex___real_estate_app/widgets/custom_text_form_field.dart';class AddNewPropertyAddressScreen extends ConsumerStatefulWidget {const AddNewPropertyAddressScreen({Key? key}) : super(key: key);

@override AddNewPropertyAddressScreenState createState() =>  AddNewPropertyAddressScreenState();

 }

// ignore_for_file: must_be_immutable
class AddNewPropertyAddressScreenState extends ConsumerState<AddNewPropertyAddressScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.all(24.h), child: Column(children: [_buildAddressAndProgress(context), SizedBox(height: 16.v), Container(height: 6.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray300, borderRadius: BorderRadius.circular(3.h)), child: ClipRRect(borderRadius: BorderRadius.circular(3.h), child: LinearProgressIndicator(value: 0.12, backgroundColor: appTheme.gray300, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))), SizedBox(height: 26.v), Align(alignment: Alignment.centerLeft, child: Text("msg_property_address".tr, style: CustomTextStyles.titleMediumBold_1)), SizedBox(height: 13.v), _buildAddress(context), SizedBox(height: 12.v), _buildInputFields(context), SizedBox(height: 12.v), _buildName(context), SizedBox(height: 12.v), Consumer(builder: (context, ref, _) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 14.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownPrimarycontainer, height: 20.adaptSize, width: 20.adaptSize)), hintText: "lbl_select".tr, hintStyle: CustomTextStyles.titleSmallBluegray500Medium, items: ref.watch(addNewPropertyAddressNotifier).addNewPropertyAddressModelObj?.dropdownItemList ?? [], borderDecoration: DropDownStyleHelper.fillGray, fillColor: appTheme.gray300, onChanged: (value) {ref.watch(addNewPropertyAddressNotifier).selectedDropDownValue = value;});}), SizedBox(height: 12.v), _buildZipcode(context), SizedBox(height: 5.v)]))))), bottomNavigationBar: _buildBTN(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeftPrimarycontainer, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleTwo(text: "msg_add_new_property".tr), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildOneHundredEight(BuildContext context) { return CustomElevatedButton(height: 33.v, width: 76.h, text: "lbl_01_08".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallWhiteA700); } 
/// Section Widget
Widget _buildAddressAndProgress(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 7.v, bottom: 5.v), child: Text("lbl_address".tr, style: theme.textTheme.titleSmall)), _buildOneHundredEight(context)]); } 
/// Section Widget
Widget _buildAddress(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(addNewPropertyAddressNotifier).addressController, hintText: "lbl_street_address".tr);}); } 
/// Section Widget
Widget _buildInputFields(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(addNewPropertyAddressNotifier).inputFieldsController, hintText: "lbl_unit_number".tr, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});}); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(addNewPropertyAddressNotifier).nameController, hintText: "lbl_city_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildZipcode(BuildContext context) { return Consumer(builder: (context, ref, _) {return CustomTextFormField(controller: ref.watch(addNewPropertyAddressNotifier).zipcodeController, hintText: "lbl_zip_code".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.number, validator: (value) {if (!isNumeric(value)) {return "err_msg_please_enter_valid_number".tr;} return null;});}); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext(context);}); } 
/// Section Widget
Widget _buildBTN(BuildContext context) { return Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 24.v), decoration: AppDecoration.outlineBlueGrayF, child: _buildNext(context)); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the addNewPropertyMeetWithAAgentScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addNewPropertyMeetWithAAgentScreen, ); } 
 }
