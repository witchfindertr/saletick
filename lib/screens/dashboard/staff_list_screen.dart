import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/app_constants/custom_text_styles.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/custom_widgets/header/header_widget.dart';
import 'package:saletick/custom_widgets/lists/staff_row_widget.dart';
import 'package:saletick/custom_widgets/texts/text_n_divider_header.dart';
import 'package:saletick/screens/dashboard/add_new_staff_screen.dart';
import 'package:saletick/screens/dashboard/staff_detail_screen.dart';


class StaffListScreen extends StatefulWidget {
  const StaffListScreen({Key? key}) : super(key: key);

  @override
  State<StaffListScreen> createState() => _StaffListScreenState();
}

class _StaffListScreenState extends State<StaffListScreen> {
  // auth controller instance
  AuthController controller = Get.find<AuthController>();


  @override
  void initState() {
    // fetch current user's data if null
    if(controller.currentUserData == null ){
      controller.getCurrentUserDetails();
    }
    // fetch all staff list if list is empty
    if(controller.allUsersDataList.isEmpty){
      controller.fetchAllUserData();              
    }

    super.initState();    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
          return controller.isLoading.value? const Center(child: CircularProgressIndicator()) : SingleChildScrollView(
             // checking if current user is being fetched,  if true, show circularProgressIndicator
            // if fetched, we check if user is a staff or not.
            // if user is a staff, we restrict the view and show text. But if it is an admin, we will show the list of staff
            child: !(controller.currentUserData.isAdmin)? Center(
              child: Container( 
                margin: EdgeInsets.only(top: Dimensions.screenHeight*0.5),           
                child: Text(
                  'Only the Admin can see this screen',
                  style: headline5,
                ),
              ),
            ) : Obx(() {
                return Column(
                  children: [
                    const HeaderWidget(),
                    const TextnDividerHeader(text: 'My Staff'),
                    // List of Staff
                    MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.separated(
                        itemCount: controller.allUsersDataList.length,
                        shrinkWrap: true,
                        separatorBuilder: ((context, index) {
                          return Column(
                            children: [
                              SizedBox(height: Dimensions.size3),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
                                child: Divider(height: Dimensions.size9, thickness: 1),
                              ),
                            ],
                          );
                        }),
                        itemBuilder: ((context, index) {
                          var staff = controller.allUsersDataList[index];
                          return  InkWell(
                            onTap: (){
                              Get.to(StaffDetailScreen(staff: staff));
                            },
                            child: StaffRowWidget(text: "${staff.firstName} (${staff.position})"), // staff name
                          );
                        })
                      ),
                    ),           
                  ],
                );
              }
            ),
          );
        }
      ),
      floatingActionButton: !(controller.currentUserData.isAdmin)? null : FloatingActionButton(
        elevation: 3,
        child: const Icon(Icons.add),
        onPressed: (){ 
          Get.to(() => const AddNewStaffScreen());
        },
      ),
    );
  }
}