import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class feed extends StatefulWidget {
  const feed({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  State<feed> createState() => _feedState();
}

class _feedState extends State<feed> {
  // 좋아요 여부
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 이미지 등록
        Image.network(
          widget.imageUrl,
          // 이미지의 높이
          height: 400,
          // 위젯의 너비를 가능한 최대로 설정
          width: double.infinity,
          /**  Boxfit.cover 설명
           *  전체 프레임을 채우기 위해 사진을 확대하거나 축소함,
           *  사진이 프레임보다 작아도, 사진의 모양을 유지하면서 프레임의 모든 공간을 채우려고 자동으로 맞춰준다.
           * */
          // 이미지를 프레임 안에 꽉 차게 맞춤
          fit: BoxFit.cover,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                CupertinoIcons.heart,
                color: isFavorite ? Colors.red : Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.chat_bubble,
                color: Colors.black,
              ),
            ),
            // 빈공간 추가
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.bookmark,
                color: Colors.black,
              ),
            ),
          ],
        ),

        // 좋아요
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "3 likes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //피드 글작성
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "네온과 고양이, 최고의 조합 😎 \n#CatLife #NeonVibes",
          ),
        ),

        // 날짜
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "March 6",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
