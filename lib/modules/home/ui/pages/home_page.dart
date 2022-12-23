import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/constants/constants.dart';
import '../components/components.dart';
import '../components/home_background.dart';
import '../components/home_expertise_card.dart';
import '../components/home_professional_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  late List<Widget> pages;

  @override
  void initState() {
    pages = [
      ListView(
        padding: const EdgeInsets.only(bottom: 50),
        children: [
          Stack(
            children: [
              const HomeBackground(),
              buildBody(),
            ],
          )
        ],
      ),
      Container(color: Colors.purple),
      Container(color: Colors.green),
      Container(color: Colors.yellow),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        bottomNavigationBar: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.grey,
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            iconSize: 30,
            currentIndex: index,
            onTap: (index) {
              setState(() {
                this.index = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.campaign_outlined), label: 'Destaques'),
              BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Agendamentos'),
              BottomNavigationBarItem(icon: Icon(Icons.work_outline_outlined), label: 'Atendimento'),
              BottomNavigationBarItem(icon: Icon(Icons.settings_outlined), label: 'Configurações'),
            ],
          ),
        ),
        body: pages[index],
      ),
    );
  }

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            style: GoogleFonts.montserrat(
              fontSize: 20,
              color: Colors.black.withOpacity(0.7),
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              hintText: Labels.homeFilterHint,
              hintStyle: const TextStyle(fontSize: 18),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),
        const SizedBox(height: 50),
        const Padding(
          padding: EdgeInsets.only(left: 25, bottom: 20),
          child: Text(
            Labels.homeMainExpertise,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 225,
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: const [
              HomeExpertiseCard(
                color: AppColors.primary,
                asset: AppImages.tesoura,
                title: Labels.cirurgias,
                subtitle: Labels.cirurgiasSubtitle,
              ),
              SizedBox(width: 10),
              HomeExpertiseCard(
                color: AppColors.olive,
                asset: AppImages.laco,
                title: Labels.social,
                subtitle: Labels.socialSubtitle,
              ),
              SizedBox(width: 10),
              HomeExpertiseCard(
                color: AppColors.orange,
                asset: AppImages.clinico,
                title: Labels.clinico,
                subtitle: Labels.clinicoSubtitle,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                Labels.expertises,
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 16,
                ),
              ),
              Text(
                Labels.homeShowMore,
                style: TextStyle(
                  color: AppColors.primary,
                ),
              )
            ],
          ),
        ),
        Column(
          children: const [
            HomeProfessionalCard(
              avatar: AppImages.avatar1,
              city: 'São Paulo - SP',
              name: 'Michael Fassbender',
              profession: 'Clínico Geral',
              rating: 3.5,
            ),
            HomeProfessionalCard(
              avatar: AppImages.avatar1,
              city: 'Foz do Iguaçu - PR',
              name: 'Jennifer Lawrence',
              profession: 'Clínico Geral',
              rating: 2.5,
            ),
            HomeProfessionalCard(
              avatar: AppImages.avatar1,
              city: 'Medianeira - PR',
              name: 'Robert Downey Jr.',
              profession: 'Cirurgião',
              rating: 3,
            ),
            HomeProfessionalCard(
              avatar: AppImages.avatar1,
              city: 'São Paulo - SP',
              name: 'Elisabeth Olsen',
              profession: 'Cirurgiã',
              rating: 5,
            ),
          ],
        )
      ],
    );
  }
}
