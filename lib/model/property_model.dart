// To parse this JSON data, do
//
//     final property = propertyFromJson(jsonString);

import 'dart:convert';

Property propertyFromJson(String str) => Property.fromJson(json.decode(str));

String propertyToJson(Property data) => json.encode(data.toJson());

class Property {
  Property({
    this.status,
    this.featured,
    this.latest,
    this.cities,
    this.states,
    this.customFields,
  });

  int status;
  List<Featured> featured;
  List<Featured> latest;
  Map<String, City> cities;
  Map<String, StateValue> states;
  Map<String, CustomField> customFields;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
    status: json["status"] == null ? null : json["status"],
    featured: json["featured"] == null ? null : List<Featured>.from(json["featured"].map((x) => Featured.fromJson(x))),
    latest: json["latest"] == null ? null : List<Featured>.from(json["latest"].map((x) => Featured.fromJson(x))),
    cities: json["cities"] == null ? null : Map.from(json["cities"]).map((k, v) => MapEntry<String, City>(k, City.fromJson(v))),
    states: json["states"] == null ? null : Map.from(json["states"]).map((k, v) => MapEntry<String, StateValue>(k, StateValue.fromJson(v))),
    customFields: json["custom_fields"] == null ? null : Map.from(json["custom_fields"]).map((k, v) => MapEntry<String, CustomField>(k, CustomField.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "featured": featured == null ? null : List<dynamic>.from(featured.map((x) => x.toJson())),
    "latest": latest == null ? null : List<dynamic>.from(latest.map((x) => x.toJson())),
    "cities": cities == null ? null : Map.from(cities).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "states": states == null ? null : Map.from(states).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
    "custom_fields": customFields == null ? null : Map.from(customFields).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class City {
  City({
    this.cityId,
    this.cityName,
    this.state,
    this.stateId,
    this.slug,
    this.lat,
    this.lng,
  });

  String cityId;
  String cityName;
  StateEnum state;
  String stateId;
  String slug;
  String lat;
  String lng;

  factory City.fromJson(Map<String, dynamic> json) => City(
    cityId: json["city_id"] == null ? null : json["city_id"],
    cityName: json["city_name"] == null ? null : json["city_name"],
    state: json["state"] == null ? null : stateEnumValues.map[json["state"]],
    stateId: json["state_id"] == null ? null : json["state_id"],
    slug: json["slug"] == null ? null : json["slug"],
    lat: json["lat"] == null ? null : json["lat"],
    lng: json["lng"] == null ? null : json["lng"],
  );

  Map<String, dynamic> toJson() => {
    "city_id": cityId == null ? null : cityId,
    "city_name": cityName == null ? null : cityName,
    "state": state == null ? null : stateEnumValues.reverse[state],
    "state_id": stateId == null ? null : stateId,
    "slug": slug == null ? null : slug,
    "lat": lat == null ? null : lat,
    "lng": lng == null ? null : lng,
  };
}

enum StateEnum { HARGEISA, BERBERA }

final stateEnumValues = EnumValues({
  "Berbera": StateEnum.BERBERA,
  "Hargeisa": StateEnum.HARGEISA
});

class CustomField {
  CustomField({
    this.fieldId,
    this.fieldName,
    this.fieldType,
    this.filterDisplay,
    this.valuesList,
    this.tooltip,
    this.icon,
    this.required,
    this.fieldOrder,
    this.trFieldName,
    this.trValuesList,
  });

  String fieldId;
  String fieldName;
  String fieldType;
  String filterDisplay;
  dynamic valuesList;
  String tooltip;
  String icon;
  String required;
  String fieldOrder;
  String trFieldName;
  String trValuesList;

  factory CustomField.fromJson(Map<String, dynamic> json) => CustomField(
    fieldId: json["field_id"] == null ? null : json["field_id"],
    fieldName: json["field_name"] == null ? null : json["field_name"],
    fieldType: json["field_type"] == null ? null : json["field_type"],
    filterDisplay: json["filter_display"] == null ? null : json["filter_display"],
    valuesList: json["values_list"],
    tooltip: json["tooltip"] == null ? null : json["tooltip"],
    icon: json["icon"] == null ? null : json["icon"],
    required: json["required"] == null ? null : json["required"],
    fieldOrder: json["field_order"] == null ? null : json["field_order"],
    trFieldName: json["tr_field_name"] == null ? null : json["tr_field_name"],
    trValuesList: json["tr_values_list"] == null ? null : json["tr_values_list"],
  );

  Map<String, dynamic> toJson() => {
    "field_id": fieldId == null ? null : fieldId,
    "field_name": fieldName == null ? null : fieldName,
    "field_type": fieldType == null ? null : fieldType,
    "filter_display": filterDisplay == null ? null : filterDisplay,
    "values_list": valuesList,
    "tooltip": tooltip == null ? null : tooltip,
    "icon": icon == null ? null : icon,
    "required": required == null ? null : required,
    "field_order": fieldOrder == null ? null : fieldOrder,
    "tr_field_name": trFieldName == null ? null : trFieldName,
    "tr_values_list": trValuesList == null ? null : trValuesList,
  };
}

class Featured {
  Featured({
    this.avgRating,
    this.catBg,
    this.catIcon,
    this.catName,
    this.catSlug,
    this.cityName,
    this.citySlug,
    this.listingAddr,
    this.price,
    this.listingId,
    this.listingLink,
    this.listingSlug,
    this.listingTitle,
    this.photoUrl,
    this.profilePic,
    this.shortDesc,
    this.stateAbbr,
    this.stateSlug,
    this.photos,
    this.submissionDate,
    this.customFields,
    this.listingPrice,
    this.isFeat,
  });

  String avgRating;
  CatBg catBg;
  CatIcon catIcon;
  CatName catName;
  CatSlug catSlug;
  String cityName;
  String citySlug;
  String listingAddr;
  String price;
  String listingId;
  String listingLink;
  String listingSlug;
  String listingTitle;
  String photoUrl;
  String profilePic;
  String shortDesc;
  StateEnum stateAbbr;
  StateSlug stateSlug;
  String photos;
  int submissionDate;
  Map<String, String> customFields;
  String listingPrice;
  bool isFeat;

  factory Featured.fromJson(Map<String, dynamic> json) => Featured(
    avgRating: json["avg_rating"] == null ? null : json["avg_rating"],
    catBg: json["cat_bg"] == null ? null : catBgValues.map[json["cat_bg"]],
    catIcon: json["cat_icon"] == null ? null : catIconValues.map[json["cat_icon"]],
    catName: json["cat_name"] == null ? null : catNameValues.map[json["cat_name"]],
    catSlug: json["cat_slug"] == null ? null : catSlugValues.map[json["cat_slug"]],
    cityName: json["city_name"] == null ? null : json["city_name"],
    citySlug: json["city_slug"] == null ? null : json["city_slug"],
    listingAddr: json["listing_addr"] == null ? null : json["listing_addr"],
    price: json["price"] == null ? null : json["price"],
    listingId: json["listing_id"] == null ? null : json["listing_id"],
    listingLink: json["listing_link"] == null ? null : json["listing_link"],
    listingSlug: json["listing_slug"] == null ? null : json["listing_slug"],
    listingTitle: json["listing_title"] == null ? null : json["listing_title"],
    photoUrl: json["photo_url"] == null ? null : json["photo_url"],
    profilePic: json["profile_pic"] == null ? null : json["profile_pic"],
    shortDesc: json["short_desc"] == null ? null : json["short_desc"],
    stateAbbr: json["state_abbr"] == null ? null : stateEnumValues.map[json["state_abbr"]],
    stateSlug: json["state_slug"] == null ? null : stateSlugValues.map[json["state_slug"]],
    photos: json["photos"] == null ? null : json["photos"],
    submissionDate: json["submission_date"] == null ? null : json["submission_date"],
    customFields: json["custom_fields"] == null ? null : Map.from(json["custom_fields"]).map((k, v) => MapEntry<String, String>(k, v)),
    listingPrice: json["listing_price"] == null ? null : json["listing_price"],
    isFeat: json["is_feat"] == null ? null : json["is_feat"],
  );

  Map<String, dynamic> toJson() => {
    "avg_rating": avgRating == null ? null : avgRating,
    "cat_bg": catBg == null ? null : catBgValues.reverse[catBg],
    "cat_icon": catIcon == null ? null : catIconValues.reverse[catIcon],
    "cat_name": catName == null ? null : catNameValues.reverse[catName],
    "cat_slug": catSlug == null ? null : catSlugValues.reverse[catSlug],
    "city_name": cityName == null ? null : cityName,
    "city_slug": citySlug == null ? null : citySlug,
    "listing_addr": listingAddr == null ? null : listingAddr,
    "price": price == null ? null : price,
    "listing_id": listingId == null ? null : listingId,
    "listing_link": listingLink == null ? null : listingLink,
    "listing_slug": listingSlug == null ? null : listingSlug,
    "listing_title": listingTitle == null ? null : listingTitle,
    "photo_url": photoUrl == null ? null : photoUrl,
    "profile_pic": profilePic == null ? null : profilePic,
    "short_desc": shortDesc == null ? null : shortDesc,
    "state_abbr": stateAbbr == null ? null : stateEnumValues.reverse[stateAbbr],
    "state_slug": stateSlug == null ? null : stateSlugValues.reverse[stateSlug],
    "photos": photos == null ? null : photos,
    "submission_date": submissionDate == null ? null : submissionDate,
    "custom_fields": customFields == null ? null : Map.from(customFields).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "listing_price": listingPrice == null ? null : listingPrice,
    "is_feat": isFeat == null ? null : isFeat,
  };
}

enum CatBg { THE_000, F6_F6_F6 }

final catBgValues = EnumValues({
  "#f6f6f6": CatBg.F6_F6_F6,
  "#000": CatBg.THE_000
});

enum CatIcon { I_CLASS_FA_FA_TRASH_I, EMPTY }

final catIconValues = EnumValues({
  "": CatIcon.EMPTY,
  "<i class=\"fa fa-trash\"></i>": CatIcon.I_CLASS_FA_FA_TRASH_I
});

enum CatName { PROPERTY_FOR_BUY, PROPERTY_FOR_RENT }

final catNameValues = EnumValues({
  "Property for Buy": CatName.PROPERTY_FOR_BUY,
  "Property for Rent": CatName.PROPERTY_FOR_RENT
});

enum CatSlug { PROPERTY_BUY, PROPERTY_RENT }

final catSlugValues = EnumValues({
  "property-buy": CatSlug.PROPERTY_BUY,
  "property-rent": CatSlug.PROPERTY_RENT
});

enum StateSlug { HARGEISA, BERBERA }

final stateSlugValues = EnumValues({
  "berbera": StateSlug.BERBERA,
  "hargeisa": StateSlug.HARGEISA
});

class StateValue {
  StateValue({
    this.stateId,
    this.stateName,
    this.stateAbbr,
    this.slug,
    this.countryAbbr,
    this.countryId,
  });

  String stateId;
  String stateName;
  String stateAbbr;
  String slug;
  CountryAbbr countryAbbr;
  String countryId;

  factory StateValue.fromJson(Map<String, dynamic> json) => StateValue(
    stateId: json["state_id"] == null ? null : json["state_id"],
    stateName: json["state_name"] == null ? null : json["state_name"],
    stateAbbr: json["state_abbr"] == null ? null : json["state_abbr"],
    slug: json["slug"] == null ? null : json["slug"],
    countryAbbr: json["country_abbr"] == null ? null : countryAbbrValues.map[json["country_abbr"]],
    countryId: json["country_id"] == null ? null : json["country_id"],
  );

  Map<String, dynamic> toJson() => {
    "state_id": stateId == null ? null : stateId,
    "state_name": stateName == null ? null : stateName,
    "state_abbr": stateAbbr == null ? null : stateAbbr,
    "slug": slug == null ? null : slug,
    "country_abbr": countryAbbr == null ? null : countryAbbrValues.reverse[countryAbbr],
    "country_id": countryId == null ? null : countryId,
  };
}

enum CountryAbbr { SO }

final countryAbbrValues = EnumValues({
  "SO": CountryAbbr.SO
});

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
