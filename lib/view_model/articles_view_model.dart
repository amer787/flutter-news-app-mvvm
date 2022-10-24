// ignore_for_file: public_member_api_docs, sort_constructors_first
import '/model/article_model.dart';
import '/repository/abstract_class_ropository.dart';
import '/view_model/article_view_model.dart';

class ArticlesListViewModel {
  ClassRepository? classRepository;
  ArticlesListViewModel({
    this.classRepository,
  });
  Future<List<ArticleViewModel>> fetchAllNews() async {
    List<ArticleModel> list = await classRepository!.getAllNews();
    return list.map((e) => ArticleViewModel(articleModel: e)).toList();
  }

  Future<List<ArticleViewModel>> fetchNewsHealth() async {
    List<ArticleModel> list = await classRepository!.getCategory("health");
    return list.map((e) => ArticleViewModel(articleModel: e)).toList();
  }

  Future<List<ArticleViewModel>> fetchNewsGeneral() async {
    List<ArticleModel> list = await classRepository!.getCategory("general");
    return list.map((e) => ArticleViewModel(articleModel: e)).toList();
  }

  Future<List<ArticleViewModel>> fetchNewsTechnology() async {
    List<ArticleModel> list = await classRepository!.getCategory("technology");
    return list.map((e) => ArticleViewModel(articleModel: e)).toList();
  }

  Future<List<ArticleViewModel>> fetchNewsScience() async {
    List<ArticleModel> list = await classRepository!.getCategory("science");
    return list.map((e) => ArticleViewModel(articleModel: e)).toList();
  }
}
