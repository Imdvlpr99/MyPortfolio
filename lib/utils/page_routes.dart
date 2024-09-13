import 'package:MyPortfolio/ui/about/about_base.dart';
import 'package:MyPortfolio/ui/auth/auth_base.dart';
import 'package:MyPortfolio/ui/base.dart';
import 'package:MyPortfolio/ui/home/home_base.dart';
import 'package:MyPortfolio/ui/works/works_base.dart';
import 'package:go_router/go_router.dart';

GoRouter appRouter = GoRouter(
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
          builder: (context, state, shell) => Base(shell:shell),
          branches: [
            StatefulShellBranch(
                routes: [
                  GoRoute(
                      path: '/',
                      builder: (context, state) => const HomeBase()
                  )
                ]
            ),
            StatefulShellBranch(
                routes: [
                  GoRoute(
                      path: '/works',
                      builder: (context, state) => const WorksBase()
                  )
                ]
            ),
            StatefulShellBranch(
                routes: [
                  GoRoute(
                      path: '/about-me',
                      builder: (context, state) => const AboutBase()
                  )
                ]
            )
          ]
      ),
      GoRoute(
          path: '/login',
          builder: (context, state) => const AuthBase()
      )
    ],
);