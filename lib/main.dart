import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyPageView(),
        backgroundColor: Color.fromARGB(255, 63, 60, 60),
      ),
    );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({super.key});

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  final PageController controller = PageController();
  static dynamic currentPageValue = 0.0;

  final String words =
      """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut magna ac sem lacinia pharetra non quis nunc. Proin quis auctor ex. Pellentesque quis egestas nisl. Sed vitae feugiat ex. Nulla et varius dui. Nulla in imperdiet neque, vitae dignissim erat. Aenean quis imperdiet neque. Suspendisse ac posuere leo. Aliquam erat volutpat. Vivamus consequat risus eget turpis lacinia, iaculis congue odio consequat.

Cras in mi in massa aliquet porttitor id at tellus. Curabitur id eros nec mi vulputate porttitor a ut turpis. Phasellus varius et elit eu semper. Nam egestas bibendum est et volutpat. Mauris venenatis turpis et bibendum laoreet. Donec dapibus nibh nulla, eget hendrerit lorem convallis ac. In et consequat metus, vel dapibus elit. Vestibulum efficitur felis quis ipsum hendrerit aliquam. Nunc a odio id odio laoreet volutpat. Sed vel ultrices ante. Duis eu risus ac nulla egestas porttitor. Donec vehicula convallis pretium. Cras et ultrices augue. Nulla congue, libero vel gravida sagittis, libero libero gravida purus, ut cursus orci arcu ac diam.

Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Ut in leo rutrum, scelerisque ante non, facilisis augue. In ultricies viverra mauris, non feugiat lorem consequat ut. Maecenas at sapien sed lectus efficitur egestas. Aliquam finibus posuere elementum. Mauris tristique pharetra justo et imperdiet. Suspendisse dignissim sodales sagittis. Pellentesque scelerisque facilisis neque sed consequat. In ac faucibus nisi. Aliquam suscipit augue metus, dictum blandit lorem lacinia in.

Mauris vel mi eu nisi faucibus scelerisque. Nullam fermentum elit id ante ultricies, eu ultrices purus pulvinar. Duis nisl sapien, fermentum non dui facilisis, interdum condimentum nulla. Sed turpis nibh, mattis ac arcu vitae, laoreet pharetra libero. Nulla varius malesuada nunc et auctor. Curabitur euismod finibus purus, vitae facilisis massa iaculis eu. Proin eu convallis leo, sed tempus odio. Curabitur iaculis massa odio, id aliquet erat sodales vitae. Proin vel odio magna. In arcu metus, dapibus quis dapibus non, consequat eget diam. Nullam rhoncus sapien sit amet risus bibendum, in tempor magna blandit. Nam egestas dapibus enim, a rutrum enim venenatis at. Aliquam ut sodales libero, eget convallis ante. Nunc sed orci vehicula, posuere mauris vitae, mattis eros. Nam vitae bibendum sem.

Vivamus condimentum, lacus sit amet consectetur euismod, erat libero semper quam, et rutrum arcu nunc vitae magna. Proin aliquet ante et turpis tincidunt feugiat. Etiam ultricies est id dui lacinia, quis imperdiet nibh facilisis. Sed sagittis magna a purus commodo fringilla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec tincidunt ullamcorper diam non lobortis. Nam sagittis, metus in tincidunt consequat, nibh leo pharetra elit, vitae facilisis ante nunc quis libero. Aliquam ac mauris mollis odio aliquet convallis id quis nulla. In non luctus sem. Mauris ultrices ut tortor sed sollicitudin. Donec commodo porttitor lacus, vitae condimentum nisl pellentesque id. Duis tincidunt faucibus risus, in facilisis nisi pretium auctor. Nulla imperdiet augue lorem, ac ullamcorper mi suscipit et.

Fusce tortor urna, mattis vel risus ut, posuere posuere lacus. Vestibulum enim tellus, finibus sed sodales fermentum, sagittis vel sem. Ut venenatis mi quis dolor blandit efficitur. In aliquam scelerisque felis in imperdiet. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam erat volutpat. Vivamus finibus vulputate convallis. Sed id viverra tortor, nec gravida ligula. Nullam semper accumsan ex nec rhoncus. Morbi placerat sodales eros vitae tempus. Curabitur congue sagittis ligula, sit amet scelerisque risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tincidunt felis id justo vestibulum accumsan. Sed posuere, tellus id laoreet malesuada, risus dui rhoncus orci, ut ullamcorper nisl mauris at ipsum. Sed laoreet felis nec imperdiet rhoncus.

Proin porttitor lobortis lacus, vel congue felis elementum sit amet. Curabitur non justo sed dolor maximus condimentum. Quisque dui magna, vehicula ac erat et, vehicula euismod est. Nullam ac scelerisque purus. Nunc et massa fermentum, bibendum sem eget, blandit nibh. Suspendisse sed magna tellus. Pellentesque non vestibulum justo, vulputate volutpat odio. In convallis condimentum turpis, vitae lacinia massa accumsan eget. Integer sed mauris sollicitudin, molestie metus in, fringilla enim. Nam sagittis non nibh at pharetra. Donec pharetra volutpat orci, non mollis dui maximus et. Vivamus fermentum ante eu nisi hendrerit, nec egestas metus vestibulum.

Etiam ut ipsum orci. Ut tincidunt arcu a gravida vestibulum. Nullam vestibulum massa eros, at dictum quam fermentum non. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque consectetur consectetur turpis, nec efficitur nunc lobortis vel. Etiam cursus, dui at aliquam aliquam, neque nisi rutrum est, ut laoreet lacus lorem sed urna. In nec orci commodo, ullamcorper ex vel, placerat justo. Etiam imperdiet purus sollicitudin imperdiet suscipit. Morbi ut justo vel lacus bibendum fringilla. Suspendisse et odio et risus vulputate vestibulum. Donec viverra ac nulla non aliquet. Nam congue urna in metus aliquam, ut porttitor nulla scelerisque. Pellentesque nec efficitur leo. Curabitur consequat gravida augue. Morbi urna lorem, gravida sit amet nisi sed, venenatis lacinia dolor. Pellentesque vel mi interdum, tempus diam sed, sollicitudin est.

Integer sit amet elit in mi convallis iaculis. Nulla vitae ante at ligula lacinia dignissim. Curabitur sed odio nec nisl hendrerit egestas nec vel nibh. Vivamus imperdiet, felis id ultrices gravida, leo nibh volutpat turpis, eu laoreet dolor nisi quis eros. Suspendisse ac nisl purus. Cras nisi purus, ullamcorper ut lacus vitae, laoreet sagittis ligula. Praesent orci arcu, vestibulum et lorem vel, molestie tempus lectus.

Mauris sit amet luctus ex, vitae semper velit. Donec sed nunc at ipsum semper fringilla eu vel libero. Sed aliquam sagittis magna in pharetra. Vestibulum maximus ullamcorper elit id ornare. Aenean malesuada tincidunt libero hendrerit vulputate. Nulla sollicitudin mi a nisl semper sagittis. Integer in turpis eu leo feugiat dapibus. Morbi laoreet, odio vel pulvinar rhoncus, lorem arcu tristique magna, ut efficitur tellus purus vitae metus. Phasellus rhoncus vestibulum ligula ultrices feugiat.

Mauris vitae mollis libero. Nullam nec enim hendrerit, laoreet nisi sed, finibus ipsum. Aenean eget sagittis nisl. In sodales, nisi eget tristique luctus, metus metus fringilla lacus, quis porttitor mi nisi id orci. Phasellus fermentum tellus at tortor mattis, a pulvinar sem ultricies. Donec ultricies malesuada maximus. Sed nunc odio, hendrerit at vehicula et, sodales ut arcu. Maecenas sodales maximus ipsum ac luctus.

Duis consectetur laoreet mi, facilisis ultrices urna aliquam in. Donec eleifend cursus purus, a pulvinar libero ultrices vel. Quisque sed iaculis magna. Vestibulum nec molestie nulla, ut rhoncus enim. Aenean ullamcorper diam et lorem volutpat tincidunt. Donec luctus ex urna. Etiam id leo vitae orci vestibulum posuere. Aliquam gravida pellentesque tellus, sit amet pulvinar lacus hendrerit eget. Vivamus ante ipsum, tincidunt ac tellus non, tincidunt sagittis massa. Cras non vehicula quam. Curabitur id sem finibus neque condimentum convallis. Nam maximus lectus sit amet diam commodo laoreet. Mauris efficitur sem ultricies lacinia egestas.

Phasellus elementum euismod lorem quis mollis. Praesent at semper nulla. In sed nunc quis elit molestie vestibulum. Quisque vitae luctus nunc. Vivamus dictum lacus nec ligula rutrum, non vehicula nunc vulputate. Quisque orci mi, vehicula sed ornare sit amet, lobortis eu arcu. Suspendisse et est gravida, faucibus ligula in, consectetur sapien. Etiam posuere neque ut dictum viverra. Sed rutrum egestas auctor. Ut hendrerit ex odio, gravida elementum dolor dignissim at. Pellentesque quis quam justo. Suspendisse eleifend, turpis sit amet consectetur condimentum, arcu mauris bibendum ipsum, eu bibendum magna eros a sem. Mauris justo sapien, faucibus ac sagittis sed, laoreet ut elit. Curabitur enim elit, sagittis sed volutpat a, placerat sit amet magna. Etiam eget est pretium, consectetur nisl in, viverra mi.

Quisque fermentum risus vel eros pulvinar interdum. Proin pretium hendrerit nisi sed cursus. Etiam eget magna id diam efficitur efficitur. Nulla molestie sit amet massa et lacinia. Praesent turpis metus, dictum id libero eu, luctus mollis orci. Suspendisse tincidunt enim eu condimentum hendrerit. Phasellus id mattis enim. Aliquam convallis, magna convallis convallis iaculis, sapien massa egestas dolor, ac luctus mauris purus non augue. In hac habitasse platea dictumst.

Vestibulum pellentesque, erat vitae commodo facilisis, tellus tellus imperdiet mi, nec congue tortor tortor et orci. Mauris aliquam blandit libero nec egestas. Suspendisse porta sollicitudin massa nec congue. Ut eu nisi ullamcorper felis viverra eleifend ut quis massa. Proin sit amet magna ut enim ullamcorper ullamcorper. Quisque volutpat nunc non nulla ultricies cursus. Nam imperdiet finibus nibh in efficitur. Nullam tempus purus sit amet facilisis pulvinar. Suspendisse accumsan feugiat lacinia. Duis nunc turpis, blandit eget congue a, aliquam sed quam.

Integer aliquam orci non diam porttitor elementum. Pellentesque blandit, massa id mattis malesuada, leo tellus dignissim nulla, ac mollis risus lacus vitae nisi. Proin sed pulvinar enim. Duis eu tellus ac magna pretium laoreet. Nullam semper, nisl sed interdum imperdiet, lorem diam tincidunt nisl, eu tincidunt ante erat ut ligula. Integer nulla ex, tincidunt aliquet sapien non, varius venenatis leo. Aliquam tincidunt dolor non pulvinar laoreet. Fusce eget ipsum et lorem euismod mattis sed et tortor. Nunc elit libero, pellentesque a lacinia at, ultrices non sem. Etiam laoreet malesuada porttitor. Ut posuere est ex, at faucibus turpis auctor sagittis. Sed euismod pretium semper. Sed accumsan feugiat nisl id laoreet. Cras nec libero a lacus posuere sodales nec a turpis. Donec non lorem quis lectus porttitor convallis quis et ante.

Ut luctus nisl et leo egestas, quis vehicula mi rutrum. Vivamus mollis magna eu molestie tincidunt. Curabitur lacus enim, fermentum ut placerat vitae, pellentesque in nibh. Vestibulum nulla diam, rutrum sed enim ac, convallis malesuada augue. In pretium mi quam, ut luctus lectus pretium eu. Mauris elit massa, aliquet vitae auctor a, sagittis at turpis. Donec consectetur magna a elementum mattis.

Phasellus non lorem quis orci suscipit aliquam. Donec congue libero velit, eget efficitur purus pretium vel. Sed vitae magna metus. Integer porttitor lobortis ante vel fermentum. In vulputate, tortor nec maximus posuere, ipsum nunc tincidunt turpis, id porta dolor elit at ante. Vestibulum fermentum accumsan scelerisque. Sed eros sem, rutrum a justo rhoncus, dictum dignissim nisi. Nam sed pharetra leo. Phasellus ut purus a turpis auctor laoreet eget id erat. Duis fringilla efficitur feugiat. Nulla sagittis lobortis magna, in tempor arcu scelerisque non. Proin facilisis odio erat, quis suscipit arcu hendrerit at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent sem risus, faucibus eget tellus eget, malesuada placerat urna. Praesent sodales risus at neque luctus, a ullamcorper urna sagittis. Sed ac placerat ipsum, ac convallis lectus.

Pellentesque tincidunt urna bibendum dignissim mollis. Morbi placerat augue eu sem malesuada, ut sagittis lectus rutrum. In quis ante magna. Curabitur eu arcu non ex feugiat pharetra ac vel metus. Nunc convallis elit ac justo faucibus sodales. Pellentesque eget nibh quis justo convallis fermentum. Cras massa erat, tempor sit amet dui non, bibendum consequat lectus. Ut ac dui ut mi luctus tincidunt. Phasellus sed lacus varius, posuere nisl sit amet, tempus metus.

In hac habitasse platea dictumst. Praesent non lacinia mi, id condimentum nunc. Sed ac lectus justo. Suspendisse aliquam purus diam, ut tincidunt elit rhoncus a. Mauris porta vestibulum nisl a venenatis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed gravida neque lacus, a mattis risus bibendum aliquam. Proin id magna at massa feugiat iaculis in eu ligula. Mauris blandit congue maximus. Phasellus imperdiet tellus nec dictum rutrum. Ut iaculis ultricies lectus, id imperdiet ligula ultricies sit amet. Aliquam gravida blandit dui, ac interdum elit luctus imperdiet.

Maecenas id purus et quam molestie venenatis et sit amet dui. Donec porta nisl non sodales laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Pellentesque feugiat nisi non dignissim aliquam. Nullam turpis ipsum, dapibus venenatis sem at, cursus varius purus. Ut laoreet eu diam at sodales. Aliquam et varius nisi, eu placerat nunc. Vivamus maximus accumsan viverra. Vestibulum facilisis risus vel nibh faucibus fermentum. Nulla id sodales eros, ut pellentesque urna. Nulla non mi sed lorem congue egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam pellentesque ac massa in scelerisque. Mauris nec diam sit amet velit imperdiet aliquet. Vivamus vel sodales ante. Duis mattis lectus id quam tempus, sagittis suscipit nisl tincidunt.
""";
  List pageViewItem = [];

  @override
  void initState() {
    List wordChunks = [];
    const divIndex = 500;
    for (int i = 0; i < words.length; i += divIndex) {
      if (i + divIndex > words.length) {
        final tempString = words.substring(i, words.length);
        wordChunks.add(tempString);
      } else {
        final tempString = words.substring(i, i + divIndex);
        wordChunks.add(tempString);
      }
    }

    pageViewItem.addAll(List.generate(
        wordChunks.length,
        (index) => page(index, wordChunks[index],
            const Color.fromARGB(248, 255, 255, 255))));
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: pageViewItem.length,
      controller: controller,
      itemBuilder: (context, position) {
        return Transform(
          transform: Matrix4.identity()..rotateX(currentPageValue - position),
          child: pageViewItem[position],
        );
      },
    );
  }
}

Widget page(var pageno, String content, Color color) {
  return Container(
    padding: const EdgeInsets.all(10),
    width: double.infinity,
    height: double.infinity,
    color: color,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(
          Icons.pages,
          color: Colors.blueGrey,
        ),
        Text(content),
        Text("$pageno, Swipe right or left"),
        const Icon(
          Icons.arrow_right,
          color: Colors.blueGrey,
        )
      ],
    ),
  );
}
