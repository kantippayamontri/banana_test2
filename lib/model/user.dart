class User {
  String memberId;
  String memberType;
  String displayname;
  String phone;
  String phoneCode;
  String phoneCountry;
  String email;
  String height;
  String weight;
  String birthDate;
  String age;
  String blood;
  String gender;
  String medical;
  String medicalEtc;
  String city;
  String sportFreq;
  String sportLocation;
  String sportFav;
  String sportEtc;
  String image;
  String token;

  User(
      {this.memberId,
      this.memberType,
      this.displayname,
      this.phone,
      this.phoneCode,
      this.phoneCountry,
      this.email,
      this.height,
      this.weight,
      this.birthDate,
      this.age,
      this.blood,
      this.gender,
      this.medical,
      this.medicalEtc,
      this.city,
      this.sportFreq,
      this.sportLocation,
      this.sportFav,
      this.sportEtc,
      this.image,
      this.token});

  User.fromJson(Map<String, dynamic> json) {
    memberId = json['memberId'];
    memberType = json['memberType'];
    displayname = json['displayname'];
    phone = json['phone'];
    phoneCode = json['phoneCode'];
    phoneCountry = json['phoneCountry'];
    email = json['email'];
    height = json['height'];
    weight = json['weight'];
    birthDate = json['birthDate'];
    age = json['age'];
    blood = json['blood'];
    gender = json['gender'];
    medical = json['medical'];
    medicalEtc = json['medicalEtc'];
    city = json['city'];
    sportFreq = json['sportFreq'];
    sportLocation = json['sportLocation'];
    sportFav = json['sportFav'];
    sportEtc = json['sportEtc'];
    image = json['image'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['memberId'] = this.memberId;
    data['memberType'] = this.memberType;
    data['displayname'] = this.displayname;
    data['phone'] = this.phone;
    data['phoneCode'] = this.phoneCode;
    data['phoneCountry'] = this.phoneCountry;
    data['email'] = this.email;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['birthDate'] = this.birthDate;
    data['age'] = this.age;
    data['blood'] = this.blood;
    data['gender'] = this.gender;
    data['medical'] = this.medical;
    data['medicalEtc'] = this.medicalEtc;
    data['city'] = this.city;
    data['sportFreq'] = this.sportFreq;
    data['sportLocation'] = this.sportLocation;
    data['sportFav'] = this.sportFav;
    data['sportEtc'] = this.sportEtc;
    data['image'] = this.image;
    data['token'] = this.token;
    return data;
  }
}
