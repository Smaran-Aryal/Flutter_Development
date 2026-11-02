import 'package:ews/controller/apicall.dart';
import 'package:ews/core/static.dart';
import 'package:ews/model/news.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'dashboard.dart';


class detailpage extends StatefulWidget {
  detailpage({super.key});

  @override
  State<detailpage> createState() => detailpageState();
}

class detailpageState extends State<detailpage> {

  Future<news?>? futurenewsdata;

  @override
  void initState() {
    super.initState();
    futurenewsdata = Apicall.getnewsapidata();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var formattedate = Static.datetimeconverter(Static.article!.publishedAt!);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55,),
            Stack(
              children: [
                Container(
                  height: size.height/4,
                  width: size.width,
                  child: Image.network(fit: BoxFit.cover
                      , Static.article!.urlToImage!),
                ),
                Container(
                  height: size.height/4,
                  width: size.width,
                  color: Colors.black45,
                ),
                GestureDetector(
                  onTap:() {
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.arrow_back,
                      color: Colors.white,size: 40,),
                  ),
                ),
                Positioned(
                  right: 5,
                  child: GestureDetector(
                    onTap: (){
                      SharePlus.instance.share(
                        ShareParams(text:Static.article!.title! + " " + Static.article!.url!)
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.share,
                        color: Colors.white,size: 40,),
                    ),
                  ),
                ),
                Container(
                  height: size.height/4,
                  child: Center(
                    child: Icon(Icons.play_circle_fill,
                      size: 60,
                      color: Colors.white,),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(Static.article!.title!.toUpperCase(),
                style: TextStyle(fontSize: 20),maxLines: 2,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Static.article!.author!),
                  Text(Static.datetimeconverter(Static.article!.publishedAt!))
                ],),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(Static.article!.description!),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0,right: 15),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Related Videos", style: TextStyle(fontSize: 18),),
            ),
            FutureBuilder(
                future: futurenewsdata,
                builder: (context, AsyncSnapshot<news?> snapshot){
                  switch (snapshot.connectionState){
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return Center(child: CircularProgressIndicator(),);
                    case ConnectionState.active:
                    case ConnectionState.done:
                      if(snapshot.hasData){
                        //ui
                        var data = snapshot.data;
                        return Column(
                          children: [

                            Container(
                              height: size.height/1.6,
                              child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: data!.articles!.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    return dashboardState.verticalllistitem(
                                        context,size,
                                        data.articles![index].title!,
                                        data.articles![index].urlToImage,
                                        data.articles![index].publishedAt!.split("T")[0],
                                        data.articles![index].source!.name!,
                                        data.articles![index]
                                    );
                                  }
                              ),
                            ),

                          ],
                        );
                      }else{
                        return Center(child: Text("No Data"),);
                      }
                  }
                }),



          ],
        ),
      ),
    );
  }
}