// To parse this JSON data, do
//
//     final modelGifs = modelGifsFromJson(jsonString);

import 'dart:convert';

class ModelGifs {
  ModelGifs({
    this.data,
    this.pagination,
    this.meta,
  });

  final List<Datum> data;
  final Pagination pagination;
  final Meta meta;

  factory ModelGifs.fromRawJson(String str) =>
      ModelGifs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelGifs.fromJson(Map<String, dynamic> json) => ModelGifs(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "pagination": pagination == null ? null : pagination.toJson(),
        "meta": meta == null ? null : meta.toJson(),
      };
}

class Datum {
  Datum({
    this.type,
    this.id,
    this.url,
    this.slug,
    this.bitlyGifUrl,
    this.bitlyUrl,
    this.embedUrl,
    this.username,
    this.source,
    this.title,
    this.rating,
    this.contentUrl,
    this.sourceTld,
    this.sourcePostUrl,
    this.isSticker,
    this.importDatetime,
    this.trendingDatetime,
    this.images,
    this.user,
    this.analyticsResponsePayload,
    this.analytics,
  });

  final Type type;
  final String id;
  final String url;
  final String slug;
  final String bitlyGifUrl;
  final String bitlyUrl;
  final String embedUrl;
  final String username;
  final String source;
  final String title;
  final Rating rating;
  final String contentUrl;
  final String sourceTld;
  final String sourcePostUrl;
  final int isSticker;
  final DateTime importDatetime;
  final DateTime trendingDatetime;
  final Images images;
  final User user;
  final String analyticsResponsePayload;
  final Analytics analytics;

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        id: json["id"] == null ? null : json["id"],
        url: json["url"] == null ? null : json["url"],
        slug: json["slug"] == null ? null : json["slug"],
        bitlyGifUrl:
            json["bitly_gif_url"] == null ? null : json["bitly_gif_url"],
        bitlyUrl: json["bitly_url"] == null ? null : json["bitly_url"],
        embedUrl: json["embed_url"] == null ? null : json["embed_url"],
        username: json["username"] == null ? null : json["username"],
        source: json["source"] == null ? null : json["source"],
        title: json["title"] == null ? null : json["title"],
        rating:
            json["rating"] == null ? null : ratingValues.map[json["rating"]],
        contentUrl: json["content_url"] == null ? null : json["content_url"],
        sourceTld: json["source_tld"] == null ? null : json["source_tld"],
        sourcePostUrl:
            json["source_post_url"] == null ? null : json["source_post_url"],
        isSticker: json["is_sticker"] == null ? null : json["is_sticker"],
        importDatetime: json["import_datetime"] == null
            ? null
            : DateTime.parse(json["import_datetime"]),
        trendingDatetime: json["trending_datetime"] == null
            ? null
            : DateTime.parse(json["trending_datetime"]),
        images: json["images"] == null ? null : Images.fromJson(json["images"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        analyticsResponsePayload: json["analytics_response_payload"] == null
            ? null
            : json["analytics_response_payload"],
        analytics: json["analytics"] == null
            ? null
            : Analytics.fromJson(json["analytics"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : typeValues.reverse[type],
        "id": id == null ? null : id,
        "url": url == null ? null : url,
        "slug": slug == null ? null : slug,
        "bitly_gif_url": bitlyGifUrl == null ? null : bitlyGifUrl,
        "bitly_url": bitlyUrl == null ? null : bitlyUrl,
        "embed_url": embedUrl == null ? null : embedUrl,
        "username": username == null ? null : username,
        "source": source == null ? null : source,
        "title": title == null ? null : title,
        "rating": rating == null ? null : ratingValues.reverse[rating],
        "content_url": contentUrl == null ? null : contentUrl,
        "source_tld": sourceTld == null ? null : sourceTld,
        "source_post_url": sourcePostUrl == null ? null : sourcePostUrl,
        "is_sticker": isSticker == null ? null : isSticker,
        "import_datetime":
            importDatetime == null ? null : importDatetime.toIso8601String(),
        "trending_datetime": trendingDatetime == null
            ? null
            : trendingDatetime.toIso8601String(),
        "images": images == null ? null : images.toJson(),
        "user": user == null ? null : user.toJson(),
        "analytics_response_payload":
            analyticsResponsePayload == null ? null : analyticsResponsePayload,
        "analytics": analytics == null ? null : analytics.toJson(),
      };
}

class Analytics {
  Analytics({
    this.onload,
    this.onclick,
    this.onsent,
  });

  final Onclick onload;
  final Onclick onclick;
  final Onclick onsent;

  factory Analytics.fromRawJson(String str) =>
      Analytics.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Analytics.fromJson(Map<String, dynamic> json) => Analytics(
        onload:
            json["onload"] == null ? null : Onclick.fromJson(json["onload"]),
        onclick:
            json["onclick"] == null ? null : Onclick.fromJson(json["onclick"]),
        onsent:
            json["onsent"] == null ? null : Onclick.fromJson(json["onsent"]),
      );

  Map<String, dynamic> toJson() => {
        "onload": onload == null ? null : onload.toJson(),
        "onclick": onclick == null ? null : onclick.toJson(),
        "onsent": onsent == null ? null : onsent.toJson(),
      };
}

class Onclick {
  Onclick({
    this.url,
  });

  final String url;

  factory Onclick.fromRawJson(String str) => Onclick.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Onclick.fromJson(Map<String, dynamic> json) => Onclick(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
      };
}

class Images {
  Images({
    this.downsizedLarge,
    this.fixedHeightSmallStill,
    this.original,
    this.fixedHeightDownsampled,
    this.downsizedStill,
    this.fixedHeightStill,
    this.downsizedMedium,
    this.downsized,
    this.previewWebp,
    this.originalMp4,
    this.fixedHeightSmall,
    this.fixedHeight,
    this.downsizedSmall,
    this.preview,
    this.fixedWidthDownsampled,
    this.fixedWidthSmallStill,
    this.fixedWidthSmall,
    this.originalStill,
    this.fixedWidthStill,
    this.looping,
    this.fixedWidth,
    this.previewGif,
    this.the480WStill,
    this.hd,
    this.the4K,
  });

  final The480WStill downsizedLarge;
  final The480WStill fixedHeightSmallStill;
  final FixedHeight original;
  final FixedHeight fixedHeightDownsampled;
  final The480WStill downsizedStill;
  final The480WStill fixedHeightStill;
  final The480WStill downsizedMedium;
  final The480WStill downsized;
  final The480WStill previewWebp;
  final The4K originalMp4;
  final FixedHeight fixedHeightSmall;
  final FixedHeight fixedHeight;
  final The4K downsizedSmall;
  final The4K preview;
  final FixedHeight fixedWidthDownsampled;
  final The480WStill fixedWidthSmallStill;
  final FixedHeight fixedWidthSmall;
  final The480WStill originalStill;
  final The480WStill fixedWidthStill;
  final Looping looping;
  final FixedHeight fixedWidth;
  final The480WStill previewGif;
  final The480WStill the480WStill;
  final The4K hd;
  final The4K the4K;

  factory Images.fromRawJson(String str) => Images.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        downsizedLarge: json["downsized_large"] == null
            ? null
            : The480WStill.fromJson(json["downsized_large"]),
        fixedHeightSmallStill: json["fixed_height_small_still"] == null
            ? null
            : The480WStill.fromJson(json["fixed_height_small_still"]),
        original: json["original"] == null
            ? null
            : FixedHeight.fromJson(json["original"]),
        fixedHeightDownsampled: json["fixed_height_downsampled"] == null
            ? null
            : FixedHeight.fromJson(json["fixed_height_downsampled"]),
        downsizedStill: json["downsized_still"] == null
            ? null
            : The480WStill.fromJson(json["downsized_still"]),
        fixedHeightStill: json["fixed_height_still"] == null
            ? null
            : The480WStill.fromJson(json["fixed_height_still"]),
        downsizedMedium: json["downsized_medium"] == null
            ? null
            : The480WStill.fromJson(json["downsized_medium"]),
        downsized: json["downsized"] == null
            ? null
            : The480WStill.fromJson(json["downsized"]),
        previewWebp: json["preview_webp"] == null
            ? null
            : The480WStill.fromJson(json["preview_webp"]),
        originalMp4: json["original_mp4"] == null
            ? null
            : The4K.fromJson(json["original_mp4"]),
        fixedHeightSmall: json["fixed_height_small"] == null
            ? null
            : FixedHeight.fromJson(json["fixed_height_small"]),
        fixedHeight: json["fixed_height"] == null
            ? null
            : FixedHeight.fromJson(json["fixed_height"]),
        downsizedSmall: json["downsized_small"] == null
            ? null
            : The4K.fromJson(json["downsized_small"]),
        preview:
            json["preview"] == null ? null : The4K.fromJson(json["preview"]),
        fixedWidthDownsampled: json["fixed_width_downsampled"] == null
            ? null
            : FixedHeight.fromJson(json["fixed_width_downsampled"]),
        fixedWidthSmallStill: json["fixed_width_small_still"] == null
            ? null
            : The480WStill.fromJson(json["fixed_width_small_still"]),
        fixedWidthSmall: json["fixed_width_small"] == null
            ? null
            : FixedHeight.fromJson(json["fixed_width_small"]),
        originalStill: json["original_still"] == null
            ? null
            : The480WStill.fromJson(json["original_still"]),
        fixedWidthStill: json["fixed_width_still"] == null
            ? null
            : The480WStill.fromJson(json["fixed_width_still"]),
        looping:
            json["looping"] == null ? null : Looping.fromJson(json["looping"]),
        fixedWidth: json["fixed_width"] == null
            ? null
            : FixedHeight.fromJson(json["fixed_width"]),
        previewGif: json["preview_gif"] == null
            ? null
            : The480WStill.fromJson(json["preview_gif"]),
        the480WStill: json["480w_still"] == null
            ? null
            : The480WStill.fromJson(json["480w_still"]),
        hd: json["hd"] == null ? null : The4K.fromJson(json["hd"]),
        the4K: json["4k"] == null ? null : The4K.fromJson(json["4k"]),
      );

  Map<String, dynamic> toJson() => {
        "downsized_large":
            downsizedLarge == null ? null : downsizedLarge.toJson(),
        "fixed_height_small_still": fixedHeightSmallStill == null
            ? null
            : fixedHeightSmallStill.toJson(),
        "original": original == null ? null : original.toJson(),
        "fixed_height_downsampled": fixedHeightDownsampled == null
            ? null
            : fixedHeightDownsampled.toJson(),
        "downsized_still":
            downsizedStill == null ? null : downsizedStill.toJson(),
        "fixed_height_still":
            fixedHeightStill == null ? null : fixedHeightStill.toJson(),
        "downsized_medium":
            downsizedMedium == null ? null : downsizedMedium.toJson(),
        "downsized": downsized == null ? null : downsized.toJson(),
        "preview_webp": previewWebp == null ? null : previewWebp.toJson(),
        "original_mp4": originalMp4 == null ? null : originalMp4.toJson(),
        "fixed_height_small":
            fixedHeightSmall == null ? null : fixedHeightSmall.toJson(),
        "fixed_height": fixedHeight == null ? null : fixedHeight.toJson(),
        "downsized_small":
            downsizedSmall == null ? null : downsizedSmall.toJson(),
        "preview": preview == null ? null : preview.toJson(),
        "fixed_width_downsampled": fixedWidthDownsampled == null
            ? null
            : fixedWidthDownsampled.toJson(),
        "fixed_width_small_still":
            fixedWidthSmallStill == null ? null : fixedWidthSmallStill.toJson(),
        "fixed_width_small":
            fixedWidthSmall == null ? null : fixedWidthSmall.toJson(),
        "original_still": originalStill == null ? null : originalStill.toJson(),
        "fixed_width_still":
            fixedWidthStill == null ? null : fixedWidthStill.toJson(),
        "looping": looping == null ? null : looping.toJson(),
        "fixed_width": fixedWidth == null ? null : fixedWidth.toJson(),
        "preview_gif": previewGif == null ? null : previewGif.toJson(),
        "480w_still": the480WStill == null ? null : the480WStill.toJson(),
        "hd": hd == null ? null : hd.toJson(),
        "4k": the4K == null ? null : the4K.toJson(),
      };
}

class The480WStill {
  The480WStill({
    this.url,
    this.width,
    this.height,
    this.size,
  });

  final String url;
  final String width;
  final String height;
  final String size;

  factory The480WStill.fromRawJson(String str) =>
      The480WStill.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory The480WStill.fromJson(Map<String, dynamic> json) => The480WStill(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        size: json["size"] == null ? null : json["size"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "size": size == null ? null : size,
      };
}

class The4K {
  The4K({
    this.height,
    this.mp4,
    this.mp4Size,
    this.width,
  });

  final String height;
  final String mp4;
  final String mp4Size;
  final String width;

  factory The4K.fromRawJson(String str) => The4K.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory The4K.fromJson(Map<String, dynamic> json) => The4K(
        height: json["height"] == null ? null : json["height"],
        mp4: json["mp4"] == null ? null : json["mp4"],
        mp4Size: json["mp4_size"] == null ? null : json["mp4_size"],
        width: json["width"] == null ? null : json["width"],
      );

  Map<String, dynamic> toJson() => {
        "height": height == null ? null : height,
        "mp4": mp4 == null ? null : mp4,
        "mp4_size": mp4Size == null ? null : mp4Size,
        "width": width == null ? null : width,
      };
}

class FixedHeight {
  FixedHeight({
    this.height,
    this.mp4,
    this.mp4Size,
    this.size,
    this.url,
    this.webp,
    this.webpSize,
    this.width,
    this.frames,
    this.hash,
  });

  final String height;
  final String mp4;
  final String mp4Size;
  final String size;
  final String url;
  final String webp;
  final String webpSize;
  final String width;
  final String frames;
  final String hash;

  factory FixedHeight.fromRawJson(String str) =>
      FixedHeight.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FixedHeight.fromJson(Map<String, dynamic> json) => FixedHeight(
        height: json["height"] == null ? null : json["height"],
        mp4: json["mp4"] == null ? null : json["mp4"],
        mp4Size: json["mp4_size"] == null ? null : json["mp4_size"],
        size: json["size"] == null ? null : json["size"],
        url: json["url"] == null ? null : json["url"],
        webp: json["webp"] == null ? null : json["webp"],
        webpSize: json["webp_size"] == null ? null : json["webp_size"],
        width: json["width"] == null ? null : json["width"],
        frames: json["frames"] == null ? null : json["frames"],
        hash: json["hash"] == null ? null : json["hash"],
      );

  Map<String, dynamic> toJson() => {
        "height": height == null ? null : height,
        "mp4": mp4 == null ? null : mp4,
        "mp4_size": mp4Size == null ? null : mp4Size,
        "size": size == null ? null : size,
        "url": url == null ? null : url,
        "webp": webp == null ? null : webp,
        "webp_size": webpSize == null ? null : webpSize,
        "width": width == null ? null : width,
        "frames": frames == null ? null : frames,
        "hash": hash == null ? null : hash,
      };
}

class Looping {
  Looping({
    this.mp4,
    this.mp4Size,
  });

  final String mp4;
  final String mp4Size;

  factory Looping.fromRawJson(String str) => Looping.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Looping.fromJson(Map<String, dynamic> json) => Looping(
        mp4: json["mp4"] == null ? null : json["mp4"],
        mp4Size: json["mp4_size"] == null ? null : json["mp4_size"],
      );

  Map<String, dynamic> toJson() => {
        "mp4": mp4 == null ? null : mp4,
        "mp4_size": mp4Size == null ? null : mp4Size,
      };
}

enum Rating { G }

final ratingValues = EnumValues({"g": Rating.G});

enum Type { GIF }

final typeValues = EnumValues({"gif": Type.GIF});

class User {
  User({
    this.avatarUrl,
    this.bannerImage,
    this.bannerUrl,
    this.profileUrl,
    this.username,
    this.displayName,
    this.isVerified,
  });

  final String avatarUrl;
  final String bannerImage;
  final String bannerUrl;
  final String profileUrl;
  final String username;
  final String displayName;
  final bool isVerified;

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
        avatarUrl: json["avatar_url"] == null ? null : json["avatar_url"],
        bannerImage: json["banner_image"] == null ? null : json["banner_image"],
        bannerUrl: json["banner_url"] == null ? null : json["banner_url"],
        profileUrl: json["profile_url"] == null ? null : json["profile_url"],
        username: json["username"] == null ? null : json["username"],
        displayName: json["display_name"] == null ? null : json["display_name"],
        isVerified: json["is_verified"] == null ? null : json["is_verified"],
      );

  Map<String, dynamic> toJson() => {
        "avatar_url": avatarUrl == null ? null : avatarUrl,
        "banner_image": bannerImage == null ? null : bannerImage,
        "banner_url": bannerUrl == null ? null : bannerUrl,
        "profile_url": profileUrl == null ? null : profileUrl,
        "username": username == null ? null : username,
        "display_name": displayName == null ? null : displayName,
        "is_verified": isVerified == null ? null : isVerified,
      };
}

class Meta {
  Meta({
    this.status,
    this.msg,
    this.responseId,
  });

  final int status;
  final String msg;
  final String responseId;

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        status: json["status"] == null ? null : json["status"],
        msg: json["msg"] == null ? null : json["msg"],
        responseId: json["response_id"] == null ? null : json["response_id"],
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "msg": msg == null ? null : msg,
        "response_id": responseId == null ? null : responseId,
      };
}

class Pagination {
  Pagination({
    this.totalCount,
    this.count,
    this.offset,
  });

  final int totalCount;
  final int count;
  final int offset;

  factory Pagination.fromRawJson(String str) =>
      Pagination.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        totalCount: json["total_count"] == null ? null : json["total_count"],
        count: json["count"] == null ? null : json["count"],
        offset: json["offset"] == null ? null : json["offset"],
      );

  Map<String, dynamic> toJson() => {
        "total_count": totalCount == null ? null : totalCount,
        "count": count == null ? null : count,
        "offset": offset == null ? null : offset,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
