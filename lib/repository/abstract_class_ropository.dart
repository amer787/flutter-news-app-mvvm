import '/model/article_model.dart';

abstract class ClassRepository {
  Future<List<ArticleModel>> getAllNews();
  Future<List<ArticleModel>> getCategory(String category);
}
