import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Catdemo extends StatefulWidget {
  const Catdemo({super.key});

  @override
  State<Catdemo> createState() => _CatdemoState();
}

class _CatdemoState extends State<Catdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            collapsedHeight: 60,
            pinned: true,
            leading: Icon(Icons.bar_chart),
            title: Text('App'),
            centerTitle: true,
            backgroundColor: Colors.black,
            expandedHeight: MediaQuery.of(context).size.height / 2,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                  'https://blacknerdproblems.com/wp-content/uploads/2017/07/spm18cover.png',
                  fit: BoxFit.cover),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    child: Image.network(
                  'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/7537d939-3b91-48c5-b128-e916f5a0550e/df40zcd-0d2cc981-e316-4268-944a-158ccb8a6761.png/v1/fill/w_1280,h_1428,q_80,strp/spider_man___black_suit_by_nikoalecsovich_df40zcd-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQyOCIsInBhdGgiOiJcL2ZcLzc1MzdkOTM5LTNiOTEtNDhjNS1iMTI4LWU5MTZmNWEwNTUwZVwvZGY0MHpjZC0wZDJjYzk4MS1lMzE2LTQyNjgtOTQ0YS0xNThjY2I4YTY3NjEucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.yALwvvUDfujXj553iGThXBA9q1jMM_phJdaKIktGlbI',
                  fit: BoxFit.cover,
                )),
                SizedBox(
                  height: 10,
                ),
                Container(height: 500, child: Text('SpiderMan')),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Image.network(
                    'https://cdn.marvel.com/u/prod/marvel/i/mg/3/00/6305074d4f03e/clean.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(height: 500, child: Text('SpiderMan')),
                Container(height: 500, child: Text('SpiderMan')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
