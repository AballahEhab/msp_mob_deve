import 'package:flutter/material.dart';
import 'package:msp_mob_dev/membersList.dart';
import 'package:msp_mob_dev/timeline.dart';

import 'fLutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blueGrey[900]),
      home: msp_mob_dev(),
    );
  }
}

class msp_mob_dev extends StatefulWidget {
  @override
  _msp_mob_devState createState() => _msp_mob_devState();
}

class _msp_mob_devState extends State<msp_mob_dev>
    with SingleTickerProviderStateMixin {
  List<Map> membersList = [
    {
      'name': 'Sara Mohamed Saeed',
      'position': 'mobile app developer',
      'image': 'saramohamed',
      'feedback':
          'راي ف لجنه الموبايل ابلكيشن كميمبراولا من اول يوم وفي نظام محطوط وخطه كويسه اننا نمشي عليها بحيث الوقت ميروحش ع الفاضيالمحتوي اللي بنذاكر منه كويس جدا في متابعه حلوه اوي معانا سواء من ال head او ال hr متابعه تكنيكال وسوفت اسكيلز مخليانا علي الجهتين شغالين🌸غير الميتنج اللي بيبقي اجمل من اللي قبله وكله نشاط وحماس وبيدينا قوه دافعه رهيبه نكمل بيهاعن نفسي كساره استفدت كتير جدا والحمد لله بدات ارجع لمستوايا مع اني كنت بطلت كود سنتين كاملين وحرفيا نسيتدلوقت مستوي تفكيري بيعلي مع ااتاسكات بالمختصر المفيدانتوو ناس محددين كويس انتو عاوزين تعملو ايه وازاي وامتي وفعلا بفضل الله بيتنفذ🌸',
      'advice':
          'نصيحه لحد حابب يدخل ااتيم تعالي هتنورنا ومش هتلاقي تيم منظم ومبهج كده زي msp وناسه🌸💙وحقيقي هتستفيد كتير جدا كغايه بس ال positivity  اللي مغرقه المكان ومغرقانا معاها💙بنستني الميتنج علشان نشوفكم💙💙'
    },
    {
      'name': 'Ahmed El-mahallawy',
      'position': 'mobile app developer',
      'image': 'ahmedelmahallawy',
      'feedback':
          'لتيم بشكل عام عامل شغل كويس اوي السنة دي وبشكل خاص جوا في روح حلوة بتساعد الناس أنها تكمل المشوار وبالأخص ف اللجنة بتاعتنا',
      'advice':
          'وانصح اي حد عايز يدخل التيم .. أنه ببساطة يدخل التيم بس نشيل لجنة ال HR دي خالص وهتبقي زي الفل والله بردو',
    },
    {
      'name': 'Hager Alaa ELdien',
      'position': 'mobile app developer',
      'image': 'hageralaaeldien',
      'feedback':
          'استفدت كتير حقيقي كحد مش أول تجربة ليه فالتيم اللي كان مميز ليكم: قبلكم للإعتذارات و إن فعلا الواحد بيبقي عامل الحاجة ديه علشان هو حابب يعملها ❤الميتنج مكنش بيكون ممل بالنسبالي وديه حاجة عظيمة 💥حلو الطاقة اللي هيد جميل زيك بيديها للواحد ❤',
      'advice': 'كنصيحة لأي حد حابب ينضم فعلًا الموضوع یستحق التجربة ❤',
    },
    {
      'name': 'Aya Hasanein',
      'position': 'mobile app developer',
      'image': 'ayaahasanein',
      'feedback':
          'الصبر عشان أتعلم الحاجة وازاي أكتب أكود وأصحح ال error  اللي فيها وعالرغم من أنه ميتنج واحد أوف لاين إلا أنه ساعدني أتعلم يغني ايه تيم work',
      'advice': '',
    },
    {
      'name': 'Mohamed Ghanem',
      'position': 'mobile app developer',
      'image': 'mohamedghanem',
      'feedback':
          ' انا مبسوط جدا من التيم ومن وجودى فيه الحمد لله فرصه جميله هتساعدنى وتدينى دفعه قدام اذا ربنا ارادلى انى اكمل فى المجال لانى مسبقا نويت على كدهحاسس انه كان هيبقا افضل لو الميتنج كانت اكتر من كده لانها نفيده جدا فكرة المشاركة عموما فى الافكار وفى الشغلبس دى كل حاجه كنت عايز اقولها 😊',
      'advice':
          ' نا بالفعل نصحت ٥ لحد دلوقتىلانهم مبسوطين من التغيير اللى حصلى شخصيالان بصراحه انا السنادى اتغير فى حجات كتير بسبب التيموانا بشكر ربنا وانتم عليهاانا دلوقتى عالاقل بقيت مش بنام غير وانا مخلص الجزء المحدد اللى حددته لنفسى فى اى تاسكالا لو حصل ظرف طارئ وهما لما شافوا التغير ده سألوا عالسبب وانا قلتلهم وفى حد هنا متحمس لموضوع السوفت وير تيستنج وناوى ييجى السنه الجايه باذن الله انا اللى بنصحه يعنى عموما بقوله على شغلكم وبتعملوا ايهوبقوله يبدأ من دلوقتى يعمل بحث عن الحجات اللى عايزها وبحث عن التيم نفسه',
    },
    {
      'name': 'Mostafa Hassan',
      'position': 'Mobile app developer',
      'image': 'mostafahassan',
      'feedback':
          'لتيم كيان كويس الصراحه وتحس إنك مش في تيم عادي لأ تيم إنترناشيونال زي مثلًا شركه عادية وشكرة إنترناشيونال أما عن لجنة الأندرويد فـ عاجبني فيها العمل الجماعي والروح اللي أنا عامله ليهم.. وشكرًا',
      'advice': '',
    },
  ];
  List<Map> workTeamList = [
    {
      'name': 'Abdallah ',
      'position': 'mobile app developer',
      'image': 'abdallahehab',
      'feedback': '',
      'advice': '',
    },
    {
      'name': 'Mohamed Emam',
      'position': 'mobile app developer',
      'image': 'mohamedemam',
      'feedback': '',
      'advice': '',
    },
    {
      'name': 'Mohamed Magdy',
      'position': 'mobile app developer',
      'image': 'mohamedmagdy',
      'feedback': '',
      'advice': '',
    },
    {
      'name': 'Aya Khaled',
      'position': 'mobile app developer',
      'image': 'aya khaled',
      'feedback': 'الفريق في المجمل جيد و علي وجه الاخص لجنه الموبايل اب رائعة و تمتلك جو مرح و مشجع للعمل',
      'advice': 'قرار المشاركه في عمل تطوعي في اعتقادي انه شئ اصبح لابد منه لانه يعمل علي تنميه الشعور بالمسؤوليه و المشاركه و ينعكس بشكل ايجابي من حيث ال soft skills (المهارات الحياتيه) Teamwoek والتدريب علي العمل الجماعي   الذي يحمل هدف سامي وهو Together Everyone Achieve More معا الجميع يحقق المزيد   بالاضافه ان تعلم شئ مرغوب من القلب والعقل يجعلها رحله مليئه بالشغف والحماس والتحدي ورغبتك لترك اثر جيد',

    },
    {
      'name': 'Aya Mohamed',
      'position': 'mobile app developer',
      'image': 'ayamohamed',
      'feedback': '',
      'advice': '',
    },
  ];
  List<Map> board = [
    {
      'name': 'Asmass MAgdy',
      'position': 'Android Track Leader',
      'image': '',
      'feedback': '',
      'advice': '',
    },
  ];
  TabController _tabController;
  ScrollController _scrollViewController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/msplogo.jpg'),
              ),
              title: Text('MSP Mobile Developers'),
              pinned: true,
              floating: true,
              backgroundColor: Colors.blueGrey[900],
              forceElevated: boxIsScrolled,
              bottom: TabBar(
                unselectedLabelColor: Colors.blueGrey[500],
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.people_outline),
                  ),
                  Tab(
                    icon: Icon(Icons.timeline),
                  ),
                  Tab(
                    icon: Icon(Icons.group_work),
                  ),
                  Tab(
                    icon: Icon(Icons.supervisor_account),
                  ),
                  Tab(
                    icon: Icon(Icons.code),
                  ),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[
            MembersList(
              members: membersList,
            ),
            TimelinePage(),
            MembersList(
              members: workTeamList,
            ),
            MembersList(
              members: board,
            ),
            flutter(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
