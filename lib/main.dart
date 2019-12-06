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
          'نصيحه لحد حابب يدخل ااتيم تعالي هتنورنا ومش هتلاقي تيم منظم ومبهج كده زي msp وناسه🌸💙وحقيقي هتستفيد كتير جدا كغايه بس ال positivity  اللي مغرقه المكان ومغرقانا معاها💙بنستني الميتنج علشان نشوفكم💙💙',
      'college': 'Engineering',
      'date': 'October 2019',
    },
    {
      'name': 'Ahmed El-mahallawy',
      'position': 'mobile app developer',
      'image': 'ahmedelmahallawy',
      'feedback':
          'لتيم بشكل عام عامل شغل كويس اوي السنة دي وبشكل خاص جوا في روح حلوة بتساعد الناس أنها تكمل المشوار وبالأخص ف اللجنة بتاعتنا',
      'advice':
          'وانصح اي حد عايز يدخل التيم .. أنه ببساطة يدخل التيم بس نشيل لجنة ال HR دي خالص وهتبقي زي الفل والله بردو',
      'college': 'Engineering',
      'date': 'October 2019',
    },
    {
      'name': 'Hager Alaa ELdien',
      'position': 'mobile app developer',
      'image': 'hageralaaeldien',
      'feedback':
          'استفدت كتير حقيقي كحد مش أول تجربة ليه فالتيم اللي كان مميز ليكم: قبلكم للإعتذارات و إن فعلا الواحد بيبقي عامل الحاجة ديه علشان هو حابب يعملها ❤الميتنج مكنش بيكون ممل بالنسبالي وديه حاجة عظيمة 💥حلو الطاقة اللي هيد جميل زيك بيديها للواحد ❤',
      'advice': 'كنصيحة لأي حد حابب ينضم فعلًا الموضوع یستحق التجربة ❤',
      'college': 'Engineering',
      'date': 'October 2019',
    },
    {
      'name': 'Aya Hasanein',
      'position': 'mobile app developer',
      'image': 'ayaahasanein',
      'feedback':
          ' اتعلمت ازاي أكتب أكود وأصحح ال error  اللي فيها وعالرغم من أنه ميتنج واحد أوف لاين إلا أنه ساعدني أتعلم يغني ايه تيم work',
      'advice': 'الصبر عشان أتعلم الحاجة',
      'college': 'Engineering',
      'date': 'October 2019',
    },
    {
      'name': 'Mohamed Ghanem',
      'position': 'mobile app developer',
      'image': 'mohamedghanem',
      'feedback':
          ' انا مبسوط جدا من التيم ومن وجودى فيه الحمد لله فرصه جميله هتساعدنى وتدينى دفعه قدام اذا ربنا ارادلى انى اكمل فى المجال لانى مسبقا نويت على كدهحاسس انه كان هيبقا افضل لو الميتنج كانت اكتر من كده لانها نفيده جدا فكرة المشاركة عموما فى الافكار وفى الشغلبس دى كل حاجه كنت عايز اقولها 😊',
      'advice':
          ' نا بالفعل نصحت ٥ لحد دلوقتىلانهم مبسوطين من التغيير اللى حصلى شخصيالان بصراحه انا السنادى اتغير فى حجات كتير بسبب التيموانا بشكر ربنا وانتم عليهاانا دلوقتى عالاقل بقيت مش بنام غير وانا مخلص الجزء المحدد اللى حددته لنفسى فى اى تاسكالا لو حصل ظرف طارئ وهما لما شافوا التغير ده سألوا عالسبب وانا قلتلهم وفى حد هنا متحمس لموضوع السوفت وير تيستنج وناوى ييجى السنه الجايه باذن الله انا اللى بنصحه يعنى عموما بقوله على شغلكم وبتعملوا ايهوبقوله يبدأ من دلوقتى يعمل بحث عن الحجات اللى عايزها وبحث عن التيم نفسه',
      'college': 'Commerce',
      'date': 'October 2019',
    },
    {
      'name': 'Mostafa Hassan',
      'position': 'Mobile app developer',
      'image': 'mostafahassan',
      'feedback':
          'لتيم كيان كويس الصراحه وتحس إنك مش في تيم عادي لأ تيم إنترناشيونال زي مثلًا شركه عادية وشكرة إنترناشيونال ',
      'advice':
          'لجنة الأندرويد فـ عاجبني فيها العمل الجماعي والروح اللي أنا عامله ليهم.. وشكرًا',
      'college': 'Engineering',
      'date': 'October 2019',
    },
    {
      'name': 'Sara Ebrahim',
      'position': 'mobile app developer',
      'image': 'saraebrahim',
      'feedback':
          'رأيي فى التيم: يعنى لو فضلت اقول لبكرة مش هيكفى..💜🌸 التيم رائع بمعنى الكلمة فى كل حاجة وكل الناس جميلة جدا و متعاونة💕 انا من السنه اللى فاتت وانا كان نفسي ابقى معاكم بسبب روحكم الحلوة والاستفادة اللى بنستافدها منكموالحمدلله ربنا حقق لى حلمى وبقيت جزء من الكيان العظيم ده فخورة اوى انى فى msp ♥وطبعا فخورة انى فى اروع لجنة فى التيم لجنة Mobil developers اللى استفدت منها كتير بجد و من workshopsاللى فى meetings كل شخص فى اللجنة استفدت منه ✨وطبعا منك يا احلى ليدر علمتينى حاجات كتيير ♥🌹اتعلمت منكم البريزنتيشن سكيلز وطريقة تفكيرى فى البرمجة اتطورت🤗',
      'advice':
          'انصح اى حد يدخل msp من غير تردد لأنه هيكون بداية الطريق لتحقيق اهدافة ونجاحه وهو طريق النجاح بذاته 😍😍♥♥',
      'college': 'Human Studies gegraphy.DEP',
      'date': 'October 2019',
    },
  ];
  List<Map> workTeamList = [
    {
      'name': 'Abdallah Ehab ',
      'position': 'mobile app developer',
      'image': 'abdallahehab',
      'feedback':
          ' كانت أول مره أتطوع وندمت انى ضيعت سنتين من غير تطوع دايما اللى عدو مرحلة الكليه بيقولو أحسن فتره ف حياتك هى فترة الكليه و أنا فره ف الكليه بالنسبالى هى اللى قضتها مع MSP لجنة Mobile App Developers بقا دى ف حته تانيه خالص التعاون و النظام وكل حاجه خلونى أعمل حاجات مكنتش أتوقعها من نفسى خلونى أكتشف قدرات نفسى الحقيقيه شكرا لكل MSP ',
      'advice':
          'جرب ومتخافش انك تجرب أى حاجه و غير مش لازم تفضل زى ما انت على لازم تتغير عشان تعرف تتأقلم ف حياتك كلها',
      'college': ' Engineering',
      'date': 'October 2019',
    },
    {
      'name': 'Mohamed Emam',
      'position': 'mobile app developer',
      'image': 'mohamedemam',
      'feedback':
          'الصراحه انا مكنتش اعرف يعني ايه تيمات قبل كدا ولما سمعت عن تيم msp قولت اروح اقدم واهو حاجه تملى وقتي واستفاد ... بس انا لقيت اني مش بس دخلت تيم جامعه عشان استفاد ... انا اكني قدمت ف شركه وبشتغل مع تيم وفي تاسكات ومتابعه ومش بس الناحيه العلميه ... لا والعمليه كمان و الثقافيه والاخلاقيه ... طورت جوايا مهارات كتيره و اكتشفت مهارات مكنتش عارف انها موجوده عندي . ♥',
      'advice':
          'خش التيم و جرب هتحس انك سخرت الحاجه اللي بتدرسها للعبه ومسابقات ... الحاجه بئى ليها طعم مش بس تادية واجب والسلام ... هتلاقي ناس بتشجعك و ناس بتساعدك و اللي مش هيعرف ولا يشجعك ولا يساعدك هيدعيلك ♥😍',
      'college': 'Engineering',
      'date': 'October 2019',
    },
    {
      'name': 'Mohamed Magdy',
      'position': 'mobile app developer',
      'image': 'mohamedmagdy',
      'feedback':
          'It\'s a pleasure to be a member in MSP team, we had  great moments, I have learnt alot and In less than two months I was able to develop complete stunning apps, I also had a great time working in teams and having great activities',
      'advice':
          'I highly recommend you to join MSP team if you are willing to learn more about mobile app development  and become a real developer.',
      'college': 'Engineering',
      'date': 'October 2019',
    },
    {
      'name': 'Aya Khaled',
      'position': 'mobile app developer',
      'image': 'aya khaled',
      'feedback':
          'الفريق في المجمل جيد و علي وجه الاخص لجنه الموبايل اب رائعة و تمتلك جو مرح و مشجع للعمل',
      'advice':
          'قرار المشاركه في عمل تطوعي في اعتقادي انه شئ اصبح لابد منه لانه يعمل علي تنميه الشعور بالمسؤوليه و المشاركه و ينعكس بشكل ايجابي من حيث ال soft skills (المهارات الحياتيه) Teamwoek والتدريب علي العمل الجماعي   الذي يحمل هدف سامي وهو Together Everyone Achieve More معا الجميع يحقق المزيد   بالاضافه ان تعلم شئ مرغوب من القلب والعقل يجعلها رحله مليئه بالشغف والحماس والتحدي ورغبتك لترك اثر جيد',
      'college': 'Commerce',
      'date': 'October 2019',
    },
    {
      'name': 'Aya Mohamed',
      'position': 'mobile app developer',
      'image': 'ayamohamed',
      'feedback':
          'الاعضاء محترمين وكويسين جدا منظمين وحطين خطه يمشوا بيها بيساعدكوا فى اى حاجه بتقف قصادكبيبدءوا معاك من الZero ومبييأسوش',
      'advice':
          'لو فعلا عايز تحقق حلمك وتتعلم مجال البرمجه حاول تنتهز الفرصه وتقدم فى التيم عشان فعلا هيفيدك فى المجال ده وحاول تستنزف الهيد بتاعك وتاخد منه كل المعلومات الخاصه بالمجال وابدء ابنى نفسك بنفسك',
      'college': 'Commerce',
      'date': 'October 2019',
    },
  ];
  List<Map> board = [
    {
      'name': 'Asmaa Magdy',
      'position': 'Android Track Leader',
      'image': 'asmaamagdy',
      'feedback':
          'ال mobile developers ل سنة 2020 ، لأ بجد شكراً ليكم جدا شكرا لانكم بتكونوا في السنتر من قبل معاد الميتنج ، و انكم بتحرصوا إن التاسكات تخلص في وقتها و باحسن شكل شكراً انكم دائما بتكونوا قد المسؤولية شكراً كمان انكم بتقدروا الشغل ال بنعمله و بتقول للنا احنا كمان عاش حقيقي ده ال يحسسني اني مش برمي تعبي في الارض ، لأ الناس دي عاوزة تشتغل بجد حقيقي انا فخورة بيكم و سعيدة بال وصلتوا له و لسه هتكملوا الترم الثاني',
      'advice':
          'طيب خلينا نتفق كده الاول إن التراك ده أعظم تراك في MSP كل اللجان مميزة و شغلها عالي جدا بس تراك الموبايل ديفولب يظل الأقرب لقلبي عشان في التراك بشكل عام انت بتتعلم تيكنيكال تشتغل بيه او لو مش هتشتغل بيه هيساعدك بعد كده تنقل ل اي مجال تاني و انت عندك خبرة في التعامل مع الكود ده طبعا غير السوفت سكليز و الناس ال بتتعرف عليها في نفس مجالك و يعني متعدش فوائد التراك ، ادخل و انت مطمئن',
      'college': 'Commerce',
      'date': 'October 2018',
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
