import 'package:adamur_flutter_engineer_test_habba_app/feature/dashboard/domain/model/crypto_response.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../../../../injector.dart';
import '../../domain/model/groups.dart';
import '../blocs/crypto_state_bloc.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/category_item_card.dart';
import '../widgets/crypto_item.dart';
import '../widgets/error.dart';
import '../widgets/group_item_card.dart';
import '../widgets/loading.dart';
import '../widgets/top_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final log = Logger();
  bool isSelected = true;
  List cryptos = [];
  int currentIndex = 0;
  Color unselectedColor = Colors.white;
  Color? currentIndexColor;
  BuildContext? blocContext;
  List<String> categories = [
    "Todays best",
    "My roundables",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          title: const TopAppBar()),
      bottomNavigationBar: const BottomNav(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: Row(
                children: const [
                  Text(
                    'Popular tables',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            buildGroups(),
            buildCategories(),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: Row(
                children: const [
                  Text(
                    'Crypto',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            buildBody(context),
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: Row(
                children: const [
                  Text(
                    'Tokens',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            buildBody(context),
          ],
        ),
      ),
    );
  }
  BlocProvider<CryptoStateBloc> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => sl<CryptoStateBloc>(),
       child : BlocBuilder<CryptoStateBloc, CryptoStateState>(
      builder: (context, state) {
        blocContext = context;
        if (state is CryptoStateInitial) {
          dispatchEvent(context);
        }
        if (state is CryptoStateLoading) {
          return const LoadingWidget();
        } else if (state is CryptoStateLoaded) {
          final cryptos = state.cryptoList;
          return SizedBox(
               height: 170,
                width: double.infinity,
              child: buildCryptoList(cryptos));
        } else if (state is CryptoStateError) {
          return ErrorMessageWidget(message: state.message);
        } else {
          return const ErrorMessageWidget(message: 'An unknown error occurred');
        }
      },
    )
    );
  }

  Widget buildGroups() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      /*color: Colors.grey.withOpacity(0.3)*/
                    ),
                    child: Stack(children: [
                      const CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/images/group-photo.png'),
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Image.asset(
                                  'assets/images/vector.png'),
                            ),
                          )),
                    ]),
                  ),
                  const Text(
                    '#Deffi',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '1000 peope',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      /*color: Colors.grey.withOpacity(0.3)*/
                    ),
                    child: Stack(children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/profile-picture.png'),
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Image.asset(
                                  'assets/images/vector.png'),
                            ),
                          )),
                    ]),
                  ),
                  const Text(
                    '#NFT',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '802 people',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      /*color: Colors.grey.withOpacity(0.3)*/
                    ),
                    child: Stack(children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/profile-picture.png'),
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Image.asset(
                                  'assets/images/vector.png'),
                            ),
                          )),
                    ]),
                  ),
                  const Text(
                    '#Side Chama',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '802 people',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      /*color: Colors.grey.withOpacity(0.3)*/
                    ),
                    child: Stack(children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/profile-picture.png'),
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Image.asset(
                                  'assets/images/vector.png'),
                            ),
                          )),
                    ]),
                  ),
                  const Text(
                    '#BTF',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '802 people',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      /*color: Colors.grey.withOpacity(0.3)*/
                    ),
                    child: Stack(
                      children: [
                        const CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/images/group-photo.png'),
                          backgroundColor: Colors.white,
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Image.asset(
                                    'assets/images/vector.png'),
                              ),
                            )),
                      ],
                    ),
                  ),
                  const Text(
                    '#Deffi',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    '802 people',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Stack(children: [
                  const CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/images/group-photo.png'),
                    backgroundColor: Colors.white,
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child:
                          Image.asset('assets/images/vector.png'),
                        ),
                      ))
                ]),
              ),
            ],
          )),
    );
  }

  ListView buildGroupsList(List<Groups> groups) {
    return ListView.builder(
       scrollDirection: Axis.horizontal,
        itemCount: cryptos.length,
        itemBuilder: (context, index) {
          return GroupItemCard(
            cryptoItem: cryptos[index],
          );
        });
  }

  Widget buildCategories() {
    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CategoryItemCard(
                category: 'Todays Trending',
              ),
              CategoryItemCard(
                category: 'Stocks',
              ),
              CategoryItemCard(
                category: 'Crypto',
              ),
              CategoryItemCard(
                category: 'Todays Trending',
              ),
              CategoryItemCard(
                category: 'Stocks',
              ),
              CategoryItemCard(
                category: 'Crypto',
              ),
            ],
          )
        ],
      ),
    );
  }



  ListView buildCryptoList(List<Crypto> cryptos) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cryptos.length,
        itemBuilder: (context, index) {
          return CryptoItemCard(
             cryptoItem: cryptos[index],
          );
        });
  }

  void dispatchEvent(BuildContext context) {
    BlocProvider.of<CryptoStateBloc>(context).add(CryptoStateEventLoad());
  }

}
