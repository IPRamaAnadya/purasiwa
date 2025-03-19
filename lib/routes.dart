import 'package:go_router/go_router.dart';
import 'package:purasiwa/view/event/detail/event_detail_page.dart';
import 'package:purasiwa/view/event/event_page.dart';
import 'package:purasiwa/view/history/history_page.dart';
import 'package:purasiwa/view/home/home_page.dart';
import 'package:purasiwa/view/news/detail/news_detail_page.dart';
import 'package:purasiwa/view/news/news_page.dart';
import 'package:purasiwa/view/shrine/detail/shrine_detail_page.dart';
import 'package:purasiwa/view/shrine/shrine_page.dart';
import 'package:purasiwa/view/tutorial/tutorial_page.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [home, event, history, shrine, news, tutorial],
  );

  static final home = GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [event, history, shrine, news, tutorial]);

  static final event = GoRoute(
    path: 'events',
    builder: (context, state) => const EventListPage(),
    routes: [
      eventDetail,
    ],
  );

  static final eventDetail = GoRoute(
    path: ':id',
    builder: (context, state) => EventDetailPage(),
  );

  static final history = GoRoute(
    path: 'history',
    builder: (context, state) => const HistoryPage(),
    routes: [
      eventDetail,
    ],
  );

  static final shrine = GoRoute(
    path: 'shrine',
    builder: (context, state) => const ShrinePage(),
    routes: [
      shrineDetail,
    ],
  );

  static final shrineDetail = GoRoute(
    path: ':id',
    builder: (context, state) => ShrineDetailPage(),
  );

  static final news = GoRoute(
    path: 'news',
    builder: (context, state) => const NewsPage(),
    routes: [
      newsDetail,
    ],
  );

  static final newsDetail = GoRoute(
    path: ':id',
    builder: (context, state) => NewsDetailPage(),
  );

  static final tutorial = GoRoute(
    path: '/tutorial',
    builder: (context, state) => const TutorialPage(),
    routes: [],
  );

  static void goHome() {
    router.go('/');
  }
}
