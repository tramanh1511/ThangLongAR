import 'dart:async' show Future;
import 'dart:io' show File;

class DestinationModel {
  String title;
  String description;
  List<String> images;

  DestinationModel({
    required this.title,
    required this.description,
    required this.images,
  });

  factory DestinationModel.fromJson(Map<String, dynamic> json) {
    return DestinationModel(
      title: json['title'],
      description: json['description'],
      images: List<String>.from(json['images']),
    );
  }

  Future<void> loadDescription() async {
    final file = File(description);
    final contents = await file.readAsString();
    description = contents;
  }

}

// Create a list to hold all destination models
final List<DestinationModel> destinations = [
  DestinationModel(
    title: 'Cột cờ Hà Nội',
    description: 'Kỳ đài “Cột cờ Hà Nội” nằm trên đường Điện Biên Phủ, thuộc quận Ba Đình, Hà Nội, được xây dựng năm 1812, dưới thời Vua Gia Long triều Nguyễn trên phần đất phía nam của Hoàng thành Thăng Long, nơi xây tòa thành Tam Môn của Hoàng thành Thăng Long thời Lê.\n'
    'Đây là điểm chuẩn, đánh dấu sự khởi nguyên ở đầu phía nam trục chính tâm của tòa thành, từ đây theo đường “ngư đạo”, qua Đoan Môn rồi tới điểm quan trọng nhất, điểm trung tâm của Hoàng thành là điện Kính Thiên.'
    'Cột cờ Hà Nội nay là công trình còn nguyên vẹn và hoành tráng nhất trong quần thể di tích Hoàng thành Thăng Long. \n'
    'Cột Cờ được xây dựng bao gồm ba tầng đế và một thân cột. Các tầng đế hình chóp vuông cụt, nhỏ dần, chồng lên nhau, xung quanh xây ốp gạch. Tầng một mỗi chiều dài 42,5m; cao 3,1m có hai thang gạch dẫn lên.Tầng hai, mỗi chiều dài 27m; cao 3,7m có 4 cửa, cửa hướng Đông trên có đắp hai chữ “Nghênh Húc” (đón ánh sáng ban mai), cửa Tây với hai chữ “Hồi Quang” (ánh sáng phản chiếu), cửa Nam với hai chữ “Hướng Minh” (hướng về ánh sáng), cửa Bắc không có chữ đề. Tầng ba, mỗi chiều dài 12,8m ; cao 5,1m có cửa lên cầu thanh trông về hướng Bắc. Trên tầng này là thân Cột Cờ, cao 18,2m; hình trụ tám cạnh, thon dần lên trên, mỗi cạnh đáy chừng 2m. Trong thân có cầu thang 54 bậc xây xoáy trôn ốc lên tới đỉnh.'
    'Toàn thể được soi sáng (và thông hơi) bằng 39 lỗ hình dẻ quạt. Đỉnh Cột Cờ được cấu tạo thành một cái lầu hình bát giác, cao 3,3m có 8 cửa sổ tương ứng với tám cạnh. Giữa lầu là một hình trụ tròn, đường kính 40cm cao đến đỉnh lầu, là chỗ để cắm cán cờ (cán cờ cao 8m). '
    'Toàn bộ Cột Cờ cao 33,4m, nếu kể cả cán cờ thì là 41,4m.\n'
    '“Cột cờ Hà Nội” là một trong số ít những công trình kiến trúc thuộc khu vực thành Hà Nội có may mắn thoát khỏi sự phá hủy do chính quyền đô hộ Pháp tiến hành trong ba năm 1894-1897.'
    'Ngày 10/10/1954, lần đầu tiên lá cờ đỏ sao vàng - cờ Tổ quốc tung bay trên đỉnh “Cột cờ Hà Nội” và được công nhận là di tích lịch sử năm 1989.'
    'Ngày 10/10/1954, cả Hà Nội tưng bừng rạo rực chào đón ngày hội lớn, ngày Hội chiến thắng, Thủ đô Hà Nội hoàn toàn giải phóng. Cả Hà Nội dồn về “Cột cờ Hà Nội” chờ đón giây phút lịch sử: Lễ thượng cờ Tổ quốc trên đỉnh “Cột cờ Hà Nội”.\n'

    'Đúng 15 giờ, ngày 10/10/1954, còi nhà hát Thành phố nổi lên một hồi dài. Đoàn quân nhạc cử Quốc thiều theo sự điều khiển của đồng chí Đinh Ngọc Liên, Lá cờ tổ quốc được kéo lên từ từ theo nhịp khúc quân hành. Lần đầu tiên lá cờ đỏ sao vàng - cờ Tổ quốc tung bay trên đỉnh “Cột cờ Hà Nội”.'
    'Từ ngày xây dựng đến nay, “Cột cờ Hà Nội” đã gần hai trăm năm tuổi. Khi Nhà nước Việt Nam Dân chủ Cộng hòa ra đời, hình ảnh của “Cột cờ Hà Nội” đã được in trang trọng trên đồng tiền của Ngân hàng Nhà nước Việt Nam phát hành lần đầu tiên.'
    'Hơn nửa thế kỷ qua, gắn trên đỉnh “Cột cờ Hà Nội” là lá cờ đỏ sao vàng năm cánh tung bay lồng lộng trên nền trời của Thủ đô Thăng Long-Hà Nội ngàn năm văn hiến, mãi mãi là biểu tượng vinh quang, là niềm tự hào của dân tộc, đất nước Việt Nam độc lập, tự do.\n'
    'Theo tài liệu nghiên cứu, từ năm 1986, một lá cờ đỏ sao vàng kích cỡ 24m2 vuông luôn tung bay trên Cột cờ Hà Nội.\n'
    'Cột cờ Hà Nội ngày nay nằm bên đường Điện Biên Phủ, với những cây xà cừ cổ thụ mọc xung quanh và dưới chân là một vườn nhãn um tùm. \n'
    'Theo một số tài liệu nghiên cứu, trong một bức ảnh được chụp vào năm 1890 bởi Louis Sadoul, một sĩ quan quân y Pháp, khu vực vườn hoa Tượng đài Lenin dưới chân cột cờ ngày nay còn là hồ Voi vì là nơi tắm voi của triều đình nhà Nguyễn. Còn các rặng cây cổ thụ ngày nay khi đó còn chưa được trồng. Trong ảnh, còn có thể thấy quân Pháp đã dựng doanh trại bán kiên cố trên các vòng thành của Cột cờ để đóng quân.\n'
    'Cũng trong thời kỳ này, Cột cờ Hà Nội còn được quân Pháp dùng để làm đài quan sát. Trong cuộc chiến tranh phá hoại của Mỹ, Cột cờ cũng là đài quan sát của bộ đội phòng không Hà Nội. Khi đó, từ đỉnh cột cờ có thể nhìn thấy cả Hà Nội và vùng ngoại ô.'
    'Điều đặc biệt là giữa những ngày nóng nhất của Hà Nội, nhiệt độ bên trong của Cột cờ luôn mát mẻ như có máy lạnh. Kết cấu các cửa lên xuống của Cột cờ cũng khoa học đến mức mưa lớn đến đâu nước cũng không chảy vào trong lòng tháp.',
  //  description: 'assets/destination/CotCo.txt',
    images: [
      'assets/image/CotCo/CotCoHN1.jpg',
      'assets/image/CotCo/CotCoHN2.jpg',
      'assets/image/CotCo/CotCoHN3.jpg',
    ],
  ),
  DestinationModel(
    title: 'Đoan Môn',
    description: //'assets/destination/DoanMon.txt',
    'Đoan Môn Là một trong những cổng chính dẫn lối vào Cấm thành.'
    'Căn cứ vào vật liệu xây dựng và phong cách kiến trúc hiện còn của di tích,' 
    'có thể khẳng định Đoạn Môn hiện nay được xây dựng được xây dựng vào thời Lê và được tu bổ sửa sang vào thời Nguyễn.\n'
    'Di tích nằm ở hướng Nam của điện Kinh Thiên thẳng trục với Cột Cờ Hà Nội. Đoạn Môn được xây dựng theo chiều ngang, cấu trúc hình chữ U. '
    'Đoan Môn được xây theo lối tường thành cổ với 5 cổng thành được dựng cuốn vòm cân xứng gần như tuyệt đối qua “trục thần đạo”, hay còn được gọi là “trục chính tâm” của Hoàng thành.'
    'Phần kiến trúc chính làm kiểu vọng lâu, với 3 cửa vòm cuốn. Kiến trúc cuốn vòm ở các cổng thành không chỉ mang lại những đường cong duyên dáng, mà còn có kết cấu chịu lực cực tốt.\n'
    'Cho đến ngày nay, những công trình đường hầm hiện đại nhất, kỳ vĩ nhất trên thế giới cũng vẫn sử dụng lối kiến trúc này.'
    'Vật liệu chủ yếu là gạch vồ, loại gạch phổ biến của thời Lê và đá, cuốn vòm cửa. Từ đông sang tây dài 47,5m, từ nam lên bắc đoạn giữa đo đc 13m, cánh gà hai bên đo được 26,5m, cao 6m.\n'
    'Cửa giữa lớn nhất dành riêng cho nhà vua, cao 4m, rộng 2,7m. Hai bên có 4 cửa nhỏ hơn, cao 3,8m rộng 2,5m dùng để các quan, hoàng thân quốc thích ra vào cung cấm mỗi khi có lệnh vời hoặc tham dự các nghi lễ lớn tại điện Kính Thiên do Hoàng đế tiến hành.\n'
    'Tấm biển đá khắc hai chữ Đoan Môn, gắn phía trên cửa chính dài 1,5m rộng 0,7m. Hai bên có những bậc gạch nhỏ dẫn lên tầng hai. Tầng này có diện tích tương ứng với cửa chính giữa. Do bị cải tạo làm cơ sở làm việc cho quân đội nên kiến trúc cũ chưa thể khảo cứu được. '
    'Trên nóc tầng hai xây một phương đình nhỏ kiểu hai tầng tám mái. Mái lợp ngói ta, hai đầu nóc đắp hai con rồng (đầu kìm), hài hồi đắp hình hổ phù; 4 góc mái trên tạo thành đao cong.'
    '\nNăm 1999, các nhà khảo cổ học đã chọn hố khai quật ngay tại chính giữa cửa Đoan Môn hiện còn để lần tìm dấu vết con đường Ngự đạo xưa. Ngay ở độ sâu 1,2m đã xuất lộ một đường viền đá lát chân tường Đoan Môn, một sân lát đá gạch vồ thời Lê và ở độ sâu 1,9m đã xuất lộ dấu tích một con đường lát gạch “hoa chanh” thời Trần.' 
    'Theo hướng Bắc Nam, con đường được dự đoán còn kéo dài hơn nữa và rất có thể đó là con đường đi từ Đoan Môn đến điện Thiên An thời Trần. '
    'Đáng chú ý là trong số gạch lát con đường thời Trần còn có những viên gạch thời Lý được dùng lại. Như vậy kết quả khảo cổ học tại Đoan Môn càng củng cố thêm giả thiết về Đoan Môn thời Lý, Trần, Lê về cơ bản đã tọa lạc tại cùng một vị trí.',
    images: [
      'assets/image/DoanMon/1.jpg',
      'assets/image/DoanMon/2.jpg',
      'assets/image/DoanMon/3.jpg',
      'assets/image/DoanMon/4.jpg',
    ],
  ),

  DestinationModel (
    title: 'Điện Kính Thiên',
    description: 
    'Đây là di tích trung tâm, trong tổng thể các di tích của khu Trung tâm Hoàng thành Thăng Long - Hà Nội. '
    'Điện Kính Thiên - cung điện quan trọng bậc nhất, nơi cử hành các nghi lễ long trọng nhất của triều đình, '
    'nơi đón tiếp sứ giả nước ngoài và là nơi thiết triều bàn những việc quốc gia đại sự.\n'
    'Theo “Đại Việt Sử ký toàn thư”, điện Kính Thiên được xây dựng năm 1428 đời Vua Lê Thái Tổ và hoàn thiện vào đời Vua Lê Thánh Tông.'
    'Điện Kính Thiên được xây dựng trên núi Nùng, ngay trên nền cũ của cung Càn Nguyên - Thiên An thời Lý, Trần.'
    'Lấy Càn Nguyên đặt tên cho điện coi chầu, Lý Thái Tổ đã chọn đúng trung tâm của trời đất đặt ngai vàng để trị nước.'
    'Sau các vua nhà Lý, các vua nhà Trần, nhà Lê đã cho xây dựng hệ thống thành lũy tại đây.'
    'Khu vực quan trọng là Cấm Thành (hay Long Thành, Long Phượng Thành) trong thành Thăng Long thời Lý - Trần - Lê. '
    'Trung tâm là điện Càn Nguyên, Thiên An thời Lý - Trần, điện Kính Thiên thời Lê.\n'
    'Từ năm 1788, khi Vua Quang Trung đóng đô ở Phú Xuân - Huế và sau đó nhà Nguyễn (1802 - 1945 ) cũng định đô '
    'tại đây thì thành Thăng Long trở thành trụ sở của Trấn Bắc Thành.\n'
    'Năm 1805, Vua Gia Long cho xây dựng khu vực này làm hành cung để vua sử dụng mỗi khi các vua nhà Nguyễn “Bắc tuần”.' 
    'Tên “Thành cổ Hà Nội” xuất hiện từ năm 1831, khi Vua Minh Mạng thực hiện cuộc cải cách hành chính lớn, thành lập các'
    'tỉnh trên cả nước, trong đó có tỉnh Hà Nội, Thành Hà Nội là trụ sở của tỉnh Hà Nội.\n'
    'Thời Pháp thuộc, vào cuối thế kỷ XIX, thực dân Pháp phá bỏ hành cung Kính Thiên và xây dựng trụ sở chỉ huy pháo binh' 
    'tại đây. Ngôi nhà này được gọi là nhà Con Rồng (hay còn gọi là Long Trì), do phía trước và sau đều có rồng đá chầu.'
    'Sau ngày 10/10/1954, khi quân ta vào tiếp quản Thủ đô, khu vực này trở thành nơi làm việc của Bộ Quốc phòng.\n'
    'Năm 2004, Bộ Quốc phòng bàn giao lại một phần diện tích khu vực trung tâm (trục chính tâm) Thành cổ Thăng Long -'
    'Hà Nội cho UBND thành phố Hà Nội quản lý.\n',
    images: [
      'assets/image/KinhThien/1.jpg',
      'assets/image/KinhThien/2.jpg',
      'assets/image/KinhThien/3.jpg',
      'assets/image/KinhThien/4.jpg',
    ],
  ),

  DestinationModel(
    title: 'Hậu Lâu',
    description: //'assets/destination/HauLau.txt',
    'Hậu Lâu rộng khoảng 2.392m2, xưa gọi là Tĩnh Bắc Lâu, được xây dựng từ sau đời Hậu Lê, là nơi ở và sinh hoạt của hoàng hậu và công chúa.'
    'Thời Nguyễn, Hậu Lâu làm nơi ở của các cung tần, mỹ nữ đi theo nhà vua mỗi chuyến công du Bắc Hà.\n'
    'Công trình được xây bằng gạch, phía dưới hình hộp, trên là công trình kiến trúc ba tầng. Lầu dưới có ba tầng mái, lầu trên là hai tầng mái. '
    'Phần mái phỏng theo kiến trúc cổ truyền Việt Nam kiểu mái chồng diêm, có các đầu đao nhưng toàn bộ mái là kết cấu gạch và bê tông, trên đắp ngoài giả ngói.\n'
    'Người Pháp gọi Hậu Lâu là Lầu Công chúa hay Pagode des Dames (Chùa các bà). Cuối thế kỉ 19, Hậu Lâu bị hư hỏng nặng, sau này người Pháp đã cải tạo xây dựng lại như hiện nay.\n'
    'Năm 1998, được sự đồng ý của Bộ Văn hóa - Thông tin, Viện Khảo cổ học phối hợp cùng Ban quản lí danh thắng Hà Nội tổ chức 2 đợt khai quật khảo cổ học trên 2 hố tại di tích Hậu Lâu.'
    'Với các vết tích kiến trúc khai quật được, có thể nói lần đầu tiên trong lịch sử nghiên cứu Thăng Long - Hà Nội, cùng với cuộc đào thăm dò khảo cổ ở Đoạn Môn, '
    'các nhà nghiên cứu đã tìm thấy vết tích nền móng của nhiều kiến trúc, nhiều thời kì lịch sử với đặc trưng khác nhau. Khu vực này cách điện Kính Thiên không xa và theo sử cũ, là nơi có nhiều cung điện, lầu gác của triều đình.' 
    'Như vậy có thể khẳng định một lần nữa Hậu Lâu nằm trong khu vực trung tâm của Hoàng Thành Thăng Long thời Lý - Trần - Lê.',
    images: [
      'assets/image/HauLau/1.jpg',
      'assets/image/HauLau/2.jpg',
      'assets/image/HauLau/3.jpg',
    ],
  ),
  DestinationModel(
    title: 'Bắc Môn',
    description: //'assets/destination/BacMon.txt',
    'Bắc Môn (Cửa Bắc) được nhà Nguyễn xây dựng năm 1805 trên nền Cửa Bắc thời Lê theo lối vọng lâu - phần lầu ở trên còn phần thành ở dưới, '
    'cao 8,71m, rộng 17,08m, tường dày 20,48m. Phần lầu được dựng bằng khung gỗ theo lối chồng diêm tám mái, lợp ngói ta, trổ cửa ra bốn hướng.' 
    'Nước mưa trên vọng lâu được dẫn thoát xuống dưới qua hai ống máng bằng đá. Đứng trên cổng thành, quan quân có thể phóng tầm mắt bao quát '
    'khắp trong ngoài thành, dễ dàng quan sát di - biến động trong đội hình quân địch. Do đó, khi chiếm được thành Hà Nội, quân đội Pháp vẫn '
    'sử dụng lầu trên Bắc Môn làm chòi canh gác. '
    '\nHiện nay, lầu trên cổng thành mới được phục dựng một phần và được dành làm nơi thờ hai vị quan Tổng đốc thành Hà Nội - Nguyễn Tri Phương và Hoàng Diệu - đã tuẫn tiết vì không giữ được thành trước sức mạnh đạn pháo của quân đội Pháp. Nhiều người dân vẫn thường xuyên lên vọng lâu Bắc Môn để thắp nhang tưởng nhớ hai vị anh hùng lẫm liệt - những người được hậu thế kính cẩn dùng tên đặt cho hai con đường hiện đại chạy hai bên tả hữu vòng thành cổ năm xưa.'
    'Phần thành được xây dựng hết sức kiên cố bằng đá và gạch, chân kè bằng đá, cổng thành cũng được cuốn vòm bằng gạch theo lối xếp một viên gạch ngang xen một viên đặt dọc. Gạch xây thành có kích thước 35,5cm x 10cm x 12cm. Đá kê có kích thước dài từ 38 đến 86cm. Mép cửa kè đá hình chữ nhật, diềm trên bằng đá trang trí hoa sen. Hai cánh cổng thành bằng gỗ đã được trùng tu có tổng diện tích 24m2, trọng lượng khoảng 16 tấn, chạy trên bánh xe bằng đồng trọng lượng khoảng 80kg. Phía ngoài bên trên cổng thành còn ba chữ Hán khắc đá: “Chính Bắc Môn”, diềm biển trang trí hoa dây.'
    'Theo cứ liệu lịch sử và những bức ảnh tư liệu chụp từ thời thành Hà Nội chưa bị phá, hai bên Bắc Môn phía trong tường thành có lối dẫn lên vọng lâu được xây bằng gạch theo hình tam giác. Trước Bắc Môn là chiếc cầu gạch bắc qua con hào rộng khoảng 20m bao quanh thành. Quan sát bằng mắt thường có thể thấy, vị trí con hào phía trước Bắc Môn hiện nay chính là bãi cỏ, vỉa hè và một phần lòng đường phố Phan Đình Phùng. Có ý kiến cho rằng, chiếc cầu bắc qua hào vào Bắc Môn là cầu gạch kiên cố, không phải cầu treo nên con hào không mang tính phòng thủ. Tuy nhiên, nhiều ý kiến khác cho rằng, dù cầu vào thành không phải là cầu treo, nhưng mục tiêu phòng thủ của con hào bao quanh thành cổ là chính yếu - nó giúp hạn chế giặc tiếp cận chân thành.'
    '\nDù Bắc Môn là công trình do nhà Nguyễn xây dựng, nhưng dưới chân cổng thành sừng sững này là tầng tầng lớp lớp di chỉ thành quách từ các'
    'triều đại trước đó, khẳng định sự liên tục trong lịch sử ngàn năm của Hoàng thành. Năm 1998, tại khu vực Bắc Môn, các nhà khảo cổ đã tìm thấy' 
    'nhiều dấu vết kiến trúc ở độ sâu 1,66m và 2,2m, trong đó có vết tích của những đoạn tường thành xây bằng đá và gạch vồ thời Lê.'
    '\nNgày nay, Bắc Môn trở thành một điểm đến được nhiều du khách trong và ngoài nước yêu thích. Và, nếu để ý, du khách có thể dễ dàng nhận'
    'thấy phía ngoài Bắc Môn vẫn còn lưu dấu 2 vết đạn thần công của Pháp khi chúng dùng chiến thuyền tấn công thành Hà Nội từ phía bờ sông Hồng. '
    'Lúc phá thành cổ Hà Nội, thực dân Pháp đã cố ý bớt lại Bắc Môn, vừa để làm vọng canh, lại vừa để khoe “chiến tích” đánh chiếm Hà thành. '
    '\nMới đây, khi Bắc Môn được thủ đô Hà Nội trùng tu, hai vết thần công cũng được ta hữu ý giữ lại để ghi nhớ về một thuở Hà Nội quằn quại '
    'dưới gót giày xâm lược và nhân dân Hà Nội anh dũng chống trả giặc ngoại xâm.',
    images: [
      'assets/image/BacMon/1.jpg',
      'assets/image/BacMon/2.jpg',
      'assets/image/BacMon/3.jpg',
      'assets/image/BacMon/4.png',
    ],
  ),
  DestinationModel(
    title: 'Nhà D67',
    description: //'assets/destination/D67.txt',
    'Nhà D67 mà tên đầy đủ là Phòng họp của Bộ Chính trị và Quân ủy Trung ương.'
    'Năm 1966, Mỹ bắt đầu dùng không quân đánh phá Thủ đô Hà Nội.'
    'Năm 1967, mức độ đánh phá ngày càng ác liệt. Để đảm bảo nơi làm việc của'
    'cơ quan Tổng hành dinh trong chiến tranh, Bộ Quốc phòng quyết định xây' 
    'dựng một ngôi nhà trong khu A, Sở chỉ huy, Bộ Quốc phòng (Hành cung thành' 
    'Hà Nội thời Nguyễn). Ngôi nhà thiết kế và xây dựng vào năm 1967, được gọi là nhà D67.\n'
    'Di tích lịch sử - cách mạng Nhà D67 gắn với hoạt động của Bộ Chính trị,' 
    'Quân ủy Trung ương Đảng Cộng sản Việt Nam (năm 1976 về trước là Đảng Lao động' 
    'Việt Nam), Bộ trưởng Bộ Quốc phòng, Tổng Tham mưu trường Quân đội Nhân dân'
    'Việt Nam từ tháng 9 năm 1968. Nhà D67 là một thành tố cơ bản của Tổng hành'
    'dinh trong cuộc kháng chiến chống Mỹ, cứu nước.'
    '\nTrong di tích Nhà D67 có Phòng họp của Bộ Chính trị và Quân ủy Trung ương:'
    'Phòng làm việc của Đại tướng Võ Nguyên Giáp và Phòng làm việc của Đại tướng Văn Tiến Dũng.'
    '\nNhà D67 là một trong những công trình kiến trúc quân sự ít ỏi trong kháng chiến chống Mỹ '
    'còn tương đối nguyên vẹn. Nguyên nhân chính là do công trình được xây dựng bằng vật liệu' 
    'bền vững: sắt, thép, gạch, cát, xi măng, khi có hiện tượng hư hỏng, công trình được sửa' 
    'chữa kịp thời, mặt khác, công trình nằm trong khu vực nghiêm mật, được bảo vệ chu đáo.\n'
    'Nhìn bề ngoài Nhà D67 là một ngôi nhà mái bằng bình thường, kích thước: 43,02 x 20,85m,' 
    'chiều cao đỉnh mái 7,89m, nằm dưới lùm cây. Chỉ khi vào bên trong, yếu tố quân sự mới' 
    'hiện rõ, tường dày 0,6m, cách âm, cửa có 2 lớp: lớp ngoài bằng thép tấm dày 1cm.' 
    'Trên mái có 1 lớp cát, cản được mảnh rốc két và mảnh bom thong thường. Hành lang sau '
    'thong với hai cửa xuống hầm ngầm. Cửa hầm làm bằng thép tấm.\n'
    'Phòng họp của Bộ Chính trị và Quân ủy Trung ương có 4 cửa: phòng làm việc của Đại' 
    'tướng Võ Nguyên Giáp, Đại tướng Văn Tiến Dũng vó 2 cửa. Khi xảy ra sự cố, có thể' 
    'nhanh chóng thoát ra ngoài hoặc xuống hầm ngầm. Bên trong không có hệ thống ghi âm,' 
    'ghi hình, chống đột nhập.\n'
    'Hầm D67 (hầm Quân ủy Trung ương) được xây dựng năm 1967 cùng với nhà D67. Hầm sâu 9m, '
    'được xây dựng kiên cố để chống bom. Hầm có ba tầng cầu thang lên xuống.'
    'Cầu thang phía nam thông với Nhà con rồng, hai cầu thang phía Bắc thông với nhà D67. '
    'Đây là nơi họp của Bộ Chính trị và Quân ủy Trung ương khi cần thiết và là phần quan trọng '
    'trong kết cấu nhà D67.\n'
    'Nhà D67 là một công trình kiến trúc quân sự giản dị nhưng giá trị sử dụng rất cao.' 
    'Trong 7 năm, ngôi nhà bảo đảm an toàn cho Bộ Thống soái tối cao làm việc, hoạch định chủ trương,' 
    'chỉ đạo tôt chức thực hiện thắng lợi giai đoạn cuối cùng của cuộc kháng chiến chống Mỹ, cứu nước.' 
    'Nhà D67 một trong các di tích văn hóa quân sự quí giá thời đại Hồ Chí Minh ở thế kỉ 20.'
    ,
    images: [
      'assets/image/D67/1.jpg',
      'assets/image/D67/2.jpg',
      'assets/image/D67/3.jpg',
      'assets/image/D67/4.jpg',
    ],
  ),
  DestinationModel(
    title: 'Khu khảo cổ 18 Hoàng Diệu',
    description: //'assets/destination/Khaoco.txt',
    'Khu di tích khảo cổ học 18 Hoàng Diệu nằm cách nền điện Kính Thiên khoảng 100m về phía Tây, '
    'trong chỉnh thể thống nhất của di sản Khu Trung tâm Hoàng thành Thăng Long - Hà Nội.\n'
    'Từ tháng 12/2002, cuộc khai quật khảo cổ học lớn nhất Việt Nam đã được thực hiện tại 18 Hoàng Diệu.'
    'Khu khai quật khảo cổ học được Viện khảo cổ học phân làm 4 khu, đặt tên là A, B, C, D. \n'
    'Những khám phá quan trọng của khảo cổ học dưới lòng đất khu vực phía Tây trục trung tâm Cấm '
    'thành tại 18 Hoàng Diệu đã làm phát lộ một quần thể di tích kiến trúc phong phú, đa dạng cùng'
    'hàng triệu di vật thuộc nhiều thời kỳ nằm chồng xếp, đan xen nhau, bắt đầu từ thời Đại La '
    '(thế kỷ 7- 9), thời Đinh, Tiền Lê (thế kỷ 10), thời Lý (1009-1225), Trần (1226-1400), Lê sơ '
    '(1428-1527), Mạc (1527- 1592), Lê Trung Hưng (1593- 1789) và Nguyễn (1802- 1945).\n'
    'Lớp dưới cùng là hệ thống kiến trúc thuộc thời Tiền Thăng Long hay còn gọi là thời An Nam'
    'đô hộ phủ hoặc Đại La, thể hiện rõ qua hệ thong các cột gỗ, các nền móng kiến trúc, đường '
    'cống tiêu thoát nước, giếng nước và di vật như gạch “Giang Tây quân”, ngồi đầu ngói ống '
    'trang trí hình thú thần, mặt hề và nhiều đồ gốm sứ có niên đại thế kỉ 7 – 9.\n'
    'Lớp trên kiến trúc thời Đại La là dấu vết kiến trúc thời Lý – Trần, biểu hiện rõ qua hệ thống'
    'mặt bằng kiến trúc có các trụ móng sỏi kê chân cột, các lớp nền gạch, chân tảng đá hoa sen, sân'
    'gạch, đường cống thoát nước, đặc biệt là các loại hình di vật trang trí tên mái kiến trúc có kích'
    'thước to lớn và được trang trí cầu kì, tinh xảo. Một số vị trí có dấu tích văn hóa thời Đinh – Tiền Lê.\n'
    'Phía trên cùng là lớp kiến trúc thời Lê, với dấu tích của các nền kiến trúc xây bằng gạch vồ, hệ thống'
    'giếng nước, đặc biệt là các loại ngói thanh lưu ly, hoàng lưu ly trang trí rồng 5 móng chuyên dùng để lợp '
    'trên mái cung điện của nhà vua và các loại đồ sứ ngự dụng dành riêng cho nhà vua. Một số vị trí có dấu tích'
    'văn hoá thời Nguyễn nhưng mờ nhạt không rõ ràng.\n'
    'Những lớp đất mang dấu ấn của đủ hết các thời kì lịch sử trong vòng 1300 năm qua, lại có diễn biến theo'
    'trật tự và liên tục không gián đoạn, đặc biệt là có vị trí ở trung tâm của Hoàng Thành và Cấm Thành Thăng Long. '
    'Khu vực này là một tài sản vô giá của lịch sử và văn hóa Việt Nam nói chung, và của lịch sử – văn hóa'
    'Thăng Long – Hà Nội nói riêng.\n'
    'Tính đến tháng 12/2009, trong tổng diện tích khai quật 33.000m2, các nhà khảo cổ học đã bước đầu '
    'xác định được 168 di tích bao gồm: 95 dấu tích nền móng kiến trúc, 16 di tích móng tường bao, '
    '24 giếng nước và 33 cống nước.\n'
    'Bên cạnh dấu tích kiến trúc là các dấu tích ao hồ, dòng chảy, đặc biệt là con sông đào thời Lê sơ cùng thuyền gỗ, mái chèo, bánh lái được sơn son.' 
    '\nDấu tích hồ sen của Cấm thành cũng được xác định qua các tàn tích lá, củ sen trong lớp bùn của hồ nước. '
    'Đó là hình ảnh về sự gắn kết hài hòa trong quy hoạch đô thị, tạo dựng cảnh quan môi trường của Thăng Long xưa.\n'
    'Khu di tích đã phát lộ hàng triệu di vật, trong đó chiếm số lượng lớn là vật liệu kiến trúc, đồ gốm sứ và đồ kim loại. Nhiều hiện vật là đồ dùng của Hoàng đế và Hoàng gia, gắn với đời sống Hoàng cung và mang ảnh hưởng của Phật giáo, Nho giáo. Nhiều hiện vật gốm sứ có nguồn gốc rất đa dạng, không chỉ do người Việt Nam sản xuất mà còn được mua về từ Trung Hoa, Nhật Bản và Tây Á. Điều này cho thấy tại Thăng Long - Hà Nội sự trao đổi, giao thoa văn hóa đã diễn ra trên phạm vi khá rộng.\n'
    'Quần thể dấu tích nền móng kiến trúc phát hiện được tại 18 Hoàng Diệu cho dù không còn nguyên vẹn, nhưng mang tính xác thực và có giá trị khoa học rất cao, cùng với hàng triệu di vật được phát hiện đã phản ánh tính liên tục của quá trình lịch sử lâu dài hàng nghìn năm của một trung tâm quyền lực, minh chứng cho sự giao thoa và hội nhập văn hóa với các nước trong khu vực Đông Á, Đông Nam Á của Thăng Long- Hà Nội, tạo ra nền văn hóa Đại Việt mang đậm bản sắc dân tộc.',
    images: [
      'assets/image/KhaoCo/1.jpg',
      'assets/image/KhaoCo/2.jpg',
      'assets/image/KhaoCo/3.jpg',
      'assets/image/KhaoCo/4.jpg',
    ],
  ),
];