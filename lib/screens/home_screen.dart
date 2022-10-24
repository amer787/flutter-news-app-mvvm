import 'package:flutter/material.dart';
import 'package:mvvm_news_app/screens/general_screen.dart';
import 'package:mvvm_news_app/screens/health_screen.dart';
import 'package:mvvm_news_app/screens/science_screen.dart';
import 'package:mvvm_news_app/screens/technology_screen.dart';
import 'package:mvvm_news_app/screens/top_headlines_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "News App",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: const Color.fromARGB(255, 226, 223, 223)),
            isScrollable: true,
            tabs: const [
              Tab(text: "General"),
              Tab(text: "Health"),
              Tab(text: "Technology"),
              Tab(text: "Science"),
              Tab(text: "Top headlines"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            GeneralScreen(),
            HealthScreen(),
            TechnologyScreen(),
            ScienceScreen(),
            TopHeadlinesScreen(),
          ],
        ),
      ),
    );
  }
}
