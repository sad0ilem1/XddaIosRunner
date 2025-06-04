import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/auth/base_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? MainmenuUserWidget() : HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? MainmenuUserWidget()
              : HomePageWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: LFormsWidget.routeName,
          path: LFormsWidget.routePath,
          builder: (context, params) => LFormsWidget(),
        ),
        FFRoute(
          name: ListPageWidget.routeName,
          path: ListPageWidget.routePath,
          builder: (context, params) => ListPageWidget(),
        ),
        FFRoute(
          name: MainmenuADMWidget.routeName,
          path: MainmenuADMWidget.routePath,
          builder: (context, params) => MainmenuADMWidget(),
        ),
        FFRoute(
          name: ListPageADMWidget.routeName,
          path: ListPageADMWidget.routePath,
          builder: (context, params) => ListPageADMWidget(),
        ),
        FFRoute(
          name: MainmenuUserWidget.routeName,
          path: MainmenuUserWidget.routePath,
          builder: (context, params) => MainmenuUserWidget(),
        ),
        FFRoute(
          name: EditPage5Widget.routeName,
          path: EditPage5Widget.routePath,
          builder: (context, params) => EditPage5Widget(
            forms: params.getParam<FormsRow>(
              'forms',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: LFormsCopyWidget.routeName,
          path: LFormsCopyWidget.routePath,
          builder: (context, params) => LFormsCopyWidget(),
        ),
        FFRoute(
          name: ListPageOfflineWidget.routeName,
          path: ListPageOfflineWidget.routePath,
          builder: (context, params) => ListPageOfflineWidget(),
        ),
        FFRoute(
          name: EditPage5OfflineWidget.routeName,
          path: EditPage5OfflineWidget.routePath,
          builder: (context, params) => EditPage5OfflineWidget(
            txfResponsavel: params.getParam(
              'txfResponsavel',
              ParamType.String,
            ),
            id: params.getParam(
              'id',
              ParamType.int,
            ),
            txfData: params.getParam(
              'txfData',
              ParamType.String,
            ),
            txfLocal: params.getParam(
              'txfLocal',
              ParamType.String,
            ),
            tipoInspecao1: params.getParam(
              'tipoInspecao1',
              ParamType.String,
            ),
            equipamento1: params.getParam(
              'equipamento1',
              ParamType.String,
            ),
            motivo1: params.getParam(
              'motivo1',
              ParamType.String,
            ),
            descricaoFoto1: params.getParam(
              'descricaoFoto1',
              ParamType.String,
            ),
            descricaoAcao1: params.getParam(
              'descricaoAcao1',
              ParamType.String,
            ),
            prazo1: params.getParam(
              'prazo1',
              ParamType.String,
            ),
            status1: params.getParam(
              'status1',
              ParamType.String,
            ),
            tipoInspecao2: params.getParam(
              'tipoInspecao2',
              ParamType.String,
            ),
            equipamento2: params.getParam(
              'equipamento2',
              ParamType.String,
            ),
            motivo2: params.getParam(
              'motivo2',
              ParamType.String,
            ),
            descricaoFoto2: params.getParam(
              'descricaoFoto2',
              ParamType.String,
            ),
            descricaoAcao2: params.getParam(
              'descricaoAcao2',
              ParamType.String,
            ),
            prazo2: params.getParam(
              'prazo2',
              ParamType.String,
            ),
            status2: params.getParam(
              'status2',
              ParamType.String,
            ),
            tipoInspecao3: params.getParam(
              'tipoInspecao3',
              ParamType.String,
            ),
            equipamento3: params.getParam(
              'equipamento3',
              ParamType.String,
            ),
            motivo3: params.getParam(
              'motivo3',
              ParamType.String,
            ),
            descricaoFoto3: params.getParam(
              'descricaoFoto3',
              ParamType.String,
            ),
            descricaoAcao3: params.getParam(
              'descricaoAcao3',
              ParamType.String,
            ),
            prazo3: params.getParam(
              'prazo3',
              ParamType.String,
            ),
            status3: params.getParam(
              'status3',
              ParamType.String,
            ),
            tipoInspecao4: params.getParam(
              'tipoInspecao4',
              ParamType.String,
            ),
            equipamento4: params.getParam(
              'equipamento4',
              ParamType.String,
            ),
            motivo4: params.getParam(
              'motivo4',
              ParamType.String,
            ),
            descricaoFoto4: params.getParam(
              'descricaoFoto4',
              ParamType.String,
            ),
            descricaoAcao4: params.getParam(
              'descricaoAcao4',
              ParamType.String,
            ),
            prazo4: params.getParam(
              'prazo4',
              ParamType.String,
            ),
            status4: params.getParam(
              'status4',
              ParamType.String,
            ),
            tipoInspecao5: params.getParam(
              'tipoInspecao5',
              ParamType.String,
            ),
            equipamento5: params.getParam(
              'equipamento5',
              ParamType.String,
            ),
            motivo5: params.getParam(
              'motivo5',
              ParamType.String,
            ),
            descricaoFoto5: params.getParam(
              'descricaoFoto5',
              ParamType.String,
            ),
            prazo5: params.getParam(
              'prazo5',
              ParamType.String,
            ),
            status5: params.getParam(
              'status5',
              ParamType.String,
            ),
            tipoInspecao6: params.getParam(
              'tipoInspecao6',
              ParamType.String,
            ),
            equipamento6: params.getParam(
              'equipamento6',
              ParamType.String,
            ),
            motivo6: params.getParam(
              'motivo6',
              ParamType.String,
            ),
            descricaoFoto6: params.getParam(
              'descricaoFoto6',
              ParamType.String,
            ),
            descricaoAcao6: params.getParam(
              'descricaoAcao6',
              ParamType.String,
            ),
            prazo6: params.getParam(
              'prazo6',
              ParamType.String,
            ),
            status6: params.getParam(
              'status6',
              ParamType.String,
            ),
            descricaoAcao5: params.getParam(
              'descricaoAcao5',
              ParamType.String,
            ),
            tipoInspecao7: params.getParam(
              'tipoInspecao7',
              ParamType.String,
            ),
            equipamento7: params.getParam(
              'equipamento7',
              ParamType.String,
            ),
            motivo7: params.getParam(
              'motivo7',
              ParamType.String,
            ),
            descricaoFoto7: params.getParam(
              'descricaoFoto7',
              ParamType.String,
            ),
            descricaoAcao7: params.getParam(
              'descricaoAcao7',
              ParamType.String,
            ),
            prazo7: params.getParam(
              'prazo7',
              ParamType.String,
            ),
            status7: params.getParam(
              'status7',
              ParamType.String,
            ),
            tipoInspecao8: params.getParam(
              'tipoInspecao8',
              ParamType.String,
            ),
            equipamento8: params.getParam(
              'equipamento8',
              ParamType.String,
            ),
            motivo8: params.getParam(
              'motivo8',
              ParamType.String,
            ),
            descricaoFoto8: params.getParam(
              'descricaoFoto8',
              ParamType.String,
            ),
            descricaoAcao8: params.getParam(
              'descricaoAcao8',
              ParamType.String,
            ),
            prazo8: params.getParam(
              'prazo8',
              ParamType.String,
            ),
            status8: params.getParam(
              'status8',
              ParamType.String,
            ),
            tipoInspecao9: params.getParam(
              'tipoInspecao9',
              ParamType.String,
            ),
            equipamento9: params.getParam(
              'equipamento9',
              ParamType.String,
            ),
            motivo9: params.getParam(
              'motivo9',
              ParamType.String,
            ),
            descricaoFoto9: params.getParam(
              'descricaoFoto9',
              ParamType.String,
            ),
            descricaoAcao9: params.getParam(
              'descricaoAcao9',
              ParamType.String,
            ),
            prazo9: params.getParam(
              'prazo9',
              ParamType.String,
            ),
            status9: params.getParam(
              'status9',
              ParamType.String,
            ),
            tipoInspecao10: params.getParam(
              'tipoInspecao10',
              ParamType.String,
            ),
            equipamento10: params.getParam(
              'equipamento10',
              ParamType.String,
            ),
            motivo10: params.getParam(
              'motivo10',
              ParamType.String,
            ),
            descricaoFoto10: params.getParam(
              'descricaoFoto10',
              ParamType.String,
            ),
            descricaoAcao10: params.getParam(
              'descricaoAcao10',
              ParamType.String,
            ),
            prazo10: params.getParam(
              'prazo10',
              ParamType.String,
            ),
            status10: params.getParam(
              'status10',
              ParamType.String,
            ),
            campos: params.getParam(
              'campos',
              ParamType.int,
            ),
            impedimento1: params.getParam(
              'impedimento1',
              ParamType.int,
            ),
            impedimento2: params.getParam(
              'impedimento2',
              ParamType.int,
            ),
            impedimento3: params.getParam(
              'impedimento3',
              ParamType.int,
            ),
            impedimento4: params.getParam(
              'impedimento4',
              ParamType.int,
            ),
            impedimento5: params.getParam(
              'impedimento5',
              ParamType.int,
            ),
            impedimento6: params.getParam(
              'impedimento6',
              ParamType.int,
            ),
            impedimento7: params.getParam(
              'impedimento7',
              ParamType.int,
            ),
            impedimento8: params.getParam(
              'impedimento8',
              ParamType.int,
            ),
            impedimento9: params.getParam(
              'impedimento9',
              ParamType.int,
            ),
            impedimento10: params.getParam(
              'impedimento10',
              ParamType.int,
            ),
            txfCliente: params.getParam(
              'txfCliente',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: LFormsCopyOfflineWidget.routeName,
          path: LFormsCopyOfflineWidget.routePath,
          builder: (context, params) => LFormsCopyOfflineWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/homePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
