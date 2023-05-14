import 'package:idchats_flutter/features/main_page/domain/entities/user_info_entity.dart';

import 'package:flutter/material.dart';

class UserInfoDisplay extends StatelessWidget {
  final UserInfoEntity userInfoEntity;
  const UserInfoDisplay({Key? key, required this.userInfoEntity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        children: [
          Text(userInfoEntity.faceUrl,
              style: const TextStyle(color: Colors.red,fontSize: 50, fontWeight: FontWeight.bold)),
          Expanded(
            child: Center(
              child: SingleChildScrollView(
                child: Text(
                  userInfoEntity.faceUrl,
                  style: const TextStyle(fontSize: 25,color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
