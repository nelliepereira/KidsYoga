class YogaPosters {
  String posterId;
  String posterName;
  String posterImg;

  YogaPosters({this.posterId,this.posterImg,this.posterName});

  YogaPosters.fromJson(Map<String, dynamic> json) {
    posterId = json['PosterId'];
    posterName = json['PosterName'];
    posterImg = json['PosterImg'];

  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> YogaPosters = new Map<String,dynamic>();
    YogaPosters['posterImg']= this.posterImg;
    YogaPosters['PosterName']= this.posterName;
    YogaPosters['PosterId']= this.posterId;

  }

}