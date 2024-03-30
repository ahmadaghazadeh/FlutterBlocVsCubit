import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/bloc/counter_bloc.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/cubit/counter_cubit.dart';
import 'package:flutter_pizza_bloc/home_page.dart';
import 'package:flutter_pizza_bloc/routes/route_consts.dart';
import 'package:flutter_pizza_bloc/routes/routes.dart';
import 'package:flutter_pizza_bloc/todo/cubit/todo_cubit.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CounterCubit()),
        BlocProvider(create: (_) => CounterBloc()),
        BlocProvider(create: (_) => TodoCubit())
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
    );
  }
}

