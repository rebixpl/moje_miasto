import 'package:flutter/material.dart';

class AppLanguage {
  final String langId, langImg;
  const AppLanguage({required this.langId, required this.langImg});
}

const List<AppLanguage> appLanguages = [
  AppLanguage(
      langId: 'pl',
      langImg: 'images/screens/language_selector/poland_flag.png'),
  AppLanguage(
      langId: 'ua',
      langImg: 'images/screens/language_selector/ukraine_flag.png'),
  AppLanguage(
      langId: 'en',
      langImg: 'images/screens/language_selector/english_lang_flag.png'),
];

// TODO: bloc >>> store 'activeAppLang' in some kind of localization bloc
// Currently used language
AppLanguage activeAppLang = appLanguages[0];

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector>
    with SingleTickerProviderStateMixin {
  // Width Animation when user opens / closes the language selector
  late AnimationController _controller;
  late Animation<double> widthAnimation;
  bool isClosed = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));

    widthAnimation = Tween<double>(begin: 60.0, end: 165.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.decelerate),
      ),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    // dispose animation controller
    _controller.dispose();
    super.dispose();
  }

  void toggleLanguageSelector() {
    setState(() {
      isClosed = !isClosed;
      if (!isClosed) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isClosed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => toggleLanguageSelector(),
          child: SizedBox(
            width: widthAnimation.value,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Theme.of(context).colorScheme.secondary,
              child: isClosed
                  // Single Language View (currently used)
                  ? SingleLanguage(
                      lang: activeAppLang,
                      toggleLanguageSelector: toggleLanguageSelector,
                    )
                  // Language Selector View
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: appLanguages.length,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, i) => SingleLanguage(
                        lang: appLanguages[i],
                        toggleLanguageSelector: toggleLanguageSelector,
                      ),
                    ),
            ),
          ),
        ),
        Text(
          "Język/мова",
          style: Theme.of(context).textTheme.caption!.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}

class SingleLanguage extends StatelessWidget {
  final AppLanguage lang;
  final VoidCallback toggleLanguageSelector;

  const SingleLanguage({
    Key? key,
    required this.lang,
    required this.toggleLanguageSelector,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: bloc action >>> change selected app language to 'langId'
        // note: this value is only temporary, later the selected language will be stored inside some bloc
        activeAppLang.langId != lang.langId
            ? debugPrint('language changed')
            : null;
        activeAppLang.langId != lang.langId ? activeAppLang = lang : null;
        debugPrint(
            "Tapped Language: ${lang.langId} | Active Language ${activeAppLang.langId}");

        // When user has selected the language, run the animation to close the language selector widget and go back to single language view
        toggleLanguageSelector();
      },
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child: Image.asset(
              lang.langImg,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
