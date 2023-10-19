import 'package:class_carrot_market_v1/models/product.dart';
import 'package:class_carrot_market_v1/screens/home/components/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 구글스럽게 만들기 상(앱바),중(바디),하(바텀네비게이션바)단으로 구성
      appBar: AppBar( // 상단
        title: Row( // 타이틀 영역에 가로로 배치하기
          children: [ // 자식들
            const Text('좌동'), // 추후 데이터
            const SizedBox(width: 4.0,), // 여백주기
            const Icon(CupertinoIcons.chevron_down), // 쿠퍼티노는 iOS 쪽 아이콘
          ],
        ),
        actions: [ // 액션은 우상단에 위치하는 영역
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.search)), // 아이콘 버튼은 눌렀을 때 함수와 아이콘을 가진다.
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.list_dash)),
          IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
        ],
      ),
      // 리스트뷰 : 바디 영역의 컨텐츠가 많아서 화면을 넘칠 때 스크롤기능을 해준다.
      // 세퍼레이티드는 화면크기까지의 데이터만 로딩하고 아래로 스크롤을 내렸을때 추가컨텐츠를 로딩하게해주어 한번에 많은 데이터를 처리할수 있게 한다.
      // 아이템빌더 : 몇번째 어떠한 항목을 그릴지 정한다 리스트의 [주소값] 으로 처리하여 리스트를 그려낸다.
      // 세퍼레이터빌더 : index번째에 어떠한 View로 그려낼지 정한다(Divider)
      // 아이템카운트 : int, 가져올 리스트의 개수(전체길이)를 지정
      body: ListView.separated(
          itemBuilder: (context, index) => ProductItem(product: productList[index]),
          separatorBuilder: (context, index) => const Divider(
            height: 0, // 높이
            indent: 16, // 첫 여백
            endIndent: 16, //  마지막 여백
            color: Colors.grey, // 색상
          ),
          itemCount: productList.length),
    );
  }
}
