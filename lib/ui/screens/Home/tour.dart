import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class TourDetail extends StatefulWidget {
  const TourDetail({Key? key}) : super(key: key);

  @override
  _TourDetailState createState() => _TourDetailState();
}

class _TourDetailState extends State<TourDetail> {
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
        title: const Text('Tour tham quan'),
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
                    'assets/image/Home/tour.jpg',
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
            const SizedBox(height: 8),
            const Text(
              'Giá vé tham quan:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '- Người lớn: 70.000 đồng/lượt.\n'
              '- Học sinh, sinh viên từ 16 tuổi trở lên (nếu có thẻ học sinh, sinh viên), người cao tuổi (60 tuổi trở lên) là công dân Việt Nam (xuất trình chứng minh thư hoặc bất kỳ giấy tờ khác chứng minh là người cao tuổi): 35.000 đồng/lượt.\n'
              '- Miễn phí tham quan cho trẻ em dưới 16 tuổi và người có công với cách mạng.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              'Thời gian tham quan:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Mở cửa: Từ 8h00 đến 17h00 hàng ngày.',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 8),
            const Text(
              'Nội quy:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFFC07F00),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '- Thực hiện theo sơ đồ chỉ dẫn tham quan trong khu di tích.'
              '- Không mang vũ khí, chất nổ, chất dễ cháy, chất độc hại và những chất có mùi hôi tanh vào khu di tích.\n'
              '- Trang phục gọn gàng, lịch sự. Không có những hành vi thiếu văn hóa như : nói tục, chửi bậy, viết vẽ lên tường, lên gốc cây, gây mất trật tự trong khu di tích.\n'
              '- Các phương tiện ô tô, xe máy phải để đúng nơi quy định (tại 19C Hoàng Diệu).\n'
              '- Có ý thức bảo vệ di tích, di vật; giữ gìn vệ sinh môi trường, bỏ rác đúng nơi quy định. Không tự ý trèo cây, bẻ cành, hái quả, dẫm lên thảm cỏ.\n'
              '- Đơn vị, tập thể có nhu cầu hướng dẫn tham quan, liên hệ với Phòng Hướng dẫn Thuyết minh để được phục vụ. Các cơ quan, cá nhân có nhu cầu quay phim, dựng phim phải có giấy giới thiệu và được sự đồng ý của lãnh đạo Trung tâm bảo tồn di sản Thăng Long - Hà Nội.\n'
              '- Không sử dụng thiết bị bay siêu nhẹ (flycam) tại khu di sản.\n',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),            
          ],
        ),
      ),
    );
  }
}
