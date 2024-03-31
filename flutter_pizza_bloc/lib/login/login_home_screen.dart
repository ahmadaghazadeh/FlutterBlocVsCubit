import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pizza_bloc/login/widgets/gradient_button.dart';
import 'package:flutter_pizza_bloc/routes/route_consts.dart';

import 'bloc/auth_bloc.dart';
 
class LoginHomeScreen extends StatelessWidget {
  const LoginHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthInitial) {
            Navigator.pushNamed(context, LOGIN_PAGE);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is AuthSuccess) {
            return Center(
              child: Column(
                children: [
                  Text((state as AuthSuccess).uid),
                  GradientButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(AuthLogoutRequested());
                    },
                  ),
                ],
              ),
            );
          }
          return const Placeholder();
        },
      ),
    );
  }
}