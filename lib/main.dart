import 'package:book/Features/home/data/repos/home_repo_impl.dart';
import 'package:book/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:book/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:book/constants.dart';

import 'package:book/core/utils/app_router.dart';
import 'package:book/core/utils/service_locator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator(); //الاستدعاء
  runApp(const BookIyApp());
}

class BookIyApp extends StatelessWidget {
  const BookIyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //النسخه التي تكرار
        // BlocProvider(
        //     create: (context) => FeaturedBooksCubit(HomeRepoImpl(ApiService(
        //           Dio(),
        //         ))))
        //نسخه اتصل واحده فقط
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
            //استدعاء الرابط
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}

//Pubspec Assist
// Ctrl+Shift+P
