import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Image(
        image: AssetImage('assets/image/youtube_logo.jpg'),
        height: 24,
      ),
      actions: const [
        Icon(Icons.cast),
        SizedBox(width: 8),
        Icon(Icons.notifications),
        SizedBox(width: 8),
        Icon(Icons.search),
        SizedBox(width: 8),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(36),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 36,
            // ! Web だと横スクロールができない。
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                    color: Colors.grey.shade300,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.explore_outlined),
                  ),
                ),
                const SizedBox(width: 24),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Center(
                      child: Text(
                        'すべて',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.grey.shade300,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Center(
                      child: Text('新しい動画の発見'),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.grey.shade300,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Center(
                      child: Text('ゲーム'),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.grey.shade300,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Center(
                      child: Text('野球'),
                    ),
                  ),
                ),
                const SizedBox(width: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 36);
}
