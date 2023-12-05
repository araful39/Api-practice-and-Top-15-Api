class Model01 {
  String? aPI;
  String? description;
  String? auth;
  bool? hTTPS;
  String? cors;
  String? link;
  String? category;

  Model01(
      {this.aPI,
        this.description,
        this.auth,
        this.hTTPS,
        this.cors,
        this.link,
        this.category});

  Model01.fromJson(Map<String, dynamic> json) {
    aPI = json['API'];
    description = json['Description'];
    auth = json['Auth'];
    hTTPS = json['HTTPS'];
    cors = json['Cors'];
    link = json['Link'];
    category = json['Category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['API'] = this.aPI;
    data['Description'] = this.description;
    data['Auth'] = this.auth;
    data['HTTPS'] = this.hTTPS;
    data['Cors'] = this.cors;
    data['Link'] = this.link;
    data['Category'] = this.category;
    return data;
  }
}
class Model02 {
  String? fact;
  int? length;

  Model02({this.fact, this.length});

  Model02.fromJson(Map<String, dynamic> json) {
    fact = json['fact'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fact'] = this.fact;
    data['length'] = this.length;
    return data;
  }
}

class Model03 {
  Time? time;
  String? disclaimer;
  String? chartName;
  Bpi? bpi;

  Model03({this.time, this.disclaimer, this.chartName, this.bpi});

  Model03.fromJson(Map<String, dynamic> json) {
    time = json['time'] != null ? new Time.fromJson(json['time']) : null;
    disclaimer = json['disclaimer'];
    chartName = json['chartName'];
    bpi = json['bpi'] != null ? new Bpi.fromJson(json['bpi']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.time != null) {
      data['time'] = this.time!.toJson();
    }
    data['disclaimer'] = this.disclaimer;
    data['chartName'] = this.chartName;
    if (this.bpi != null) {
      data['bpi'] = this.bpi!.toJson();
    }
    return data;
  }
}

class Time {
  String? updated;
  String? updatedISO;
  String? updateduk;

  Time({this.updated, this.updatedISO, this.updateduk});

  Time.fromJson(Map<String, dynamic> json) {
    updated = json['updated'];
    updatedISO = json['updatedISO'];
    updateduk = json['updateduk'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['updated'] = this.updated;
    data['updatedISO'] = this.updatedISO;
    data['updateduk'] = this.updateduk;
    return data;
  }
}

class Bpi {
  USD? uSD;
  USD? gBP;
  USD? eUR;

  Bpi({this.uSD, this.gBP, this.eUR});

  Bpi.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'] != null ? new USD.fromJson(json['USD']) : null;
    gBP = json['GBP'] != null ? new USD.fromJson(json['GBP']) : null;
    eUR = json['EUR'] != null ? new USD.fromJson(json['EUR']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.uSD != null) {
      data['USD'] = this.uSD!.toJson();
    }
    if (this.gBP != null) {
      data['GBP'] = this.gBP!.toJson();
    }
    if (this.eUR != null) {
      data['EUR'] = this.eUR!.toJson();
    }
    return data;
  }
}

class USD {
  String? code;
  String? symbol;
  String? rate;
  String? description;
  double? rateFloat;

  USD({this.code, this.symbol, this.rate, this.description, this.rateFloat});

  USD.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    symbol = json['symbol'];
    rate = json['rate'];
    description = json['description'];
    rateFloat = json['rate_float'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['symbol'] = this.symbol;
    data['rate'] = this.rate;
    data['description'] = this.description;
    data['rate_float'] = this.rateFloat;
    return data;
  }
}


class Model04 {
  String? activity;
  String? type;
  int? participants;
  double? price;
  String? link;
  String? key;
  double? accessibility;

  Model04(
      {this.activity,
        this.type,
        this.participants,
        this.price,
        this.link,
        this.key,
        this.accessibility});

  Model04.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    type = json['type'];
    participants = json['participants'];
    price = json['price'];
    link = json['link'];
    key = json['key'];
    accessibility = json['accessibility'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activity'] = this.activity;
    data['type'] = this.type;
    data['participants'] = this.participants;
    data['price'] = this.price;
    data['link'] = this.link;
    data['key'] = this.key;
    data['accessibility'] = this.accessibility;
    return data;
  }


}
class Model05 {
  int? count;
  String? name;
  int? age;

  Model05({this.count, this.name, this.age});

  Model05.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    name = json['name'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['name'] = this.name;
    data['age'] = this.age;
    return data;
  }
}
class Model06 {
  int? count;
  String? name;
  String? gender;
  double? probability;

  Model06({this.count, this.name, this.gender, this.probability});

  Model06.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    name = json['name'];
    gender = json['gender'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['name'] = this.name;
    data['gender'] = this.gender;
    data['probability'] = this.probability;
    return data;
  }
}

class Model07 {
  String? countryId;
  double? probability;

  Model07({this.countryId, this.probability});

  Model07.fromJson(Map<String, dynamic> json) {
    countryId = json['country_id'];
    probability = json['probability'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country_id'] = this.countryId;
    data['probability'] = this.probability;
    return data;
  }
}

class Model08 {
  List<Data>? data;
  List<Source>? source;

  Model08({this.data, this.source});

  Model08.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    if (json['source'] != null) {
      source = <Source>[];
      json['source'].forEach((v) {
        source!.add(new Source.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.source != null) {
      data['source'] = this.source!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? iDNation;
  String? nation;
  int? iDYear;
  String? year;
  int? population;
  String? slugNation;

  Data(
      {this.iDNation,
        this.nation,
        this.iDYear,
        this.year,
        this.population,
        this.slugNation});

  Data.fromJson(Map<String, dynamic> json) {
    iDNation = json['ID Nation'];
    nation = json['Nation'];
    iDYear = json['ID Year'];
    year = json['Year'];
    population = json['Population'];
    slugNation = json['Slug Nation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID Nation'] = this.iDNation;
    data['Nation'] = this.nation;
    data['ID Year'] = this.iDYear;
    data['Year'] = this.year;
    data['Population'] = this.population;
    data['Slug Nation'] = this.slugNation;
    return data;
  }
}

class Source {
  List<String>? measures;
  Annotations? annotations;
  String? name;

  Source({this.measures, this.annotations, this.name});

  Source.fromJson(Map<String, dynamic> json) {
    measures = json['measures'].cast<String>();
    annotations = json['annotations'] != null
        ? new Annotations.fromJson(json['annotations'])
        : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['measures'] = this.measures;
    if (this.annotations != null) {
      data['annotations'] = this.annotations!.toJson();
    }
    data['name'] = this.name;
    return data;
  }
}

class Annotations {
  String? sourceName;
  String? sourceDescription;
  String? datasetName;
  String? datasetLink;
  String? tableId;
  String? topic;
  String? subtopic;

  Annotations(
      {this.sourceName,
        this.sourceDescription,
        this.datasetName,
        this.datasetLink,
        this.tableId,
        this.topic,
        this.subtopic});

  Annotations.fromJson(Map<String, dynamic> json) {
    sourceName = json['source_name'];
    sourceDescription = json['source_description'];
    datasetName = json['dataset_name'];
    datasetLink = json['dataset_link'];
    tableId = json['table_id'];
    topic = json['topic'];
    subtopic = json['subtopic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source_name'] = this.sourceName;
    data['source_description'] = this.sourceDescription;
    data['dataset_name'] = this.datasetName;
    data['dataset_link'] = this.datasetLink;
    data['table_id'] = this.tableId;
    data['topic'] = this.topic;
    data['subtopic'] = this.subtopic;
    return data;
  }
}

class Model09 {
  String? message;
  String? status;

  Model09({this.message, this.status});

  Model09.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}
class Model10 {
  String? ip;

  Model10({this.ip});

  Model10.fromJson(Map<String, dynamic> json) {
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ip'] = this.ip;
    return data;
  }
}
// class Model11 {
//   String? ip;
//   String? city;
//   String? region;
//   String? country;
//   String? loc;
//   String? org;
//   String? postal;
//   String? timezone;
//   String? readme;
//
//   Model11(
//       {this.ip,
//         this.city,
//         this.region,
//         this.country,
//         this.loc,
//         this.org,
//         this.postal,
//         this.timezone,
//         this.readme});
//
//   Model11.fromJson(Map<String, dynamic> json) {
//     ip = json['ip'];
//     city = json['city'];
//     region = json['region'];
//     country = json['country'];
//     loc = json['loc'];
//     org = json['org'];
//     postal = json['postal'];
//     timezone = json['timezone'];
//     readme = json['readme'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['ip'] = this.ip;
//     data['city'] = this.city;
//     data['region'] = this.region;
//     data['country'] = this.country;
//     data['loc'] = this.loc;
//     data['org'] = this.org;
//     data['postal'] = this.postal;
//     data['timezone'] = this.timezone;
//     data['readme'] = this.readme;
//     return data;
//   }
// }

class Model12 {
  String? type;
  String? setup;
  String? punchline;
  int? id;

  Model12({this.type, this.setup, this.punchline, this.id});

  Model12.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    setup = json['setup'];
    punchline = json['punchline'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['setup'] = this.setup;
    data['punchline'] = this.punchline;
    data['id'] = this.id;
    return data;
  }
}
class Model13 {
  List<Results>? results;
  Info? info;

  Model13({this.results, this.info});

  Model13.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }
    info = json['info'] != null ? new Info.fromJson(json['info']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    if (this.info != null) {
      data['info'] = this.info!.toJson();
    }
    return data;
  }
}

class Results {
  String? gender;
  Name? name;
  Location? location;
  String? email;
  Login? login;
  Dob? dob;
  Dob? registered;
  String? phone;
  String? cell;
  Id? id;
  Picture? picture;
  String? nat;

  Results(
      {this.gender,
        this.name,
        this.location,
        this.email,
        this.login,
        this.dob,
        this.registered,
        this.phone,
        this.cell,
        this.id,
        this.picture,
        this.nat});

  Results.fromJson(Map<String, dynamic> json) {
    gender = json['gender'];
    name = json['name'] != null ? new Name.fromJson(json['name']) : null;
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    email = json['email'];
    login = json['login'] != null ? new Login.fromJson(json['login']) : null;
    dob = json['dob'] != null ? new Dob.fromJson(json['dob']) : null;
    registered = json['registered'] != null
        ? new Dob.fromJson(json['registered'])
        : null;
    phone = json['phone'];
    cell = json['cell'];
    id = json['id'] != null ? new Id.fromJson(json['id']) : null;
    picture =
    json['picture'] != null ? new Picture.fromJson(json['picture']) : null;
    nat = json['nat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gender'] = this.gender;
    if (this.name != null) {
      data['name'] = this.name!.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    data['email'] = this.email;
    if (this.login != null) {
      data['login'] = this.login!.toJson();
    }
    if (this.dob != null) {
      data['dob'] = this.dob!.toJson();
    }
    if (this.registered != null) {
      data['registered'] = this.registered!.toJson();
    }
    data['phone'] = this.phone;
    data['cell'] = this.cell;
    if (this.id != null) {
      data['id'] = this.id!.toJson();
    }
    if (this.picture != null) {
      data['picture'] = this.picture!.toJson();
    }
    data['nat'] = this.nat;
    return data;
  }
}

class Name {
  String? title;
  String? first;
  String? last;

  Name({this.title, this.first, this.last});

  Name.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    first = json['first'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['first'] = this.first;
    data['last'] = this.last;
    return data;
  }
}

class Location {
  Street? street;
  String? city;
  String? state;
  String? country;
  int? postcode;
  Coordinates? coordinates;
  Timezone? timezone;

  Location(
      {this.street,
        this.city,
        this.state,
        this.country,
        this.postcode,
        this.coordinates,
        this.timezone});

  Location.fromJson(Map<String, dynamic> json) {
    street =
    json['street'] != null ? new Street.fromJson(json['street']) : null;
    city = json['city'];
    state = json['state'];
    country = json['country'];
    postcode = json['postcode'];
    coordinates = json['coordinates'] != null
        ? new Coordinates.fromJson(json['coordinates'])
        : null;
    timezone = json['timezone'] != null
        ? new Timezone.fromJson(json['timezone'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.street != null) {
      data['street'] = this.street!.toJson();
    }
    data['city'] = this.city;
    data['state'] = this.state;
    data['country'] = this.country;
    data['postcode'] = this.postcode;
    if (this.coordinates != null) {
      data['coordinates'] = this.coordinates!.toJson();
    }
    if (this.timezone != null) {
      data['timezone'] = this.timezone!.toJson();
    }
    return data;
  }
}

class Street {
  int? number;
  String? name;

  Street({this.number, this.name});

  Street.fromJson(Map<String, dynamic> json) {
    number = json['number'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this.number;
    data['name'] = this.name;
    return data;
  }
}

class Coordinates {
  String? latitude;
  String? longitude;

  Coordinates({this.latitude, this.longitude});

  Coordinates.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class Timezone {
  String? offset;
  String? description;

  Timezone({this.offset, this.description});

  Timezone.fromJson(Map<String, dynamic> json) {
    offset = json['offset'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['offset'] = this.offset;
    data['description'] = this.description;
    return data;
  }
}

class Login {
  String? uuid;
  String? username;
  String? password;
  String? salt;
  String? md5;
  String? sha1;
  String? sha256;

  Login(
      {this.uuid,
        this.username,
        this.password,
        this.salt,
        this.md5,
        this.sha1,
        this.sha256});

  Login.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    username = json['username'];
    password = json['password'];
    salt = json['salt'];
    md5 = json['md5'];
    sha1 = json['sha1'];
    sha256 = json['sha256'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uuid'] = this.uuid;
    data['username'] = this.username;
    data['password'] = this.password;
    data['salt'] = this.salt;
    data['md5'] = this.md5;
    data['sha1'] = this.sha1;
    data['sha256'] = this.sha256;
    return data;
  }
}

class Dob {
  String? date;
  int? age;

  Dob({this.date, this.age});

  Dob.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    age = json['age'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['age'] = this.age;
    return data;
  }
}

class Id {
  String? name;
  String? value;

  Id({this.name, this.value});

  Id.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['value'] = this.value;
    return data;
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  Picture.fromJson(Map<String, dynamic> json) {
    large = json['large'];
    medium = json['medium'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['large'] = this.large;
    data['medium'] = this.medium;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}

class Info {
  String? seed;
  int? results;
  int? page;
  String? version;

  Info({this.seed, this.results, this.page, this.version});

  Info.fromJson(Map<String, dynamic> json) {
    seed = json['seed'];
    results = json['results'];
    page = json['page'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['seed'] = this.seed;
    data['results'] = this.results;
    data['page'] = this.page;
    data['version'] = this.version;
    return data;
  }
}
