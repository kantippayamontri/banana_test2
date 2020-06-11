class UpperNews {
  String newsType;
  String nameTH;
  String nameEN;
  String source;
  String startDate;
  String endDate;
  String disabled;
  String list;
  String descriptionTH;
  String descriptionEN;
  String coverImage;
  String link;

  UpperNews(
      {this.newsType,
      this.nameTH,
      this.nameEN,
      this.source,
      this.startDate,
      this.endDate,
      this.disabled,
      this.list,
      this.descriptionTH,
      this.descriptionEN,
      this.coverImage,
      this.link});

  UpperNews.fromJson(Map<String, dynamic> json) {
    newsType = json['newsType'];
    nameTH = json['nameTH'];
    nameEN = json['nameEN'];
    source = json['source'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    disabled = json['disabled'];
    list = json['list'];
    descriptionTH = json['descriptionTH'];
    descriptionEN = json['descriptionEN'];
    coverImage = json['coverImage'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['newsType'] = this.newsType;
    data['nameTH'] = this.nameTH;
    data['nameEN'] = this.nameEN;
    data['source'] = this.source;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['disabled'] = this.disabled;
    data['list'] = this.list;
    data['descriptionTH'] = this.descriptionTH;
    data['descriptionEN'] = this.descriptionEN;
    data['coverImage'] = this.coverImage;
    data['link'] = this.link;
    return data;
  }
}