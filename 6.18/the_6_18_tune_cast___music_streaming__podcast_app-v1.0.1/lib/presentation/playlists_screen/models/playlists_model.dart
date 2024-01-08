// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'playlists_item_model.dart';/// This class defines the variables used in the [playlists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistsModel extends Equatable {PlaylistsModel({this.playlistsItemList = const []}) {  }

List<PlaylistsItemModel> playlistsItemList;

PlaylistsModel copyWith({List<PlaylistsItemModel>? playlistsItemList}) { return PlaylistsModel(
playlistsItemList : playlistsItemList ?? this.playlistsItemList,
); } 
@override List<Object?> get props => [playlistsItemList];
 }
