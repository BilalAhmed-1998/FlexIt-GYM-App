
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Classes/Plan.dart';

class PlanDetailPage extends StatefulWidget {
  //const PlanDetailPage({Key? key}) : super(key: key);
  Plan plan;

  PlanDetailPage({this.plan});

  @override
  State<PlanDetailPage> createState() => _PlanDetailPageState();
}

class _PlanDetailPageState extends State<PlanDetailPage> {
  bool infoBox = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          "Plan's Detail",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 8),
                width: width,
                child: Image.asset(
                  widget.plan.img,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(11, 9, 18, 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.plan.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        for (var i = 0; i < widget.plan.traits.length; i++)
                          Text(
                            '#' + widget.plan.traits[i] + ' ',
                            style: TextStyle(
                                height: 1.8, color: Colors.black, fontSize: 12),
                          )
                      ],
                    ),
                    Text(
                      widget.plan.days.toString() + ' days',
                      style: TextStyle(color: Colors.black, height: 1.5),
                    ),
                    Text(
                      'Strength Level ' + widget.plan.strengthLevel.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          fontSize: 13,
                          fontStyle: FontStyle.italic),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Curated by: FlexIT Team',
                          style: TextStyle(
                              color: Colors.black, fontSize: 12, height: 3),
                        ),
                        Text(
                          '3/2022',
                          style: TextStyle(
                              color: Colors.black, fontSize: 12, height: 3),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      if (!infoBox) {
                        setState(() {
                          infoBox = true;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            top: BorderSide(color: Colors.grey.shade300),
                            left: BorderSide(color: Colors.grey.shade300),
                            right: BorderSide(color: Colors.grey.shade300),
                            bottom: BorderSide(
                                color: (infoBox)
                                    ? Colors.blue
                                    : Colors.grey.shade200)),
                      ),
                      alignment: Alignment.center,
                      width: width / 2,
                      height: 38,
                      child: Text(
                        'Information',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (infoBox) {
                        setState(() {
                          infoBox = false;
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            top: BorderSide(color: Colors.grey.shade300),
                            left: BorderSide(color: Colors.grey.shade300),
                            right: BorderSide(color: Colors.grey.shade300),
                            bottom: BorderSide(
                                color: (!infoBox)
                                    ? Colors.blue
                                    : Colors.grey.shade200)),
                      ),
                      alignment: Alignment.center,
                      width: width / 2,
                      height: 38,
                      child: Text(
                        'Schedule',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              infoBox?
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade200)),
                      padding: EdgeInsets.all(12),
                      height: 220,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Expanded(
                            flex: 1,
                            child: SingleChildScrollView(
                              child: Text(
                                widget.plan.planDetails.detials,
                                style: TextStyle(
                                    height: 1.5,
                                    color: Colors.black,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade200)),
                      padding: EdgeInsets.all(12),
                      height: 170,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Required Equipments',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                           height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (var i = 0;
                                    i <
                                        widget.plan.planDetails.equipments.keys
                                            .length;
                                    i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.grey.shade200
                                      )
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    width: 95,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          //height: 60,
                                          width: 60,
                                          child: Image.asset(
                                            widget.plan.planDetails.equipments
                                                .values
                                                .elementAt(i),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text( widget.plan.planDetails.equipments
                                            .keys
                                            .elementAt(i),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,

                                        ),)
                                      ],
                                    ),
                                  )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade200)),
                      padding: EdgeInsets.all(12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Suggested Diet Plans',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 90,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (var i = 0;
                                i <
                                    widget.plan.planDetails.suggestedDietPlans.keys.length;
                                i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.grey.shade200
                                        )
                                    ),
                                    width: 160,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          //height: 60,
                                          width: 160,
                                          child: Image.asset(
                                            widget.plan.planDetails.suggestedDietPlans
                                                .values
                                                .elementAt(i),
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text( widget.plan.planDetails.suggestedDietPlans
                                            .keys
                                            .elementAt(i),
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,

                                          ),)
                                      ],
                                    ),
                                  )
                              ],
                            ),
                          )
                          // Row(
                          //   children: [
                          //     for(var i=0;i<widget.plan.planDetails.suggestedDietPlans.keys.length;i++)
                          //     SuggestedDietPlanCard(
                          //       title: widget.plan.planDetails.suggestedDietPlans.keys.elementAt(i),
                          //       img: widget.plan.planDetails.suggestedDietPlans.values.elementAt(i),
                          //     ),
                          //
                          //   ],
                          // )


                        ],
                      ),
                    ),

                  ],
                ),
              ):
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      for(var i =0;i<widget.plan.planDetails.schedule.length;i++)
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey.shade200)),
                        padding: EdgeInsets.all(12),
                        height: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.plan.planDetails.schedule.keys.elementAt(i),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Expanded(
                              flex: 1,
                              child: SingleChildScrollView(
                                child: Text(
                                  widget.plan.planDetails.schedule.values.elementAt(i),
                                  style: TextStyle(
                                      height: 1.5,
                                      color: Colors.black,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}
