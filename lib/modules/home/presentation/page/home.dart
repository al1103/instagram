import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:network_social/common/routers/app_route.dart';
import 'package:network_social/gen/assets.gen.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 104,
        leading: Padding(
          padding: const EdgeInsets.only(left: 13),
          child: Assets.svg.logo.svg(),
        ),
        actions: [
          IconButton(
            icon: Assets.svg.icHeat.svg(width: 24),
            onPressed: () {
              context.router.push(const SearchRoute());
            },
          ),
          IconButton(
            icon: Assets.svg.icMess.svg(width: 24),
            onPressed: () {
              context.router.push(const SearchRoute());
            },
          ),
          IconButton(
            icon: Assets.svg.icPost.svg(width: 24),
            onPressed: () {
              context.router.push(const SearchRoute());
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 1,
              offset: Offset(0, 2),
            )
          ],
        ),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            _buildProfileItem(
              imageUrl: "https://via.placeholder.com/65x86",
              label: 'Ruffles',
              logo: true,
            ),
            _buildProfileItem(
              imageUrl: "https://via.placeholder.com/65x86",
              label: 'sabanok...',
              borderColor: const Color(0xFFC913B9),
            ),
            _buildProfileItem(
              imageUrl: "https://via.placeholder.com/65x86",
              label: 'blue_bouy',
              borderColor: const Color(0xFFC913B9),
            ),
            _buildProfileItem(
              imageUrl: "https://via.placeholder.com/65x86",
              label: 'waggles',
              borderColor: const Color(0xFFC913B9),
            ),
            _buildProfileItem(
              imageUrl: "https://via.placeholder.com/65x86",
              label: 'steve.loves',
              borderColor: const Color(0xFFC913B9),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.black,
            label: 'home ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.black,
            label: 'search', // Label set as empty string
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            backgroundColor: Colors.black,
            label: 'add', // Label set as empty string
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            backgroundColor: Colors.black,
            label: 'favorite', // Label set as empty string
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            backgroundColor: Colors.black,
            label: 'person', // Label set as empty string
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 0), // Set font size to 0
        showSelectedLabels: false, // Hide selected labels
        showUnselectedLabels: false, // Hide unselected labels
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

Widget _buildProfileItem({
  required String imageUrl,
  required String label,
  bool logo = false,
  Color borderColor = Colors.transparent,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
    child: Column(
      children: [
        Stack(
          children: [
            _buildImageContainer(imageUrl, borderColor),
            if (logo)
              Positioned(
                left: 46,
                top: 46,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Assets.svg.button.svg(),
                ),
              ),
          ],
        ),
        SizedBox(
          width: 59.64,
          height: 25.75,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: borderColor == Colors.transparent
                  ? const Color(0xFF6E6E6E)
                  : Colors.black,
              fontSize: 11.5,
              fontFamily: 'SF UI Display',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildImageContainer(String imageUrl, Color borderColor) {
  return SizedBox(
    width: 72,
    height: 72,
    child: Stack(
      children: [
        Positioned(
          left: 5.68,
          top: 5.68,
          child: Container(
            width: 60.63,
            height: 60.63,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 0.5,
                  color: Color(0xFFDDDDDD),
                ),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        if (borderColor != Colors.transparent)
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 72,
              height: 72,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 2.5,
                    color: borderColor,
                  ),
                ),
              ),
            ),
          ),
      ],
    ),
  );
}
