import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class NewsDetail extends StatefulWidget {
  const NewsDetail({super.key});

  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tin tức'),
        backgroundColor: Color(0xFFC07F00),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  Image.asset(
                    'assets/image/Home/4.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/Home/2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                     'assets/image/Home/3.jpg',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Dots Indicator
            DotsIndicator(
              dotsCount: 3, // Number of dots
              position: _currentPage, // Current page index
              decorator: DotsDecorator(
                color: Colors.grey, // Default dot color
                activeColor: const Color(0xFFC07F00), // Selected dot color
                activeSize: const Size(16, 16), // Selected dot size
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ), // Selected dot shape
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Sự kiện thường niên',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Lễ dâng hương',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Đây là hoạt động văn hóa truyền thống trong khuôn khổ chương trình Tết Việt mừng Đảng, mừng Xuân Mậu Tuất 2018, gồm nhiều hoạt động trưng bày, triển lãm, giáo dục di sản và văn hóa truyền thống tại Hoàng thành Thăng Long.\n Lễ dâng hương khai Xuân là điểm nhấn trong chuỗi các hoạt động phục vụ nhân dân đón Xuân vui Tết, được tổ chức từ 23 tháng Chạp năm Đinh Dậu đến rằm tháng Giêng năm Mậu Tuất. Trước đó một số nghi lễ truyền thống cũng được nghiên cứu, tái hiện như lễ cúng ông Công ông Táo, lễ dựng cây Nêu và Lễ hạ cây Nêu, thu hút đông đảo khách tham quan trải nghiệm các phong tục, nghi lễ cổ truyền trong ngày Tết của dân tộc',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 16),
            const Text(
              'Tết Trung Thu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tết Trung Thu là một lễ hội cổ xưa tại các quốc gia Đông Á như Trung Hoa, Đài Loan, Việt Nam, Nhật Bản, Triều Tiên, ngày này cũng là ngày nghỉ lễ tại một số quốc gia như Đài Loan, Bắc Triều Tiên và Hàn Quốc.\n'
              'Ở Việt Nam, Tết Trung Thu theo âm lịch là ngày Rằm tháng 8 hằng năm, nay đã trở thành ngày tết của trẻ em, được gọi bằng những cái tên khác nhau tùy theo từng thời điểm và vùng miền như Tết thiếu nhi, Tết trông trăng hay Tết hoa đăng… Trẻ em rất mong đợi được đón tết này vì được tặng đồ chơi thường là đèn ông sư, đèn ông sao, mặt nạ, đèn kéo quân, tò he, đầu sư tử… Vào ngày tết này, người ta tổ chức bày cỗ, trông trăng. Thời điểm trăng lên cao, trẻ em sẽ vừa múa hát vừa ngắm trăng phá cỗ, chén bánh nướng, bánh dẻo… Ở một số nơi đô thị người ta còn tổ chức đánh trống múa lân, múa sư tử, múa rồng để các em vui chơi thỏa thích.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
