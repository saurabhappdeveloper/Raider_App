import 'package:truckgo_new/core/core.dart';
import 'package:truckgo_new/modules/module.dart';



class passenger_tab extends StatefulWidget {
  const passenger_tab({Key key}) : super(key: key);

  @override
  State<passenger_tab> createState() => _passenger_tabState();
}

class _passenger_tabState extends State<passenger_tab> with SingleTickerProviderStateMixin {
  TabController _tabController;
final List<Tab> myTabs = <Tab>[
   Tab(text: Variable.new_request), 
  Tab(text: Variable.passenger), 
  Tab(text: Variable.favourite),
  Tab(text: Variable.groups),
  Tab(text: Variable.contacts),

];

@override
void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
    _tabController.addListener(() {
      setState(() {
        print(_tabController.index);
        // tabbarview_value = _tabController.index;
      });
    });
  }

 @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: myTabs.length, // Number of tabs
        child: Scaffold(
          backgroundColor: White_color,
          body:   Column(
            children: [
              appbar(
                    title: Variable.passenger_tab_title,
                    textalign: Alignment.center,
                    icon1: Image.asset(
                      "assets/images/pink_search.png",
                      height: 20,
                      width: 20,
                    ),
                   
                    child: Column(
                children: [
                  SizedBox(height: 10,),
                   TabBar(
                      isScrollable: true,
                        controller: _tabController,
                        labelColor: Primary_1_color,
                        unselectedLabelColor: Neutral_4_color,
                        indicatorColor: Primary_1_color,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: selected_tab_style(Primary_1_color),
                        unselectedLabelStyle: body2(Neutral_4_color),
                        indicatorPadding: EdgeInsets.only(right: 10),
                        indicator: UnderlineTabIndicator(
                            insets: EdgeInsets.only(bottom: 7,),
                            borderSide: BorderSide(color: Primary_1_color, width: 2)),
                        // indicatorPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
    
                        tabs: myTabs,
                      ),
                 
                ],
              ),
                  ),
                   Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          passenger_card_widget(index: 0,),
                          passenger_card_widget(),
                          passenger_card_widget(),
                          passenger_card_widget(),
                          passenger_card_widget(),
                        ],
                      ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}


