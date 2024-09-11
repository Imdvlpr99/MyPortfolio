import 'package:MyPortfolio/utils/constants.dart';
import 'package:MyPortfolio/utils/typography.dart';
import 'package:flutter/cupertino.dart';

class ProfileBadge extends StatelessWidget {
  final String? currentProject;

  const ProfileBadge({
    super.key,
    this.currentProject
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/profile_image.png',
          width: 250,
        ),
        IntrinsicWidth( // Ensures the container only takes up as much width as its child
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: darkGray,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, // Makes the Row only as wide as its content
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: purple,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: 'Currently working on ',
                      style: regular16Grey(),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Portfolio',
                          style: regular16White(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}