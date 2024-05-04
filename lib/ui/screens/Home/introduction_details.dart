import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class IntroDetail extends StatefulWidget {
  const IntroDetail({super.key});

  @override
  _IntroDetailState createState() => _IntroDetailState();
}

class _IntroDetailState extends State<IntroDetail> {
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
        title: const Text('Giới thiệu'),
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
                    'assets/image/Home1/5.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/image/Home1/6.jpg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                     'assets/image/Home1/7.jpg',
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
              'Hoàng thành Thăng Long',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Hoàng thành Thăng Long là quần thể di tích gắn với lịch sử kinh thành Thăng Long Hà Nội. Công trình kiến trức đồ sộ này được các triều vua xây dựng trong nhiều giai đoạn lịch sử và trở thành di tích quan trọng bậc nhất trong hệ thống các di tích Việt Nam',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 16),
            const Text(
              'Chi tiết:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Tháng 12/2002, các chuyên gia đã tiến hành khai quật trên tổng diện tích 19.000m2 tại trung tâm chính trị Ba Đình – Hà Nội. Cuộc khai quật khảo cổ học lớn nhất Việt Nam và của cả Đông Nam Á này đã phát lộ những dấu vết của Hoàng thành Thăng Long trong tiến trình lịch sử trải dài 13 thế kỷ với các di tích và tầng văn hóa chồng xếp lên nhau.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              'Vào lúc 20 giờ 30 ngày 31/7/2010 theo giờ địa phương tạiBrasil, tức 6 giờ 30 ngày 1/8/2010 theo giờ Việt Nam, Ủy ban di sản thế giới đã thông qua Nghị quyết công nhận khu Trung tâm Hoàng thành Thăng Long – Hà Nội là Di sản Văn hóa thế giới. Đây là niềm tự hào của không chỉ của riêng Hà Nội mà còn của cả đất nước Việt Nam.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              'Với những thông tin dữ liệu được cập nhật một cách hệ thống, đầy đủ, kịp thời, Ban biên tập website www.hoangthanhthanglong.vn mong muốn giúp cho độc giả, khách du lịch trong nước và nước ngoài và những ai quan tâm đến Di sản thế giới Hoàng thành Thăng Long hiểu thêm về những giá trị nổi bật toàn cầu của Di sản quý giá này.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
