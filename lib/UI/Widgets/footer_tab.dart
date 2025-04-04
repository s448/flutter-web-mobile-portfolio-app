import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/Bloc/app_bloc.dart';
import 'package:portfolio/Bloc/app_event.dart';
import 'package:portfolio/Bloc/app_state.dart';
import 'package:portfolio/Utils/Decorations/text_styles.dart';

class FooterElement extends StatelessWidget {
  const FooterElement({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        bool isSelected = false;

        if (state is NavigationHashUpdated && state.hash == text) {
          isSelected = true;
        }

        return GestureDetector(
          onTap: () {
            context.read<AppBloc>().add(NavigateToHashEvent(text));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            margin: EdgeInsets.symmetric(horizontal: isSelected ? 30 : 6),
            child: Text(
              text,
              style: isSelected ? selectedFooterStyle : footerStyle,
            ),
          ),
        );
      },
    );
  }
}
