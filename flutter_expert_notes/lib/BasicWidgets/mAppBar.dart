

import 'package:flutter/material.dart';
enum menuogeleri {menu1,menu2}
class mAppBar{




  /*
  AppBar uygulamalar da açık olan sayfanın başlık vs diğer özellikllerini barındırdığı
  bir bar yapısıdır aşağıda özelliklerinden bahsedeceğim..
*/

   AppBar myAppBar()
   {


     return AppBar(
       title: Text("AppBar Başlık"), // başlık için text widget ya da başka bir
       // widget olabilir ama  text mantıklı
       shape: RoundedRectangleBorder(

       /*appbar  şeklini yönetebildiğimiz paramatere shape
       ShapeBorder abstract class yani çatı  sınıf ondan extend alan altta  somut başka
       ShapeBorder sınıfları var..

       *CircleBorder
       *RoundedRectangleBorder
       *RoundedRectangleBorder
       *ContinuousRectangleBorder
       *BeveledRectangleBorder

       yukarıda ki şekil sınıfları kullanılabiliyor.. biz RoundedRectangleBorder kullanıyotrum..

       */


         borderRadius: BorderRadius.vertical(bottom: Radius.elliptical(15, 15) // Yuvarlatma yani radius sınıfının da isimli kurucuları var
                                                                               // ben eliptikali seçtim ..

         ), //  kenar kıvrım gibi bir anlamı çıkıyor yani köşeleri ne kadar  yuvarlatayım diyor
                                                //  bunu da borderradius  isimli konstructor ları ile herhangi biri seçip kullanıyoruz
                                                // ben dikine olanı seçtim alttan yuvarlatacam


         side: BorderSide(
           color: Colors.green, // renk
            width: 3 , // kalınlık
           style: BorderStyle.solid//  çevrelem sitli...

         ) // çevrediğiniz yapının etrafını bir çizgi ile kaplamak istemisiniz diyor tabş bunun da özellkleri var



       ),
       elevation: 15, // yükselik hissi
       backgroundColor: Colors.purple,
       primary: true, // botttom elemnette birşeyler varsa ve flexible olabiliyorsa sonda asıldığımızda sona geldiğimiz belirten
                      //  renk uzama efektini iptal ediyor ya da aktif ediyor

       leading: Icon(Icons.ac_unit), // sol üst köşeye imaj çakıyor
       actions: [
                        // actions yapısı flutter da genellikle bir modul ya da alanla ilgili yapmak istediğimiz ya da yapabileceğimiz
                        // aksiyon yani görevleri  yada ek özllikleri belirtiyor bunlar ek butonlar menuler diğer view elementleri
                        // olabiliyor
                         // aşağıya bir buton bir menu ekleyeceğim

            IconButton(icon: Icon(Icons.access_time_sharp), onPressed: (){}), // butonlara onpres metodu atamssan buton inaktif kalır

         PopupMenuButton(
             onSelected: (e){print(e);}, // on selectv ile bu enum öğeleri üzeerinden işlemlerimizi yapıyoruz
             itemBuilder: (BuildContext context) { // menu öğelerini enum ile sıralayıp o şekilde  b  widgetle
                                                                // işliyoruz
           return[
             PopupMenuItem(
               value: menuogeleri.menu1,
               child: Text("menu item bir"),
             ),
             PopupMenuItem(
               value: menuogeleri.menu2,
               child: Text("menu item iki"),

             ),
           ];


         })



       ],

     );

   }


}