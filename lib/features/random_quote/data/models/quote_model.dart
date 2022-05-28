import 'package:quotes/features/random_quote/domain/entities/quote.dart';

class QuoteModel extends Quote {
  const QuoteModel(
      {required String author,
      required int id,
      required String content,
      required String permalink})
      : super(author: author, id: id, content: content, permalink: permalink);

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
        author: json["author"],
        id: json["id"],
        content: json["quote"],
        permalink: json["permalink"],
      );

  Map<String, dynamic> toJson() => {
        "author": author,
        "id": id,
        "quote": content,
        "permalink": permalink,
      };
}
