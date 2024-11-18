import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/features/home/data/models/event_model.dart';
import 'package:rapl_club/features/home/presentation/widgets/custom_event_card.dart';

class EventLabelsList extends StatelessWidget {
  final List<Event>? events;

  const EventLabelsList({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: events!.length,
            itemBuilder: (context, index) {
              // ... existing TabSwitcher code
            },
          ),
        ),
        SizedBox(height: 20.h),
        Expanded(
          child: ListView.builder(
            itemCount: events!.length,
            itemBuilder: (context, index) {
              final event = events![index];
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: EventCard(
                  imageUrl: event.icon ?? 'assets/default_event_image.png', // Provide a default image if null
                  title: event.name,
                  eventType: event.type,
                  location: event.address,
                  dateTime: event.date.toString(), // Convert DateTime to String as needed
                  accessLevel: event.access_levels.join(', '), // Join access levels if multiple
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
