import 'package:auto_route/auto_route_annotations.dart';
import 'package:demux_assignment/presentation/home/home.dart';
import 'package:demux_assignment/presentation/home/search_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: HomePage, initial: true),
      MaterialRoute(page: SearchPage),

    ])
class $Router {}
