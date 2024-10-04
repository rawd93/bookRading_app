




import 'package:bookrading_app/Features/Home/presentation/Views/widgets/Custom_book_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return  const CustomBookImage();
      },
    );
  }
}
