import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/bloc/counter_bloc.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/cubit/counter_cubit.dart';
import 'package:flutter_pizza_bloc/login/bloc/auth_bloc.dart';
import 'package:flutter_pizza_bloc/routes/route_consts.dart';
import 'package:flutter_pizza_bloc/routes/routes.dart';
import 'package:flutter_pizza_bloc/todo/cubit/todo_cubit.dart';
import 'package:flutter_pizza_bloc/weather/bloc/weather_bloc.dart';
import 'package:flutter_pizza_bloc/weather/consts.dart';
import 'package:flutter_pizza_bloc/weather/data/data_provider/http_service.dart';
import 'package:flutter_pizza_bloc/weather/data/data_provider/weather_data_provider.dart';
import 'package:flutter_pizza_bloc/weather/data/repository/weather_repository.dart';

import 'app_bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => WeatherRepository(
        WeatherDataProvider()
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => CounterCubit()),
          BlocProvider(create: (_) => CounterBloc()),
          BlocProvider(create: (_) => TodoCubit()),
          BlocProvider(create: (_) => AuthBloc()),
          BlocProvider(create: (weatherContext) => WeatherBloc(
            weatherContext.read<WeatherRepository>()
          ))
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: routes,
          initialRoute: HOME_PAGE,
        ),
      ),
    );
  }
}
