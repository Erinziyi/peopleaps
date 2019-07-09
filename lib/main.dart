import 'package:flutter/material.dart';
import 'ChangePassword/change_password_page.dart';
import 'CourseList/course_list.dart';
import 'Dashboard/DashboardPage.dart';
import 'Discussion/discussion_topic_list.dart';
import 'GetStarted/GetStartedStepper.dart';
import 'Login/Login.dart';


import 'ModuleList/module_list_detail.dart';
import 'ModuleList/video_player_module.dart';
import 'NotificationList/notification_view.dart';
import 'OnBoarding/OnBoardingPage.dart';
import 'SplashScreen/SplashScreenPage.dart';



void main() =>   runApp(new MaterialApp(

  debugShowCheckedModeBanner: false,
  home: new SplashScreenPage(),
  routes: <String, WidgetBuilder>{

    '/SplashScreenPage': (BuildContext context) => new SplashScreenPage(),
    '/OnboardingMainPage': (BuildContext context) => new OnboardingMainPage(),
    '/LoginPage': (BuildContext context) => new LoginPage(),
    '/ChangePasswordPage': (BuildContext context) => new ChangePasswordPage(),
    '/DashboardPage': (BuildContext context) => new DashboardPage(),
    '/DiscussionTopicListPage': (BuildContext context) => new DiscussionTopicListPage(),
    '/NotificationPage': (BuildContext context) => new NotificationPage(),
    '/CourseListPage': (BuildContext context) => new CourseListPage(),
    '/ModuleListDetailPage': (BuildContext context) => new ModuleListDetailPage(),
    '/VideoPlayerModulePage': (BuildContext context) => new VideoPlayerModulePage(),
    '/GetStartedPage': (BuildContext context) => new GetStartedPage(),






  },
));