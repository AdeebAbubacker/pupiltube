import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeMap(
            logoutSuccess: (value) {
              AppRouteService.navigateToIntroScreenCleared(context);
            },
            logoutFailure: (value) {
              print('failure');
            },
            orElse: () {});
      },
      child: Scaffold(
        body: Column(
          children: [
            Text("Admin SCreen coming soon"),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context)
                      .add(LoginEvent.logoutRequested());
                },
                child: Text("logout"))
          ],
        ),
      ),
    );
  }
}
