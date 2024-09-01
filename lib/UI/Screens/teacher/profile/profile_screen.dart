import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:puppil/core/routes/app_route.dart';
import 'package:puppil/core/view_model/login/login_bloc.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

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
      child: Container(
        child: Column(
          children: [
            const Center(
              child: Text("Screen 5 "),
            ),
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context)
                      .add(const LoginEvent.logoutRequested());
                },
                child: const Text("logout"))
          ],
        ),
      ),
    );
  }
}
