class Autogenerated {
  List<Data>? data;

  Autogenerated({this.data});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? date;
  int? confirmed;
  int? deaths;
  int? recovered;
  int? confirmedDiff;
  int? deathsDiff;
  int? recoveredDiff;
  String? lastUpdate;
  int? active;
  int? activeDiff;
  double? fatalityRate;
  Region? region;

  Data(
      {this.date,
        this.confirmed,
        this.deaths,
        this.recovered,
        this.confirmedDiff,
        this.deathsDiff,
        this.recoveredDiff,
        this.lastUpdate,
        this.active,
        this.activeDiff,
        this.fatalityRate,
        this.region});

  Data.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    confirmed = json['confirmed'];
    deaths = json['deaths'];
    recovered = json['recovered'];
    confirmedDiff = json['confirmed_diff'];
    deathsDiff = json['deaths_diff'];
    recoveredDiff = json['recovered_diff'];
    lastUpdate = json['last_update'];
    active = json['active'];
    activeDiff = json['active_diff'];
    fatalityRate = json['fatality_rate'];
    region =
    json['region'] != null ? new Region.fromJson(json['region']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['confirmed'] = this.confirmed;
    data['deaths'] = this.deaths;
    data['recovered'] = this.recovered;
    data['confirmed_diff'] = this.confirmedDiff;
    data['deaths_diff'] = this.deathsDiff;
    data['recovered_diff'] = this.recoveredDiff;
    data['last_update'] = this.lastUpdate;
    data['active'] = this.active;
    data['active_diff'] = this.activeDiff;
    data['fatality_rate'] = this.fatalityRate;
    if (this.region != null) {
      data['region'] = this.region!.toJson();
    }
    return data;
  }
}

class Region {
  String? iso;
  String? name;
  String? province;
  String? lat;
  String? long;
  List<Cities>? cities;

  Region(
      {this.iso, this.name, this.province, this.lat, this.long, this.cities});

  Region.fromJson(Map<String, dynamic> json) {
    iso = json['iso'];
    name = json['name'];
    province = json['province'];
    lat = json['lat'];
    long = json['long'];
    if (json['cities'] != null) {
      cities = <Cities>[];
      json['cities'].forEach((v) {
        cities!.add(new Cities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iso'] = this.iso;
    data['name'] = this.name;
    data['province'] = this.province;
    data['lat'] = this.lat;
    data['long'] = this.long;
    if (this.cities != null) {
      data['cities'] = this.cities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cities {
  String? name;
  String? date;
  int? fips;
  String? lat;
  String? long;
  int? confirmed;
  int? deaths;
  int? confirmedDiff;
  int? deathsDiff;
  String? lastUpdate;

  Cities(
      {this.name,
        this.date,
        this.fips,
        this.lat,
        this.long,
        this.confirmed,
        this.deaths,
        this.confirmedDiff,
        this.deathsDiff,
        this.lastUpdate});

  Cities.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
    fips = json['fips'];
    lat = json['lat'];
    long = json['long'];
    confirmed = json['confirmed'];
    deaths = json['deaths'];
    confirmedDiff = json['confirmed_diff'];
    deathsDiff = json['deaths_diff'];
    lastUpdate = json['last_update'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['date'] = this.date;
    data['fips'] = this.fips;
    data['lat'] = this.lat;
    data['long'] = this.long;
    data['confirmed'] = this.confirmed;
    data['deaths'] = this.deaths;
    data['confirmed_diff'] = this.confirmedDiff;
    data['deaths_diff'] = this.deathsDiff;
    data['last_update'] = this.lastUpdate;
    return data;
  }
}