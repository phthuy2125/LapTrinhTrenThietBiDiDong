import 'package:flutter/material.dart';

class ProfileExample extends StatelessWidget {
  const ProfileExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Inter'),
      ),
      child: DefaultTextStyle.merge(
        style: const TextStyle(fontFamily: 'Inter'),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          body: SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  width: 390,
                  height: 1163,
                  padding: const EdgeInsets.only(
                    top: 44,
                    right: 24,
                    bottom: 36,
                    left: 24,
                  ),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(44),
                    border: Border.all(
                      color: const Color.fromARGB(255, 240, 235, 235),
                      width: 3,
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildTopBar(),
                        const SizedBox(height: 20),
                        _buildProfileHeader(),
                        const SizedBox(height: 20),
                        _buildStatsRow(),
                        const SizedBox(height: 20),
                        _buildSectionTitle('About Me'),
                        const SizedBox(height: 8),
                        _buildAboutMeText(),
                        const SizedBox(height: 20),
                        _buildSectionTitle('Skills & Expertise'),
                        const SizedBox(height: 12),
                        _buildSkills(),
                        const SizedBox(height: 20),
                        _buildSectionTitle('Featured Projects'),
                        const SizedBox(height: 12),
                        _buildFeaturedProjects(),
                        const SizedBox(height: 20),
                        _buildContactInfo(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return SizedBox(
      width: 336,
      height: 42,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 20,
            height: 42,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.arrow_back_ios_new, size: 14),
              onPressed: () {},
            ),
          ),
          const Text(
            'Profile',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
            ),
          ),
          Container(
            width: 20,
            height: 42,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              icon: const Icon(Icons.share_outlined, size: 16),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 140,
                height: 140,
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.orangeAccent, Colors.pinkAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF8FAFC),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 63,
                    backgroundImage: AssetImage('images/vidu.jpg'),
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: const Icon(Icons.check, color: Colors.white, size: 14),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Phuong Thuy',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF0F172A),
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Student',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 8),
          Container(
            width: 134,
            height: 30,
            padding: const EdgeInsets.only(
              top: 6,
              right: 14,
              bottom: 6,
              left: 14,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(116, 241, 240, 240),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.location_on, size: 13, color: Color(0xFF64748B)),
                SizedBox(width: 6),
                Flexible(
                  child: Text(
                    'Tay Ninh, VN',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF64748B),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsRow() {
    return Container(
      width: 336,
      height: 78,
      padding: const EdgeInsets.only(top: 18, right: 20, bottom: 18, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatItem('148', 'Projects'),
          Container(width: 1, height: 26, color: const Color(0xFFE2E8F0)),
          _buildStatItem('9 Yrs', 'Experience'),
          Container(width: 1, height: 26, color: const Color(0xFFE2E8F0)),
          _buildStatItemWithStar('4.9', 'Rating'),
        ],
      ),
    );
  }

  Widget _buildStatItem(String val, String label) {
    return SizedBox(
      height: 43,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            val,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w800,
              color: Color(0xFF0F172A),
              height: 1.1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF8A99AD),
              height: 1.1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatItemWithStar(String val, String label) {
    const starGoldColor = Color(0xFFEAB308);
    return SizedBox(
      height: 43,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                val,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: starGoldColor,
                  height: 1.1,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(Icons.star, color: starGoldColor, size: 18),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xFF8A99AD),
              height: 1.1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0F172A),
      ),
    );
  }

  Widget _buildAboutMeText() {
    return const Text(
      'Passionate Lead Mobile Engineer specialized in Flutter, Dart, and building high-performance cross-platform applications. Focused on elegant and clean architecture.',
      style: TextStyle(color: Colors.grey, height: 1.5, fontSize: 13),
    );
  }

  Widget _buildSkills() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        _buildSkillChip('Flutter', Colors.blue, Icons.flutter_dash),
        _buildSkillChip('Dart', Colors.green, Icons.code),
        _buildSkillChip('Clean Arch', Colors.red, Icons.architecture),
        _buildSkillChip('UI/UX', Colors.purple, Icons.design_services),
        _buildSkillChip('Firebase', Colors.orange, Icons.local_fire_department),
      ],
    );
  }

  Widget _buildSkillChip(String label, MaterialColor color, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color[50],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color[400]),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              color: color[400],
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProjects() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 152,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/flutter.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'E-Shop Flutter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Mobile App • 2026',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            height: 152,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(14),
                      ),
                      image: DecorationImage(
                        image: AssetImage('images/crypto.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Crypto Vault',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Finance • Clean Arch',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContactInfo() {
    return Container(
      width: 336,
      height: 192,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE2E8F0), width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildContactRow(
              icon: Icons.alternate_email,
              text: 'Contact Information',
              isBold: true,
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFFF1F5F9),
              indent: 16,
              endIndent: 16,
            ),
            _buildContactRow(
              icon: Icons.mail_outline,
              text: 'phthuy2125@email.com',
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xFFF1F5F9),
              indent: 16,
              endIndent: 16,
            ),
            _buildContactRow(
              icon: Icons.phone_outlined,
              text: '+84 (90) 1234-5678',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactRow({
    required IconData icon,
    required String text,
    bool isBold = false,
  }) {
    return Container(
      width: 334,
      height: 62,
      padding: const EdgeInsets.only(top: 14, right: 16, bottom: 14, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 247, 248),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Icon(icon, size: 18, color: const Color(0xFF64748B)),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                text,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                  color: const Color(0xFF0F172A),
                ),
              ),
            ],
          ),
          const Icon(Icons.chevron_right, size: 18, color: Color(0xFF94A3B8)),
        ],
      ),
    );
  }
}
