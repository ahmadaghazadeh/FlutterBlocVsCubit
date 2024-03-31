

import 'package:flutter/material.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/bloc_cubit_page.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/inc_dec_page.dart';
import 'package:flutter_pizza_bloc/home_page.dart';
import 'package:flutter_pizza_bloc/login/login_home_screen.dart';
import 'package:flutter_pizza_bloc/login/login_screen.dart';
import 'package:flutter_pizza_bloc/routes/route_consts.dart';
import 'package:flutter_pizza_bloc/todo/add_todo_page.dart';
import 'package:flutter_pizza_bloc/todo/todo_list.dart';

Map<String, Widget Function(BuildContext)> routes = {
  HOME_PAGE: (context) => const MyHomePage(),
  BLOC_CUBIT_PAGE: (context) => const MyBlocCubitPage(title: "Understand Bloc and Cubit"),
  INC_DEC_PAGE: (context) => const IncDecPage(),
  ADD_TODO_PAGE: (context) => const AddTodoPage(),
  TODO_LIST: (context) => const TodoList(),
  LOGIN_PAGE: (context) => const LoginScreen(),
  LOGIN_HOME_PAGE: (context) => const LoginHomeScreen(),
};