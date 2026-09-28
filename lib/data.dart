class Story {
  final int id;
  final String name;
  final String imageFileName;
  final String iconFileName;
  final bool isViewed;

  Story({
    required this.id,
    required this.name,
    required this.imageFileName,
    required this.iconFileName,
    required this.isViewed,
  });
}

class Itemboard {
  final String boardtitle;
  final String boarddescription;
  int pageboard;

  Itemboard({
    required this.boardtitle,
    required this.boarddescription,
    required this.pageboard,
  });
}

class Category {
  final int id;
  final String title;
  final String imageFileName;

  Category({
    required this.id,
    required this.title,
    required this.imageFileName,
  });
}

class Post {
  final int id;
  final String title;
  final String caption;
  final String isLiked;
  final String likes;
  final String time;
  final String imageFileName;

  Post({
    required this.id,
    required this.title,
    required this.caption,
    required this.isLiked,
    required this.likes,
    required this.time,
    required this.imageFileName,
  });
}

class AppDatabase {
  static List<Story> get stories {
    return [
      Story(
        id: 1001,
        name: 'Emilia',
        imageFileName: 'story_1.jpg',
        iconFileName: 'category_1.png',
        isViewed: false,
      ),
      Story(
        id: 1002,
        name: 'Richard',
        imageFileName: 'story_2.jpg',
        iconFileName: 'category_2.png',
        isViewed: true,
      ),
      Story(
        id: 1003,
        name: 'Jasmine',
        imageFileName: 'story_3.jpg',
        iconFileName: 'category_3.png',
        isViewed: false,
      ),
      Story(
        id: 1004,
        name: 'Lucas',
        imageFileName: 'story_4.jpg',
        iconFileName: 'category_4.png',
        isViewed: false,
      ),
      Story(
        id: 1005,
        name: 'Hendri',
        imageFileName: 'story_5.jpg',
        iconFileName: 'category_2.png',
        isViewed: false,
      ),
      Story(
        id: 1006,
        name: 'Hendri',
        imageFileName: 'story_6.jpg',
        iconFileName: 'category_1.png',
        isViewed: false,
      ),
      Story(
        id: 1007,
        name: 'Hendri',
        imageFileName: 'story_7.jpg',
        iconFileName: 'category_4.png',
        isViewed: false,
      ),
      Story(
        id: 1008,
        name: 'Hendri',
        imageFileName: 'story_8.jpg',
        iconFileName: 'category_3.png',
        isViewed: false,
      ),
    ];
  }

  static List<Itemboard> get itemboard {
    return [
      Itemboard(
        pageboard: 0,
        boardtitle: "Read the article you want instantly",
        boarddescription: "you can read the thousand of articles on Blog Club save them in the application and share them with your loved ones.",
      ),
      Itemboard(
        pageboard: 1,
        boardtitle: "Hear the best Rock band in the world",
        boarddescription: "first thing first im about to say all the world is inside my head im fire up the tired.",
      ),
      Itemboard(
        pageboard: 2,
        boardtitle: "One of the greatest of all time",
        boarddescription: "one thing i dont know why it doesn't even matter how hard you try keep that in mind i designed this ryhme.",
      ),
    ];
  }

  static List<Category> get categories {
    return [
      Category(id: 101, title: 'Technology', imageFileName: 'large_post_1.jpg'),
      Category(id: 102, title: 'Adventure', imageFileName: 'large_post_2.jpg'),
      Category(id: 103, title: 'Sports', imageFileName: 'large_post_3.jpg'),
      Category(id: 104, title: 'Politics', imageFileName: 'large_post_4.jpg'),
      Category(id: 105, title: 'Science', imageFileName: 'large_post_5.jpg'),
      Category(
        id: 106,
        title: 'Car and Motorcycles',
        imageFileName: 'large_post_6.jpg',
      ),
    ];
  }

  static List<Post> get posts {
    return [
      Post(
        id: 1,
        title: 'BMW M5 CS: The Most Powerful BMW Ever',
        caption: 'Automobile',
        isLiked: 'false',
        likes: '3.1k',
        time: '1hr ago',
        imageFileName: 'small_post_1.jpg',
      ),
      Post(
        id: 2,
        title: 'MacBook Pro with M-Chip Family Unleashed',
        caption: 'Technology',
        isLiked: 'true',
        likes: '1.2k',
        time: '2hr ago',
        imageFileName: 'small_post_2.jpg',
      ),
      Post(
        id: 3,
        title: 'Step Inside the World of Virtual Reality',
        caption: 'Science',
        isLiked: 'false',
        likes: '850',
        time: '4hr ago',
        imageFileName: 'small_post_3.jpg',
      ),
      Post(
        id: 4,
        title: 'Riding on a bike',
        caption: 'LifeStyle',
        isLiked: 'true',
        likes: '460',
        time: '6hr ago',
        imageFileName: 'small_post_4.jpg',
      ),
      Post(
        id: 5,
        title: 'BMW M5 CS: The Most Powerful BMW Ever',
        caption: 'Automobile',
        isLiked: 'false',
        likes: '3.1k',
        time: '1hr ago',
        imageFileName: 'small_post_1.jpg',
      ),
      Post(
        id: 6,
        title: 'MacBook Pro with M-Chip Family Unleashed',
        caption: 'Technology',
        isLiked: 'true',
        likes: '1.2k',
        time: '2hr ago',
        imageFileName: 'small_post_2.jpg',
      ),
      Post(
        id: 7,
        title: 'Step Inside the World of Virtual Reality',
        caption: 'Science',
        isLiked: 'false',
        likes: '850',
        time: '4hr ago',
        imageFileName: 'small_post_3.jpg',
      ),
      Post(
        id: 8,
        title: 'Riding on a bike',
        caption: 'LifeStyle',
        isLiked: 'true',
        likes: '460',
        time: '6hr ago',
        imageFileName: 'small_post_4.jpg',
      ),
      Post(
        id: 9,
        title: 'BMW M5 CS: The Most Powerful BMW Ever',
        caption: 'Automobile',
        isLiked: 'false',
        likes: '3.1k',
        time: '1hr ago',
        imageFileName: 'small_post_1.jpg',
      ),
      Post(
        id: 10,
        title: 'MacBook Pro with M-Chip Family Unleashed',
        caption: 'Technology',
        isLiked: 'true',
        likes: '1.2k',
        time: '2hr ago',
        imageFileName: 'small_post_2.jpg',
      ),
      Post(
        id: 11,
        title: 'Step Inside the World of Virtual Reality',
        caption: 'Science',
        isLiked: 'false',
        likes: '850',
        time: '4hr ago',
        imageFileName: 'small_post_3.jpg',
      ),
      Post(
        id: 12,
        title: 'Riding on a bike',
        caption: 'LifeStyle',
        isLiked: 'true',
        likes: '460',
        time: '6hr ago',
        imageFileName: 'small_post_4.jpg',
      ),
      Post(
        id: 13,
        title: 'BMW M5 CS: The Most Powerful BMW Ever',
        caption: 'Automobile',
        isLiked: 'false',
        likes: '3.1k',
        time: '1hr ago',
        imageFileName: 'small_post_1.jpg',
      ),
      Post(
        id: 14,
        title: 'MacBook Pro with M-Chip Family Unleashed',
        caption: 'Technology',
        isLiked: 'true',
        likes: '1.2k',
        time: '2hr ago',
        imageFileName: 'small_post_2.jpg',
      ),
      Post(
        id: 15,
        title: 'Step Inside the World of Virtual Reality',
        caption: 'Science',
        isLiked: 'false',
        likes: '850',
        time: '4hr ago',
        imageFileName: 'small_post_3.jpg',
      ),
      Post(
        id: 16,
        title: 'Riding on a bike',
        caption: 'LifeStyle',
        isLiked: 'true',
        likes: '460',
        time: '6hr ago',
        imageFileName: 'small_post_4.jpg',
      ),
      Post(
        id: 17,
        title: 'BMW M5 CS: The Most Powerful BMW Ever',
        caption: 'Automobile',
        isLiked: 'false',
        likes: '3.1k',
        time: '1hr ago',
        imageFileName: 'small_post_1.jpg',
      ),
      Post(
        id: 18,
        title: 'MacBook Pro with M-Chip Family Unleashed',
        caption: 'Technology',
        isLiked: 'true',
        likes: '1.2k',
        time: '2hr ago',
        imageFileName: 'small_post_2.jpg',
      ),
      Post(
        id: 19,
        title: 'Step Inside the World of Virtual Reality',
        caption: 'Science',
        isLiked: 'false',
        likes: '850',
        time: '4hr ago',
        imageFileName: 'small_post_3.jpg',
      ),
      Post(
        id: 20,
        title: 'Riding on a bike',
        caption: 'LifeStyle',
        isLiked: 'true',
        likes: '460',
        time: '6hr ago',
        imageFileName: 'small_post_4.jpg',
      ),
    ];
  }
}
