import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:page_router/page_router.dart';
import 'package:unified_v2_app/data/repository/rates_repository_impl.dart';
import 'package:unified_v2_app/data/source/network/api/rates_api_service.dart';
import 'package:unified_v2_app/data/source/network/rates_data_source.dart';
import 'package:unified_v2_app/domain/repository/rates_repository.dart';
import 'package:unified_v2_app/domain/usecase/get_rates_usecase.dart';
import 'package:unified_v2_app/presentation/pages/authorization/authorization_page.dart';
import 'package:unified_v2_app/presentation/pages/home/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unified_v2_app/theme.dart';

// This is our global ServiceLocator

GetIt getIt = GetIt.instance;


/// Custom [BlocObserver] which observes all bloc and cubit instances.
class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onChange(Cubit cubit, Change change) {
    print(change);
    super.onChange(cubit, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Cubit cubit, Object error, StackTrace stackTrace) {
    print(error);
    super.onError(cubit, error, stackTrace);
  }
}

void main() {


  getIt.registerSingleton<RatesDataSource>(RatesDataSource(RatesApiService(Dio())),
      signalsReady: true);

  getIt.registerSingleton<RatesRepository>(RatesRepositoryImpl(getIt<RatesDataSource>()),
      signalsReady: true);

  getIt.registerFactory<GetRatesUseCase>(() {
    return GetRatesUseCase(getIt<RatesRepository>());
  });

  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  final routeData = PageRouterData({
    '/': (context, params) => MaterialPage(
          key: ValueKey('/'),
          child: AuthorizationPage(),
        ),
    '/home': (context, params) => MaterialPage(
          key: ValueKey('/home'),
          child: HomePage(
            title: "Home",
          ),
        ),
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (_, theme) {
          return PageRouter(
            data: routeData,
            child: MaterialApp.router(
              title: 'Flutter Demo',
              theme: theme,
              routerDelegate: routeData.routerDelegate,
              routeInformationParser: routeData.informationParser,
            ),
          );
        },
      ),
    );
  }
}

