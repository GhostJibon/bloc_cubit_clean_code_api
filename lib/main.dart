import 'package:api_bloc_cubit/config/const/dependency_injector.dart';
import 'package:api_bloc_cubit/config/const/state_management_provider.dart';
import 'package:api_bloc_cubit/config/navigation/app_route.dart';
import 'package:api_bloc_cubit/config/observer/navigation_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


void main() async {

   WidgetsFlutterBinding.ensureInitialized();
   final AppRoute router = AppRoute();
  await configureDependencies();
   runApp(MultiProvider(
    
        providers: StateManagementProviders.providers,
    
    child: MyApp(router: router,),
    ));
}
 
class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
    required this.router,
  });
  final AppRoute router;

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
            return  MaterialApp(
              debugShowCheckedModeBanner: false,
              navigatorObservers: [CustomNavigationObserver()],
              navigatorKey: AppRoute.navigatorKey,
              onGenerateRoute: widget.router.generateRoute,
           
            );
      },
    );
  }
}
