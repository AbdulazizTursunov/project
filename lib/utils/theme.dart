import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/utils/app_colorss.dart';


class AppTheme{
  static ThemeData lightTheme=ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      appBarTheme:  AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.white,
          titleTextStyle: TextStyle(
              color: AppColors.white
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.white,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark
          )
      ),
      textTheme:  TextTheme(
        //display
          displayLarge: TextStyle(
              color: AppColors.black,
              fontSize: 57,
              fontWeight: FontWeight.w800,
              fontFamily: 'Rosarivo'
          ),
          displayMedium: TextStyle(
              color: AppColors.black,
              fontSize: 47,
              fontWeight: FontWeight.w700,
              fontFamily: 'Rosarivo'
          ),
          displaySmall: TextStyle(
              color: AppColors.black,
              fontSize: 36,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rosarivo'
          ),
          //headline
          headlineLarge: TextStyle(
              color: AppColors.black,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              fontFamily: 'Rosarivo'
          ),
          headlineMedium: TextStyle(
              color: AppColors.black,
              fontSize: 28,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          headlineSmall: TextStyle(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'Rosarivo'
          ),
          //title
          titleLarge: TextStyle(
              color: AppColors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rosarivo'
          ),
          titleMedium: TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rosarivo'
          ),
          titleSmall: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          //label
          labelLarge: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rosarivo'
          ),
          labelMedium: TextStyle(
              color: AppColors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          labelSmall: TextStyle(
              color: AppColors.black,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          //body
          bodyLarge: TextStyle(
              color: AppColors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          bodyMedium: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          bodySmall: TextStyle(
              color: AppColors.black,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          )

      )
  );

  static ThemeData darkTheme=ThemeData(
      scaffoldBackgroundColor: AppColors.black,
      appBarTheme:  AppBarTheme(
          backgroundColor: AppColors.black,
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.black,
              statusBarBrightness: Brightness.light,
              statusBarIconBrightness: Brightness.light
          )
      ),
      textTheme:  TextTheme(
        //display
          displayLarge: TextStyle(
              color: AppColors.white,
              fontSize: 57,
              fontWeight: FontWeight.w800,
              fontFamily: 'Rosarivo'
          ),
          displayMedium: TextStyle(
              color: AppColors.white,
              fontSize: 45,
              fontWeight: FontWeight.w700,
              fontFamily: 'Rosarivo'
          ),
          displaySmall: TextStyle(
              color: AppColors.white,
              fontSize: 36,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rosarivo'
          ),
          //headline
          headlineLarge: TextStyle(
              color: AppColors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              fontFamily: 'Rosarivo'
          ),
          headlineMedium: TextStyle(
              color: AppColors.white,
              fontSize: 28,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          headlineSmall: TextStyle(
              color: AppColors.white,
              fontSize: 24,
              fontWeight: FontWeight.w400,
              fontFamily: 'Rosarivo'

          ),
          //title
          titleLarge: TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rosarivo'
          ),
          titleMedium: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rosarivo'
          ),
          titleSmall: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          //label
          labelLarge: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: 'Rosarivo'
          ),
          labelMedium: TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          labelSmall: TextStyle(
              color: AppColors.white,
              fontSize: 11,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          //body
          bodyLarge: TextStyle(
              color: AppColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          bodyMedium: TextStyle(
              color: AppColors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          ),
          bodySmall: TextStyle(
              color: AppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Rosarivo'
          )

      )
  );
}