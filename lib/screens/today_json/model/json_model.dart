class NewsModel {
  String? status;
  int? totalResult;
  List<Articles> articleList = [];


// NewsModel.name(this.status, this.totalResult, this.articleList);
}

class Articles {
  String? author, title, description, url, urlToImage, publishedAt, content;
  Source? s1;

  Articles(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content,
      this.s1});

  Articles factory(Map m1) {
    author = m1['author'];
    title = m1['title'];
    description = m1['description'];
    url = m1['url'];
    urlToImage = m1['urlToImage'];
    publishedAt = m1['publishedAt'];
    content = m1['content'];

    s1 = Source().factory(m1['source']);
    // s1 = source;

    Articles a1 = Articles(
        title: title,
        author: author,
        description: description,
        url: url,
        urlToImage: urlToImage,
        content: content,
        publishedAt: publishedAt,
        s1: s1);

    return a1;
  }
}

class Source {
  String? id, name;

  Source({this.id, this.name});

  Source factory(Map m1) {
    id = m1['id'];
    name = m1['name'];

    Source s1 = Source(name: name, id: id);

    return s1;
  }
}
