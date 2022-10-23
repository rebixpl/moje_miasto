import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moje_miasto/app/app.dart';
import 'package:moje_miasto/blocs/userFS/bloc/userfs_bloc.dart';
import 'package:moje_miasto/blocs/userFS/repo/userfs_repo.dart';
import 'package:moje_miasto/routes/routes.dart';
import 'package:moje_miasto/screens/page_view_screen/widgets/custom_bottom_navbar/cubit/cb_navbar_cubit.dart';
import 'package:moje_miasto/theme.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    required AuthenticationRepository authenticationRepository,
  }) : _authenticationRepository = authenticationRepository;

  final AuthenticationRepository _authenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: _authenticationRepository,
        ),
        // Inject UserFS repository
        RepositoryProvider(
          create: (context) => UserFSRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            // AppBloc just logs / registers the user with firebase auth, that's it
            create: (context) => AppBloc(
              authenticationRepository: _authenticationRepository,
            ),
          ),
          // inject the UserFS BLOC
          BlocProvider(
            // UserFSBloc makes user an account in firebase and uploads the user data there
            create: (context) => UserFSBloc(
              userFSRepository:
                  RepositoryProvider.of<UserFSRepository>(context),
            ),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PageViewNavCubit(),
      child: MaterialApp(
        title: 'Moje Miasto',
        theme: theme,
        // home: LoginScreen(),
        home: FlowBuilder<AppStatus>(
          state: context.select((AppBloc bloc) => bloc.state.status),
          onGeneratePages: onGenerateAppViewPages,
        ),
      ),
    );
  }
}
