import 'package:flutter/material.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/bloc/counter_bloc.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/inc_dec_page.dart';
import 'package:flutter_pizza_bloc/routes/route_consts.dart';
class MyBlocCubitPage  extends StatelessWidget {
  const MyBlocCubitPage ({super.key,required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
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
                    Navigator.pushReplacementNamed(context, INC_DEC_PAGE);
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.navigate_next),
              ),
            ],
          ),
        );
 }
}


 
