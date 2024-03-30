import 'package:flutter/material.dart';
import 'package:flutter_pizza_bloc/bloc_cubit/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pizza_bloc/routes/route_consts.dart';
class MyHomePage  extends StatelessWidget {
  const MyHomePage ({super.key});
  
  @override
  Widget build(BuildContext context) {
       return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text("TITLE"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: const EdgeInsets.all(8),
                child:  ElevatedButton( onPressed: () {
                      Navigator.pushNamed(context, BLOC_CUBIT_PAGE);
                }, child: const Text("Bloc And Cubit"),),)
               ,
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton( onPressed: () {
                    Navigator.pushNamed(context, TODO_LIST);
                  }, child: const Text("TODO List"),),
                )
              ],
            ),
          ),
        );
}
}
 