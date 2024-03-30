import 'package:flutter/material.dart';
import 'package:flutter_pizza_bloc/bloc/counter_bloc.dart';
import 'package:flutter_pizza_bloc/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pizza_bloc/inc_dec_page.dart';
class MyHomePage  extends StatelessWidget {
  const MyHomePage ({super.key});
  
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
            home: const HomePage(title: 'Flutter Demo Home Page'),
          ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
        final counterCubit = BlocProvider.of<CounterCubit>(context);
        final counterBloc = BlocProvider.of<CounterBloc>(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Cubit Counter:',
                ),
                BlocBuilder<CounterCubit,int>(
                  builder: (context,counter) {
                  return Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
                const Text(
                  'Bloc Counter:',
                ),
                BlocBuilder<CounterBloc,int>(
                  builder: (context,counter) {
                  return Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment:MainAxisAlignment.end ,
            children: [
             
              FloatingActionButton(
                onPressed: (){
                   Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const IncDecPage(),
                    ),
                  );
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.navigate_next),
              ),
            ],
          ),
        );
      }
}
