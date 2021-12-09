import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  final myimage ="https://media-exp1.licdn.com/dms/image/C4E03AQFad_bUqBLSRw/profile-displayphoto-shrink_400_400/0/1637128494630?e=1644451200&v=beta&t=aI9WI6HHEkfdTKpqrgYqZ4qPIIKJDj0oDobOtKt79tQ";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                    accountName: Text("Annesha"),
                    accountEmail: Text("anu@gmail.com"),
                currentAccountPicture: //Image.network(myimage)
                  CircleAvatar(
                    backgroundImage: NetworkImage(myimage),
                  )
                )
            ),
            const ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                  title: Text("Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                    color: Colors.white
                  ),),
              ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("My Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              title: Text("Call Me",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
