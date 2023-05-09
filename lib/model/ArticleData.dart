import '../app_constants/app_images.dart';
import '../app_constants/article_title.dart';

class ArticleData{
  final String image;
  final String category;
  final String time;
  final String title;

  const ArticleData({
    required this.image,
    required this.category,
    required this.time,
    required this.title,
  });
}


const List<ArticleData> listOfArticleData = [
  ArticleData(
    title: ArticleTitle.drink,
    category: "Drinks & Smoothies",
    image: Images.drink,
    time: "6 hours ago",
  ),
  ArticleData(
    image: Images.family,
    time: "10 days ago",
    category: "Family",
    title: ArticleTitle.family,
  ),
  ArticleData(
    title: ArticleTitle.fitness,
    category: "Fitness & Beauty",
    time: "6 months ago",
    image: Images.fitness,
  ),
  ArticleData(
    image: Images.food,
    time: "15 minutes ago",
    category: "Food",
    title: ArticleTitle.food,
  ),
  ArticleData(
    title: ArticleTitle.fruits,
    category: "Fruits & Veggies",
    time: "1 hour ago",
    image: Images.fruits,
  ),
  ArticleData(
    title: ArticleTitle.remedies,
    category: "Grandma's Remedies",
    time: "3 hour ago",
    image: Images.remedies,
  ),
  ArticleData(
    title: ArticleTitle.health,
    category: "Health & Fitness",
    time: "9 minutes ago",
    image: Images.health,
  ),
  ArticleData(
    title: ArticleTitle.healthyFood,
    category: "Healthy Food",
    time: "6 hour ago",
    image: Images.healthyFood,
  ),
  ArticleData(
    title: ArticleTitle.news,
    category: "Healthy News",
    time: "3 hour ago",
    image: Images.news,
  ),
  ArticleData(
    title: ArticleTitle.tips,
    category: "Healthy Tips",
    time: "recently",
    image: Images.tips,
  ),
];