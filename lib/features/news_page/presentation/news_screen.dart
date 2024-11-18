import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:rapl_club/features/news_page/presentation/article_details_screen.dart';
import 'package:rapl_club/features/news_page/presentation/video_player_screen.dart';
import 'package:share_plus/share_plus.dart';

@RoutePage()
class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  String selectedCategory = 'Все';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Новости'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Column(
        children: [
          // Filter Chips
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: ['Все', 'Бизнес-новости', 'Технологии', 'Финансы']
                  .map((category) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ChoiceChip(
                  label: Text(
                    category,
                    style: TextStyle(
                      color: selectedCategory == category ? Colors.white : Colors.black, // Text color changes based on selection
                    ),
                  ),
                  selected: selectedCategory == category,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0), // Rounded borders
                  ),
                  selectedColor: Colors.black, // Selected chip color
                  checkmarkColor: Colors.white, // White checkmark when selected
                  onSelected: (isSelected) {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                ),
              ))
                  .toList(),
            ),
          ),

          // Search Bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Поиск',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          // List of News
          Expanded(
            child: NewsListView(
              selectedCategory: selectedCategory,
            ),
          ),
        ],
      ),
    );
  }
}

class NewsListView extends StatelessWidget {
  final String selectedCategory;

  const NewsListView({required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Placeholder 300x300 Cards
        const NewsCard(
          imageUrl: 'https://via.placeholder.com/300',
          title: 'Открытие нового сезона бизнес-клуба',
          description: 'Мы рады объявить об открытии нового сезона...',
          isMultimedia: false,
          isLarge: true,
        ),
        NewsCard(
          imageUrl: 'https://via.placeholder.com/300',
          title: 'Видео о бизнес-клубе',
          description: 'Посмотрите увлекательное видео о новом сезоне...',
          isMultimedia: true,
          isLarge: true,
          duration: '15 мин',
          videoUrl: 'https://vimeo.com/76979871', // Replace with a real video URL
          onTap: (context, videoUrl) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ArticleDetailScreen(),
              ),
            );
          },
        ),
        // Smaller Cards
        const SmallNewsCard(
          imageUrl: 'https://via.placeholder.com/150',
          title: 'Мастер-класс по инвестициям',
          description: 'Приглашаем вас на мастер-класс по инвестициям...',
          timestamp: '16 мая 2023, 10:30',
          isMultimedia: true,
          duration: '5 мин',
          videoUrl: 'https://vimeo.com/76979871', // Replace with a real video URL
        ),
        const SmallNewsCard(
          imageUrl: 'https://via.placeholder.com/150',
          title: 'Мастер-класс по инвестициям',
          description: 'Приглашаем вас на мастер-класс по инвестициям...',
          timestamp: '16 мая 2023, 10:30',
          isMultimedia: true,
          duration: '5 мин',
          videoUrl: 'https://vimeo.com/76979871', // Replace with a real video URL
        ),
        const SmallNewsCard(
          imageUrl: 'https://via.placeholder.com/150',
          title: 'Мастер-класс по инвестициям',
          description: 'Приглашаем вас на мастер-класс по инвестициям...',
          timestamp: '16 мая 2023, 10:30',
          isMultimedia: true,
          duration: '5 мин',
          videoUrl: 'https://vimeo.com/76979871', // Replace with a real video URL
        ),
        const SmallNewsCard(
          imageUrl: 'https://via.placeholder.com/150',
          title: 'Мастер-класс по инвестициям',
          description: 'Приглашаем вас на мастер-класс по инвестициям...',
          timestamp: '16 мая 2023, 10:30',
          isMultimedia: true,
          duration: '5 мин',
          videoUrl: 'https://vimeo.com/76979871', // Replace with a real video URL
        ),
        const SmallNewsCard(
          imageUrl: 'https://via.placeholder.com/150',
          title: 'Мастер-класс по инвестициям',
          description: 'Приглашаем вас на мастер-класс по инвестициям...',
          timestamp: '16 мая 2023, 10:30',
          isMultimedia: true,
          duration: '5 мин',
          videoUrl: 'https://vimeo.com/76979871', // Replace with a real video URL
        ),
      ],
    );
  }
}

class NewsCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  final bool isMultimedia;
  final String? duration;
  final bool isLarge;
  final String? videoUrl;
  final Function(BuildContext context, String videoUrl)? onTap;

  const NewsCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.isMultimedia,
    this.duration,
    this.isLarge = false,
    this.videoUrl,
    this.onTap,
  });

  @override
  _NewsCardState createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  bool isLiked = false; // Track the like status

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap;
      },
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0), // Rounded card corners
        ),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with padding and rounded corners
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0), // Rounded corners for the image
                child: Image.network(
                  widget.imageUrl,
                  fit: BoxFit.cover,
                  height: widget.isLarge ? 200 : 150, // Adjust height as needed
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: widget.isLarge ? 18 : 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Сегодня, 12:44',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_border,
                        color: isLiked ? Colors.red : Colors.grey,
                      ),
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(isLiked
                                ? 'Вы поставили лайк!'
                                : 'Вы убрали лайк.'),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        Share.share('Check out this article: ${widget.title}');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




class SmallNewsCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String timestamp;
  final bool isMultimedia;
  final String? duration;
  final String? videoUrl;

  const SmallNewsCard({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.timestamp,
    this.isMultimedia = false,
    this.duration,
    this.videoUrl,
  });

  @override
  _SmallNewsCardState createState() => _SmallNewsCardState();
}

class _SmallNewsCardState extends State<SmallNewsCard> {
  bool isLiked = false; // Track the like status

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Rounded card corners
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Padding around the card content
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with padding and rounded corners
            Padding(
              padding: const EdgeInsets.only(right: 10.0), // Space between image and text
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0), // Rounded corners for the image
                child: Image.network(
                  widget.imageUrl,
                  width: 100, // Slightly larger width
                  height: 100, // Slightly larger height
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Text Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10),
                  Text(
                    widget.timestamp,
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ],
              ),
            ),
            // Action Buttons
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(isLiked
                            ? 'Вы поставили лайк!'
                            : 'Вы убрали лайк.'),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    Share.share('Check out this article: ${widget.title}');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



