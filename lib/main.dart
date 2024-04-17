import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:houselay/Buy/Buy_inside_page.dart';
import 'package:houselay/Buy/Buy_page.dart';
import 'package:houselay/Buy/Buy_tabbar.dart';
import 'package:houselay/Commercial/Commercial_inside.dart';
import 'package:houselay/Commercial/Commercial_page.dart';
import 'package:houselay/Hostel/PG_Hostel_Inside.dart';
import 'package:houselay/Plot/plot_inside_page.dart';
import 'package:houselay/Plot/plot_page.dart';
import 'package:houselay/Post_My_Property/PG_hostel_property.dart/PG_inside_page_2.dart';
import 'package:houselay/Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/Owner_PG.dart/Owner_page_inside_page4.dart';
import 'package:houselay/Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/Owner_PG.dart/Owner_page_inside_page5.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Agicultural_land_comm_sell_inside_page/Agiculturel_land_comm_sell_inside_page_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Industrial_Building_comm_sell_inside_page/Industrial_Building_comm_sell_inside_page_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Industrial_land_comm_sell_inside_page/Industrial_land_comm_sell_inside_page_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Office_Space_comm_sell_inside_page/Office_space_comm_sell_inside_1.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Office_Space_comm_sell_inside_page/Office_space_comm_sell_inside_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Shop_comm_sell_inside_page/Shop_comm_sell_inside_page_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/COMMERCIAL/Warehouse_comm_sell_inside_page/warehouse_comm_sell_inside_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Pent_house_sell_inside_page/pent_house_res_sell_inside_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Plot_Residential_sell_inside_page/plot_res_sell_inside_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Residential_Builder_floor_sell_inside_page/builder_floor_res_sell_inside_2.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Residential_falt_apartment_sell_inside_page/flat_apartment_res_sell_inside_1.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Residential_falt_apartment_sell_inside_page/flat_apartment_res_sell_inside_4_page/flat_apartment_res_sell_inside_4.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Residential_house_sell_inside_page/house_res_sell_inside_1.dart';
import 'package:houselay/Post_My_Property/Sell_property.dart/RESIDENTIAL/Villa_Residential_sell_inside_page/villa_res_sell_inside_2.dart';

import 'package:houselay/Post_My_Property/Sell_property.dart/Residential_sell_property_type.dart';

import 'package:houselay/Post_My_Property/Sell_property.dart/sell_property_type_page.dart';

import 'package:houselay/Post_My_Property/post_my_property.dart';

import 'package:houselay/Projects/projects_inside.dart';
import 'package:houselay/Projects/projects_page.dart';
import 'package:houselay/Projects/projects_tabbar.dart';
import 'package:houselay/button.dart';
import 'package:houselay/Hostel/near_by_tabar_hostal/near_by_tabbar.dart';
import 'package:houselay/Hostel/pg__hostal_tabbar.dart';
import 'package:houselay/Hostel/pg_hotel.dart';
import 'package:houselay/Rent/rent_inside_page.dart';
import 'package:houselay/Rent/rent_page.dart';
import 'package:houselay/Tabbar/tabbar_page.dart';
import 'package:houselay/co-working/co-working-inside.dart';
import 'package:houselay/co-working/co-working.dart';
import 'package:houselay/co-working/co-working_tababr.dart';
import 'package:houselay/co_living/co_living.dart';
import 'package:houselay/co_living/co_living_inside.dart';
import 'package:houselay/co_living/co_living_tabbar.dart';
import 'package:houselay/example.dart';

import 'package:houselay/home%20page/home_service.dart';
import 'package:houselay/home%20page/search_property.dart';
import 'package:houselay/login_page/login_page.dart';
import 'package:houselay/service_page/service_page.dart';
import 'package:houselay/styles/grid_view.dart';
import 'package:houselay/tabbar_premium_category/premium_listings_category.dart';
import 'package:houselay/tabbar_premium_category/profile_listings_premium.dart';

import 'Post_My_Property/PG_hostel_property.dart/PG_inside_page_1.dart';
import 'Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/Owner_PG.dart/Owner_page_inside_page1.dart';
import 'Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/Owner_PG.dart/Owner_page_inside_page2.dart';
import 'Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/Owner_PG.dart/Owner_page_inside_page3.dart';
import 'Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/Owner_PG.dart/Owner_page_inside_page6.dart';
import 'Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/Owner_PG.dart/Owner_page_inside_page7.dart';
import 'Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/Property_Manager_PG.dart/Property_Manager_page_inside_page7.dart';
import 'Post_My_Property/PG_hostel_property.dart/YOU_ARE_POSTING_THIS_PG/YOU_ARE_POSTING_THIS_PG.dart';
import 'Post_My_Property/Rent_property.dart/rent_property_type_page.dart';

// import 'Post_My_Property/Sell_property.dart/COMMERCIAL/Commercial_land_comm_sell_inside_page/Commercial_land_comm_sell_inside_page_2.dart';
// import 'Post_My_Property/Sell_property.dart/COMMERCIAL/Industrial_Shed_comm_sell_inside_page/Industrial_shed_comm_sell_inside_page_2.dart';
// import 'Post_My_Property/Sell_property.dart/RESIDENTIAL/Stdio_apartment_Residential_sell_inside_page/Stdio_apartment_res_sell_inside_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a blue toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: Owner_page_inside_page7());
  }
}
