import 'package:flutter/material.dart';
import 'package:instagram/features/controllerData/profileData.dart';
import 'package:instagram/screens/profile/profile_screen.dart';
import '../../../constants.dart';

class PostBar extends StatelessWidget {
  final int index;

  PostBar({this.index});

  static ProfileData _profileData = ProfileData();
  List _profileDataList = _profileData.profileData;
  static const _popItem = <String>[
    'Report...',
    'Turn on Post Notifications',
    'Copy Link',
    'Share to...',
    'Unfollow',
    'Mute'
  ];
  List<PopupMenuItem<String>> _popUp = _popItem.map((String value) {
    return PopupMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 2.0, 0.0, 2.0),
      child: Row(
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.id,
                  arguments: _profileDataList[index]);
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(_profileDataList[index].profileImage),
              radius: 15.0,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            _profileDataList[index].profileName,
            style: TextStyle(
              color: KBlackColor,
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          PopupMenuButton(itemBuilder: (context) => _popUp),
        ],
      ),
    );
  }
}
