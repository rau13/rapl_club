import 'package:flutter/material.dart';

class ArticleDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Комментарий добавлен'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Share action
            },
          ),
          IconButton(
            icon: Icon(Icons.bookmark_border),
            onPressed: () {
              // Save action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Article Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                'https://via.placeholder.com/300', // Replace with article image URL
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0),
            // Article Title
            Text(
              'Открытие нового сезона бизнес-клуба',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            // Article Description
            Text(
              'Мы рады объявить об открытии нового сезона нашего бизнес-клуба! Присоединяйтесь к нам на первый встрече, где вас ждут захватывающие презентации, новые возможности для нетворкинга и интересные проекты.',
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            ),
            SizedBox(height: 16.0),
            // Tags
            Wrap(
              spacing: 8.0,
              children: [
                _buildTag('Бизнес-новости'),
                _buildTag('Индустрия'),
                _buildTag('Лидерство'),
                _buildTag('Советы по предпринимательству'),
                _buildTag('Образование и обучение'),
              ],
            ),
            SizedBox(height: 24.0),
            // Comments Section
            Text(
              'Комментарии (3)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            _buildComment(
              context,
              'Роман Попов',
              'Я думаю это отличная новость!',
              'Сегодня, 18:43',
              3,
            ),
            _buildComment(
              context,
              'Мадияр Даулетов',
              'Мы рады объявить об открытии нового сезона нашего бизнес-клуба! Присоединяйтесь к нам на первый встрече, где вас ждут захватывающие презентации, новые возможности для нетворкинга и интересные проекты.',
              'Сегодня, 15:22',
              4,
              liked: true,
            ),
            _buildComment(
              context,
              'Алексей Никифоров',
              'Новый сезон бизнес-клуба начинается с волнующих перспектив и возможностей! Этот год обещает быть еще более захватывающим и продуктивным для наших участников. Добро пожаловать в новый этап нашего с вами сотрудничества!',
              'Сегодня, 14:03',
              3,
            ),
            SizedBox(height: 16.0),
            // Add Comment Button
            ElevatedButton(
              onPressed: () {
                _showCommentInputDialog(context);
              },
              child: Text('Добавить комментарий'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String tag) {
    return Chip(
      label: Text(tag),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildComment(BuildContext context, String name, String comment, String timestamp, int likes, {bool liked = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Text(name[0]), // First letter of the name
            backgroundColor: Colors.blueAccent,
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4.0),
                Text(comment),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(timestamp, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            liked ? Icons.favorite : Icons.favorite_border,
                            color: liked ? Colors.red : Colors.grey,
                          ),
                          onPressed: () {
                            // Like action
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(liked ? 'Вы убрали лайк.' : 'Вы поставили лайк!'),
                              ),
                            );
                          },
                        ),
                        Text('$likes'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showCommentInputDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Ваш комментарий', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.sentiment_very_satisfied, color: Colors.yellow, size: 32),
                  Icon(Icons.sentiment_satisfied, color: Colors.yellow, size: 32),
                  Icon(Icons.sentiment_neutral, color: Colors.yellow, size: 32),
                  Icon(Icons.sentiment_dissatisfied, color: Colors.yellow, size: 32),
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                maxLength: 500,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: 'Поделитесь своим мнением',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Комментарий добавлен'), duration: Duration(seconds: 5)),
                  );
                },
                child: Text('Добавить комментарий'),
              ),
            ],
          ),
        );
      },
    );
  }
}
