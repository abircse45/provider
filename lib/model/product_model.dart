class AAAA {
  List<FrontLocation> frontLocation;
  List<AllLocation> allLocation;
  List<FrontHotel> frontHotel;
  List<Null> frontTour;

  AAAA({this.frontLocation, this.allLocation, this.frontHotel, this.frontTour});

  AAAA.fromJson(Map<String, dynamic> json) {
    if (json['front_location'] != null) {
      frontLocation = new List<FrontLocation>();
      json['front_location'].forEach((v) {
        frontLocation.add(new FrontLocation.fromJson(v));
      });
    }
    if (json['all_location'] != null) {
      allLocation = new List<AllLocation>();
      json['all_location'].forEach((v) {
        allLocation.add(new AllLocation.fromJson(v));
      });
    }
    if (json['front_hotel'] != null) {
      frontHotel = new List<FrontHotel>();
      json['front_hotel'].forEach((v) {
        frontHotel.add(new FrontHotel.fromJson(v));
      });
    }

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.frontLocation != null) {
      data['front_location'] =
          this.frontLocation.map((v) => v.toJson()).toList();
    }
    if (this.allLocation != null) {
      data['all_location'] = this.allLocation.map((v) => v.toJson()).toList();
    }
    if (this.frontHotel != null) {
      data['front_hotel'] = this.frontHotel.map((v) => v.toJson()).toList();
    }

    return data;
  }
}

class FrontLocation {
  String id;
  String location;
  String thumbnail;
  String country;
  String property;
  String avgPrice;

  FrontLocation(
      {this.id,
        this.location,
        this.thumbnail,
        this.country,
        this.property,
        this.avgPrice});

  FrontLocation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    location = json['location'];
    thumbnail = json['thumbnail'];
    country = json['country'];
    property = json['property'];
    avgPrice = json['avgPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['location'] = this.location;
    data['thumbnail'] = this.thumbnail;
    data['country'] = this.country;
    data['property'] = this.property;
    data['avgPrice'] = this.avgPrice;
    return data;
  }
}

class AllLocation {
  String id;
  String country;
  String location;
  String metaTitle;
  String metaDescription;
  String metaKeywords;
  String thumbnail;
  String latitude;
  String longitude;
  Null user;
  String home;
  String status;
  String division;

  AllLocation(
      {this.id,
        this.country,
        this.location,
        this.metaTitle,
        this.metaDescription,
        this.metaKeywords,
        this.thumbnail,
        this.latitude,
        this.longitude,
        this.user,
        this.home,
        this.status,
        this.division});

  AllLocation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    country = json['country'];
    location = json['location'];
    metaTitle = json['meta_title'];
    metaDescription = json['meta_description'];
    metaKeywords = json['meta_keywords'];
    thumbnail = json['thumbnail'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    user = json['user'];
    home = json['home'];
    status = json['status'];
    division = json['division'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['country'] = this.country;
    data['location'] = this.location;
    data['meta_title'] = this.metaTitle;
    data['meta_description'] = this.metaDescription;
    data['meta_keywords'] = this.metaKeywords;
    data['thumbnail'] = this.thumbnail;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['user'] = this.user;
    data['home'] = this.home;
    data['status'] = this.status;
    data['division'] = this.division;
    return data;
  }
}

class FrontHotel {
  String id;
  String title;
  String slug;
  String thumbnail;
  String stars;
  String starsCount;
  String payarr;
  String location;
  String desc;
  String price;
  String currCode;
  String currSymbol;
  List<Amenities> amenities;
  AvgReviews avgReviews;
  String latitude;
  String longitude;
  Null address;
  Null airportDistance;
  Null citycenterDistance;
  Null beachDistance;
  Null breakfastCrg;
  Null hotelpayOpt;
  Null portDistance;
  String lastBooking;
  Null policy;
  double basicprice;
  int stayNight;

  FrontHotel(
      {this.id,
        this.title,
        this.slug,
        this.thumbnail,
        this.stars,
        this.starsCount,
        this.payarr,
        this.location,
        this.desc,
        this.price,
        this.currCode,
        this.currSymbol,
        this.amenities,
        this.avgReviews,
        this.latitude,
        this.longitude,
        this.address,
        this.airportDistance,
        this.citycenterDistance,
        this.beachDistance,
        this.breakfastCrg,
        this.hotelpayOpt,
        this.portDistance,
        this.lastBooking,
        this.policy,
        this.basicprice,
        this.stayNight});

  FrontHotel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    thumbnail = json['thumbnail'];
    stars = json['stars'];
    starsCount = json['starsCount'];
    payarr = json['payarr'];
    location = json['location'];
    desc = json['desc'];
    price = json['price'];
    currCode = json['currCode'];
    currSymbol = json['currSymbol'];
    if (json['amenities'] != null) {
      amenities = new List<Amenities>();
      json['amenities'].forEach((v) {
        amenities.add(new Amenities.fromJson(v));
      });
    }
    avgReviews = json['avgReviews'] != null
        ? new AvgReviews.fromJson(json['avgReviews'])
        : null;
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    airportDistance = json['airport_distance'];
    citycenterDistance = json['citycenter_distance'];
    beachDistance = json['beachDistance'];
    breakfastCrg = json['breakfast_crg'];
    hotelpayOpt = json['hotelpay_opt'];
    portDistance = json['portDistance'];
    lastBooking = json['last_booking'];

    policy = json['policy'];
    basicprice = json['basicprice'];
    stayNight = json['stay_night'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['slug'] = this.slug;
    data['thumbnail'] = this.thumbnail;
    data['stars'] = this.stars;
    data['starsCount'] = this.starsCount;
    data['payarr'] = this.payarr;
    data['location'] = this.location;
    data['desc'] = this.desc;
    data['price'] = this.price;
    data['currCode'] = this.currCode;
    data['currSymbol'] = this.currSymbol;
    if (this.amenities != null) {
      data['amenities'] = this.amenities.map((v) => v.toJson()).toList();
    }
    if (this.avgReviews != null) {
      data['avgReviews'] = this.avgReviews.toJson();
    }
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['address'] = this.address;
    data['airport_distance'] = this.airportDistance;
    data['citycenter_distance'] = this.citycenterDistance;
    data['beachDistance'] = this.beachDistance;
    data['breakfast_crg'] = this.breakfastCrg;
    data['hotelpay_opt'] = this.hotelpayOpt;
    data['portDistance'] = this.portDistance;
    data['last_booking'] = this.lastBooking;

    data['policy'] = this.policy;
    data['basicprice'] = this.basicprice;
    data['stay_night'] = this.stayNight;
    return data;
  }
}

class Amenities {
  String icon;
  String name;

  Amenities({this.icon, this.name});

  Amenities.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['name'] = this.name;
    return data;
  }
}

class AvgReviews {
  int clean;
  int comfort;
  int location;
  int facilities;
  int staff;
  String totalReviews;
  int overall;

  AvgReviews(
      {this.clean,
        this.comfort,
        this.location,
        this.facilities,
        this.staff,
        this.totalReviews,
        this.overall});

  AvgReviews.fromJson(Map<String, dynamic> json) {
    clean = json['clean'];
    comfort = json['comfort'];
    location = json['location'];
    facilities = json['facilities'];
    staff = json['staff'];
    totalReviews = json['totalReviews'];
    overall = json['overall'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clean'] = this.clean;
    data['comfort'] = this.comfort;
    data['location'] = this.location;
    data['facilities'] = this.facilities;
    data['staff'] = this.staff;
    data['totalReviews'] = this.totalReviews;
    data['overall'] = this.overall;
    return data;
  }
}
