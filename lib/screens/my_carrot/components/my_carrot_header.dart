import 'package:class_carrot_market_v1/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(height: 30),
            _buildProfileButton(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('판매내역', FontAwesomeIcons.receipt),
                _buildRoundTextButton('구매내역', FontAwesomeIcons.bagShopping),
                _buildRoundTextButton('관심목록', FontAwesomeIcons.heart)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 65,
              height: 65,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.5),
                child: Image.network(
                  'https://picsum.photos/200/100',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                child: Icon(
                  Icons.camera_alt,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Column(
          children: [
            Text('developer', style: textTheme().displayMedium),
            const SizedBox(height: 10),
            Text("진구 #00123")
          ],
        )
      ],
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {
        // Navigator.push()...
      },
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            width: 1.0,
            color: Color(0xFFD4D5DD),
          ),
        ),
        child: Center(
          child: Text(
            '프로필 보기',
            style: textTheme().titleMedium,
          ),
        ),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color.fromRGBO(255, 226, 208, 1),
              border: Border.all(color: Color(0xFFD4D5DD), width: 0.5)),
          child: Icon(
            iconData,
            color: Colors.orange,
          ),
        ),
        const SizedBox(height: 10),
        Text(title, style: textTheme().titleMedium)
      ],
    );
  }
} // end of my_carrot_header