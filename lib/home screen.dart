import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 28, 20, 71),
      appBar: _appbar(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color.fromARGB(99, 40, 24, 97),
        items: [
          _bootombariteam(
            icon: 'assest/asset/home_scree_icon.svg',
            label: "quran",
          ),
          _bootombariteam(
              icon: 'assest/asset/home_screen_icon2.svg', label: "Quran"),
          _bootombariteam(
              icon: 'assest/asset/home_screen_3.svg', label: "Quran"),
          _bootombariteam(
              icon: "assest/asset/home_screen_4.svg", label: "label"),
          _bootombariteam(icon: "assest/asset/bookmark.svg", label: "book")
        ],
      ),
      body: DefaultTabController(
        length: 4,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverToBoxAdapter(
                      child: _greating(),
                    ),
                    SliverAppBar(
                      pinned: true,
                      automaticallyImplyLeading: false,
                      backgroundColor: Color.fromARGB(0, 0, 0, 0),
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(0),
                        child: _top(),
                      ),
                    )
                  ],
              body: Container()),
        ),
      ),
    );
  }

//edit lapbar
  TabBar _top() {
    return TabBar(
        unselectedLabelColor: Colors.green[400],
        labelColor: Colors.green[300],
        indicatorColor: Colors.green[300],
        tabs: [
          _tapiteam(
            label: "Surah",
          ),
          _tapiteam(label: "para"),
          _tapiteam(label: "page"),
          _tapiteam(label: "Hijb"),
        ]);
  }

  Tab _tapiteam({required String label}) {
    return Tab(
      child: Text(
        label,
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color.fromARGB(255, 10, 39, 94),
      title: Row(
        children: [
          const SizedBox(
            width: 0,
          ),
          // const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assest/asset/menui.svg"),
          ),
          const SizedBox(
            height: 10,
            width: 10,
          ),

          const Text(
            "AL-QURAN APP",
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 15, height: 2),
          ),
          const Spacer(),

          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assest/asset/searchi.svg'))
        ],
      ),
    );
  }

  Column _greating() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "اهلا و مرحبا في تطبيق القران الكريم",
        style: TextStyle(
            fontSize: 14,
            height: 3,
            fontWeight: FontWeight.w300,
            color: Colors.white),
      ),
      Text(
        "WEALCOM TO AL-QURAN",
        style: GoogleFonts.poppins(
            fontSize: 15,
            height: 1.5,
            fontWeight: FontWeight.w600,
            color: Colors.white),
      ),
      const SizedBox(
        height: 23,
      ),
      _lastread()
    ]);
  }

  Stack _lastread() {
    return Stack(
      children: [
        Container(
          height: 131,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0,
                    6,
                    1
                  ],
                  colors: [
                    Color.fromARGB(255, 74, 195, 145),
                    Color.fromARGB(255, 38, 143, 94),
                    Color.fromARGB(137, 12, 175, 140)
                  ])),
        ),
        Positioned(
            bottom: 0,
            right: -3,
            child: SvgPicture.asset("assest/asset/icon.svg")),
        Padding(
          padding: const EdgeInsets.all(21),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset("assest/asset/booktext.svg"),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "LAST READ",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  //SvgPicture.asset("assest/asset/booktext.svg"),
                  SizedBox(
                    //width: 28,
                    height: 29,
                  ),
                  Text(
                    "AL-fatihah",
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                ],
              ),
              Row(
                children: [
                  //SvgPicture.asset("assest/asset/booktext.svg"),
                  SizedBox(
                    height: 33,
                  ),
                  Text(
                    "souura Ni:",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  BottomNavigationBarItem _bootombariteam({
    required String icon,
    required String label,
  }) =>
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          icon,
        ),
        //activeIcon:
        //   SvgPicture.asset(icon, color: Color.fromARGB(0, 74, 28, 88)),
        label: label,
      );
}
