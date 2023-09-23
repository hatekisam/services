import 'package:flutter/material.dart';
import 'package:socialservices/app/app.bottomsheets.dart';
import 'package:socialservices/app/app.dialogs.dart';
import 'package:socialservices/app/app.locator.dart';
import 'package:socialservices/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();

  final GraphQLClient graphQLClient = GraphQLClient(
      link: HttpLink("https://social.ext.envadel.com/graphql"),
      cache: GraphQLCache(store: HiveStore()));

  final client = ValueNotifier(graphQLClient);
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(GraphQLProvider(
    client: client,
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      theme: ThemeData(
        fontFamily: 'Outfit',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
