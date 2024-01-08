import '../playlists_screen/widgets/playlists_item_widget.dart';import 'models/playlists_item_model.dart';import 'notifier/playlists_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/widgets/app_bar/custom_app_bar.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/new_playlist_bottomsheet/new_playlist_bottomsheet.dart';class PlaylistsScreen extends ConsumerStatefulWidget {const PlaylistsScreen({Key? key}) : super(key: key);

@override PlaylistsScreenState createState() =>  PlaylistsScreenState();

 }
class PlaylistsScreenState extends ConsumerState<PlaylistsScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 28.v), child: Column(children: [_buildSortBy(context), SizedBox(height: 22.v), Divider(), SizedBox(height: 23.v), _buildPlaylists(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 53.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 14.v)), title: AppbarTitle(text: "lbl_playlists".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 14.h)), AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 38.h))]); } 
/// Section Widget
Widget _buildSortBy(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_sort_by".tr, style: theme.textTheme.titleLarge), Spacer(), Text("lbl_recently_added".tr, style: CustomTextStyles.titleMediumOnPrimaryContainer16), CustomImageView(imagePath: ImageConstant.imgIconlyCurvedSwap, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 12.h, bottom: 4.v))]); } 
/// Section Widget
Widget _buildPlaylists(BuildContext context) { return Consumer(builder: (context, ref, _) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 24.v);}, itemCount: ref.watch(playlistsNotifier).playlistsModelObj?.playlistsItemList.length ?? 0, itemBuilder: (context, index) {PlaylistsItemModel model = ref.watch(playlistsNotifier).playlistsModelObj?.playlistsItemList[index] ?? PlaylistsItemModel(); return PlaylistsItemWidget(model, onTapTypeListThemeLight: () {onTapTypeListThemeLight(context);});});}); } 
/// Shows a modal bottom sheet with [NewPlaylistBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapTypeListThemeLight(BuildContext context) { showModalBottomSheet(context: context, builder: (_) => NewPlaylistBottomsheet(), isScrollControlled: true); } 
 }
