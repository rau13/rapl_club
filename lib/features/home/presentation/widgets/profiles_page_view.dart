import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rapl_club/features/home/data/models/resident_model.dart';
import 'package:rapl_club/features/home/presentation/widgets/custom_profile_card.dart';

class ProfilesPageView extends StatelessWidget {
  final List<Resident>? residents;

  const ProfilesPageView({Key? key, required this.residents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350.h,
      child: PageView.builder(
        padEnds: false,
        controller: PageController(viewportFraction: 0.85),
        itemCount: residents!.length,
        itemBuilder: (context, index) {
          final profile = residents![index];
          return Transform.scale(
            scale: 0.95,
            child: CustomProfileCard(
              avatarUrl: profile.avatar ?? 'assets/default_avatar.png', // Provide a default avatar if null
              name: '${profile.name} ${profile.surname}',
              additionalStatus: profile.additional_status,
              status: profile.status,
              company: profile.companies.name,
              companyCount: profile.competencies.length,
              skills: profile.competencies,
            ),
          );
        },
      ),
    );
  }
}
