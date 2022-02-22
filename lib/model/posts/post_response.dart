class Post {
  Post({
    required this.title,
    required this.text,
    required this.doc,
    required this.privacity,
    required this.owner,
  });
  late final String title;
  late final String text;
  late final String doc;
  late final bool privacity;
  late final String owner;
  
  Post.fromJson(Map<String, dynamic> json){
    title = json['title'];
    text = json['text'];
    doc = json['doc'];
    privacity = json['privacity'];
    owner = json['owner'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['title'] = title;
    _data['text'] = text;
    _data['doc'] = doc;
    _data['privacity'] = privacity;
    _data['owner'] = owner;
    return _data;
  }
}