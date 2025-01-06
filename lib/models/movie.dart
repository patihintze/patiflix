class Movie {
  int? id;
  String? title;
  String? posterPath;
  String? backropPath;
  String? description;
/*   String? imgFilme; */

  Movie(this.id, this.title, this.posterPath);

  Movie.fromMap(Map map) {
    id = map["id"];
    title = map["title"];
    posterPath = map["poster_path"];
    backropPath = map["backdrop_path"];
    description = map["overview"];
  }

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = Map();
    map["id"] = id;
    map["title"] = title;
    map["poster_path"] = posterPath;
    map["backdrop_path"] = backropPath;
    map["overview"] = description;
    return map;
  }


}
