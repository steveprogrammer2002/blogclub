import 'package:blogclub/data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final stories = AppDatabase.stories;
    final posts = AppDatabase.posts;
    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi, Jonathan!",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Image.asset(
                      "assets/img/icons/notification.png",
                      width: 35,
                      height: 35,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 12),
                child: Row(
                  children: [
                    Text(
                      "Explore today's",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 130,
                child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(32, 12, 32, 0),
                  itemCount: stories.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final story = stories[index];
                    return Column(
                      children: [
                        Stack(
                          children: [
                            story.isViewed
                                ? _profileimageviewed(story)
                                : _profileimagenormal(story),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Image.asset(
                                "assets/img/icons/${story.iconFileName}",
                                width: 20,
                                height: 20,
                              ),
                            ),
                          ],
                        ),

                        Text(
                          story.name,
                          style: Theme.of(context).textTheme.headlineSmall!
                              .copyWith(fontSize: 16),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              CategorList(),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Latest News",
                      style: Theme.of(context).textTheme.headlineLarge!
                          .copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),
                    ),
                    Text(
                      "More",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Color(0xdd376AED),
                        fontWeight: FontWeight.w500,
                        shadows: [
                          BoxShadow(
                            color: Colors.blue,
                            blurRadius: 1,
                            blurStyle: BlurStyle.outer,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              PostListView(posts: posts),
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileimagenormal(Story story) {
    return Container(
      margin: EdgeInsets.all(4),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [Color(0xff376AED), Color(0xff49B0E2), Color(0xff9CECFB)],
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        padding: EdgeInsets.all(8),
        child: _profileimage(story),
      ),
    );
  }

  Widget _profileimageviewed(Story story) {
    return Container(
      width: 80,
      height: 80,
      margin: EdgeInsets.all(4),
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          dashPattern: [5, 3],
          strokeWidth: 2,
          radius: Radius.circular(22),
          color: Color(0xdd7b8bb2),
        ),
        child: Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
          child: _profileimage(story),
        ),
      ),
    );
  }

  Widget _profileimage(Story story) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Image.asset("assets/img/stories/${story.imageFileName}"),
    );
  }
}

class PostListView extends StatelessWidget {
  const new({super.key, required this.posts});

  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: posts.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.fromLTRB(32, 12, 32, 12),
      itemBuilder: (context, index) {
        final postlist = posts[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/img/posts/small/${postlist.imageFileName}",
                  width: 80,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postlist.caption,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      postlist.title,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.hand_thumbsup, size: 17),
                        SizedBox(width: 2),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            postlist.likes,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),

                        SizedBox(width: 30),
                        Icon(CupertinoIcons.clock, size: 17),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            postlist.time,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CategorList extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = AppDatabase.categories;
    return CarouselSlider.builder(
      itemCount: categories.length,
      itemBuilder: (context, index, realindex) {
        final catlist = categories[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Stack(
            children: [
              Positioned.fill(
                top: 100,
                right: 30,
                left: 30,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(color: Color(0xdd0D253C), blurRadius: 30),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/img/posts/large/${catlist.imageFileName}",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [Color(0xdd0D253C), Colors.transparent],
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 30,
                child: Text(
                  catlist.title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: 350,
        autoPlay: true,
        padEnds: true,
        autoPlayInterval: Duration(seconds: 5),
        enlargeCenterPage: true,
        viewportFraction: 0.8,
        enableInfiniteScroll: false,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
