import 'package:flutter/material.dart';


/*
      Material Design kurallarında ki tasarım kuralları ile ilgili
      genel olarak kullanılan bir çok özelliği bu widget ile birlikte
      varsayılan olarak kullanabiliyoruz , yine özelleştirmeler
      yapabilir ve kendi tasarımlarımızı ortaya çıkarabiliyoruz ama
      bizi bu konuda yılların mentörü google efendinin  tasarım çalışmalarından
      mahrum etmeyen materialApp widget ina da
      teşekkürlerimizi  sunmak lazım şimdi....

 */

class mMaterialApp extends StatelessWidget {
  const mMaterialApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red, // burda  genel olarak
      // uygulamanın hakim renk anlayışını belirtiyoruz..

      title: "Uygulama Başlığı", // arka planda çalışan uygulamaları
      // açtığımızda çalışan uyguşamaların başlıklarında yazan yazı

       actions: <Type, Action<Intent>>{
        // bu  aksiyon meselsi de biraz derin bir mesele ama kısaca uygulamada
         // varsayılan olarak tanımlanmış aksiyonlar var ve bunlara ekleme
         // veya düzenleme gerektiğinde bu şekilde map listesi ile
         // ekleyip sonrasında bunu handle
         // edip kullanabiliyoruz örnek kısa yollar için kullanımlar gibi..
         // bununla ilgili ilerleyen zamanlarda bir örnek eklesem iyi olabilir

         ... WidgetsApp.defaultActions,
         ActivateAction: CallbackAction<Intent>(
             onInvoke: (Intent intent) {
               print("aksiyon çalıştı");
               return null;
             })},



    );
  }
}
