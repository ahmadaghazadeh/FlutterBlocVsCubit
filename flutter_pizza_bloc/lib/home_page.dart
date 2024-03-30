import 'package:flutter/material.dart';
import 'package:flutter_pizza_bloc/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pizza_bloc/cubit/inc_dec_cubit.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
      
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          floatingActionButton: Column(
            mainAxisAlignment:MainAxisAlignment.end ,
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const IncDecPage(),
                    ),
                  );
                },
                child: const Icon(Icons.navigate_next),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const IncDecPage(),
                    ),
                  );
                },
                child: const Icon(Icons.navigate_next),
              ),
            ],
          ),
        );
      }
}
