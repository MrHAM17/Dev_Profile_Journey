import '../../../core/app_export.dart';

/// This class is used in the [stories_item_widget] screen.
class StoriesItemModel {
  StoriesItemModel({
    this.home,
    this.easyToUse,
    this.duration,
    this.time,
    this.id,
  }) {
    home = home ?? "LOGO";
    easyToUse = easyToUse ?? "Lorem Ipsum dolor set amet";
    duration = duration ?? "16 days ago";
    time = time ?? "3 min read";
    id = id ?? "";
  }

  String? home;

  String? easyToUse;

  String? duration;

  String? time;

  String? id;
}
