import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/Bloc/app_bloc.dart';
import 'package:portfolio/Bloc/app_event.dart';
import 'package:portfolio/Bloc/app_state.dart';
import 'package:portfolio/Utils/Decorations/colors.dart';
import 'package:portfolio/Utils/Decorations/text_styles.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.veryLightGrayBlue,
              leading: Image.asset('assets/ic/no-bg-logo.png'),
              title: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FooterElement(text: "Home"),
                    FooterElement(text: "Services"),
                    FooterElement(text: "About me"),
                    FooterElement(text: "Portfolio"),
                    FooterElement(text: "Testimonals"),
                    FooterElement(text: "Contact me"),
                  ],
                ),
              ),
              centerTitle: true,
            ),
            body:
                state is NavigationHashUpdated
                    ? Center(child: Text(state.hash.toString()))
                    : Center(child: Text("data")),
          ),
        );
      },
    );
  }
}

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
