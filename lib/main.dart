import 'package:flutter/material.dart';
import 'CourseList/course_list.dart';
import 'Dashboard/DashboardPage.dart';
import 'Discussion/discussion_topic_list.dart';
import 'Login/Login.dart';

import 'ModuleList/module_list_detail.dart';
import 'ModuleList/video_player_module.dart';
import 'ModuleList/youtube_module.dart';
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
    '/DashboardPage': (BuildContext context) => new DashboardPage(),
    '/DiscussionTopicListPage': (BuildContext context) => new DiscussionTopicListPage(),
    '/NotificationPage': (BuildContext context) => new NotificationPage(),
    '/CourseListPage': (BuildContext context) => new CourseListPage(),
    '/ModuleListDetailPage': (BuildContext context) => new ModuleListDetailPage(),
    '/VideoPlayerModulePage ': (BuildContext context) => new VideoPlayerModulePage(),





  },
));