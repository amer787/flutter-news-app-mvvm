// ignore_for_file: public_member_api_docs, sort_constructors_first
import '/model/article_model.dart';

class ArticleViewModel {
  ArticleModel? articleModel;
  ArticleViewModel({
    this.articleModel,
  });
  get sourceName => articleModel?.source?.name;
  get title => articleModel?.title;
  get author => articleModel?.author;
  get publishedAt => articleModel?.publishedAt;
  get description => articleModel?.description;
  get content => articleModel?.content;
  get urlToImage => articleModel?.urlToImage;
  get url => articleModel?.url;
}
