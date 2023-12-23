import 'package:habhab/favorite/views/favorite_view.dart';
import 'package:habhab/home/views/home_view.dart';
import 'package:habhab/order/views/order_view.dart';
import 'package:habhab/profile/view/profile_view.dart';

class AppConstants {
  static const pages = [HomeView(), OrderView(), FavoriteView(), ProfileView()];
}
