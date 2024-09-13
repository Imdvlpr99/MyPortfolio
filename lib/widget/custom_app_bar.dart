import 'package:MyPortfolio/utils/constants.dart';
import 'package:MyPortfolio/utils/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isMobile;
  final int currentIndex;
  final VoidCallback? onActionTap;
  final VoidCallback? onLoginTap;
  final ValueChanged<int>? onMenuTap;

  @override
  State<StatefulWidget> createState() => _CustomAppBarState();

  const CustomAppBar({
    super.key,
    this.isMobile = false,
    this.currentIndex = 0,
    this.onActionTap,
    this.onLoginTap,
    this.onMenuTap,
  });

  @override
  Size get preferredSize => const Size(
    double.maxFinite,
    80
  );

}

class _CustomAppBarState extends State<CustomAppBar> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          color: mainColor,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 2.5),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 15),
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  'assets/logo.svg',
                  width: 150,
                ),
              ),
              Flexible(
                  child: Container(
                      alignment: Alignment.centerRight,
                      child: widget.isMobile ?
                      InkWell(
                        onTap: widget.onActionTap,
                        child: SvgPicture.asset(
                            'assets/menu.svg'
                        ),
                      ) :
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int index = 0; index < headerMenu.length; index++) ...[
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                  widget.onMenuTap?.call(selectedIndex);
                                },
                                child: Text(
                                  headerMenu[index],
                                  style: widget.currentIndex == index ? semiBold16White() : regular16Grey(),
                                ),
                              ),
                              if (index != headerMenu.length - 1)
                                const SizedBox(width: 25),
                            ],
                          ],
                        ),
                      )
                  )
              )
            ],
          ),
        )
    );
  }
}