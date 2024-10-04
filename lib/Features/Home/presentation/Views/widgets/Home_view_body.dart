import 'package:bookrading_app/Features/Home/presentation/Views/widgets/Custom_appBar.dart';
import 'package:bookrading_app/Features/Home/presentation/Views/widgets/Custom_book_image.dart';
import 'package:bookrading_app/Features/Home/presentation/Views/widgets/Featured_List_view.dart';
import 'package:bookrading_app/core/Utiles/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        const Text(
          'Recommended for you',
          style: Styles.textStyle18,
        ),
        const Text(
          'Handpicked based on your reading preferences.',
          style: Styles.textStyle13,
        ),
        const SizedBox(
          height: 21,
        ),
        const FeaturedBookListView(),
        const Text(
          'I Want a Better Catastrophe',
          style: Styles.textStyle14,
        ),
        const SizedBox(
          height: 6,
        ),
        const Text(
          'With global warming projected to rocket past the...',
          style: Styles.textStyle13,
        ),
        const SizedBox(
          height: 35,
        ),
        Text(
          'New Releases',
          style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
        ),
         const   SizedBox(
          height: 6,
        ),
       const  Text(
          'Newly released books spanning various genres.',
          style: Styles.textStyle13,
        ),
      ],
    );
  }
}
