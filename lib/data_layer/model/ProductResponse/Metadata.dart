/// currentPage : 1
/// numberOfPages : 2
/// limit : 40
/// nextPage : 2

class Metadata {
  Metadata({
      this.currentPage, 
      this.numberOfPages, 
      this.limit, 
      this.nextPage,});

  Metadata.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
    nextPage = json['nextPage'];
  }
  int? currentPage;
  int? numberOfPages;
  int? limit;
  int? nextPage;
Metadata copyWith({  int? currentPage,
  int? numberOfPages,
  int? limit,
  int? nextPage,
}) => Metadata(  currentPage: currentPage ?? this.currentPage,
  numberOfPages: numberOfPages ?? this.numberOfPages,
  limit: limit ?? this.limit,
  nextPage: nextPage ?? this.nextPage,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentPage'] = currentPage;
    map['numberOfPages'] = numberOfPages;
    map['limit'] = limit;
    map['nextPage'] = nextPage;
    return map;
  }

}