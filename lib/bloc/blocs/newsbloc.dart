import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:test2/bloc/events/newsevent.dart';
import 'package:test2/bloc/states/newsstate.dart';
import 'package:test2/model/uppernews.dart';
import 'package:buddhist_datetime_dateformat/buddhist_datetime_dateformat.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  Function setstate;
  BuildContext context;
  UpperNews upperNews;
  String upperdate;
  NewsBloc({@required this.context});

  @override
  // TODO: implement initialState
  NewsState get initialState => NewsStartState();

  void loadingnews() {
    if (upperNews != null) return;
    upperNews = UpperNews.fromJson({
      "newsType": "FEED",
      "nameTH":
          "โคโรนาไวรัส : ทำไมการเว้นระยะห่างทางสังคมจึงสกัดการระบาดของโรคได้",
      "nameEN":
          "โคโรนาไวรัส : ทำไมการเว้นระยะห่างทางสังคมจึงสกัดการระบาดของโรคได้",
      "source": "BBC ไทย",
      "startDate": "2020-03-18 00:00:00",
      "endDate": "2020-04-30 23:59:59",
      "disabled": "0",
      "list": "4",
      "descriptionTH":
          "งานวิจัยที่ศึกษาการแพร่ระบาดของไวรัสโคโรนาในเมืองอู่ฮั่น ประเทศจีน พบว่า การอยู่บ้านและรักษาระยะห่างทางสังคมช่วยชะลอการแพร่ระบาดอย่างต่อเนื่องข้างต้นได้จริง โดยตัวเลขอัตราการติดเชื้อจาก 2.35 ลงลดจนเกือบถึง 1 นั่นหมายความว่า ผู้ป่วยหนึ่งคนแพร่เชื้อต่อให้คนเดียวเท่านั้นเอง ยิ่งใช้มาตรการนี้กับศูนย์กลางการระบาดได้เร็วเท่าไหร่ อัตราการแพร่เชื้อก็น้อยลงเท่านั้น",
      "descriptionEN":
          "งานวิจัยที่ศึกษาการแพร่ระบาดของไวรัสโคโรนาในเมืองอู่ฮั่น ประเทศจีน พบว่า การอยู่บ้านและรักษาระยะห่างทางสังคมช่วยชะลอการแพร่ระบาดอย่างต่อเนื่องข้างต้นได้จริง โดยตัวเลขอัตราการติดเชื้อจาก 2.35 ลงลดจนเกือบถึง 1 นั่นหมายความว่า ผู้ป่วยหนึ่งคนแพร่เชื้อต่อให้คนเดียวเท่านั้นเอง ยิ่งใช้มาตรการนี้กับศูนย์กลางการระบาดได้เร็วเท่าไหร่ อัตราการแพร่เชื้อก็น้อยลงเท่านั้น",
      "coverImage":
          "20200326/_111424403_6a620da2-009d-44bf-a0d9-1e68d7389508.jpg",
      "link": "https://www.bbc.com/thai/international-52043102"
    });
    this.upperdate = getupperdate(upperNews.startDate);
    print(upperNews.nameTH);
  }

  String getupperdate(String _date) {
    DateTime startdate = DateTime.parse(_date);
    String temp = '';
    temp += startdate.day.toString() + " ";
    switch (startdate.month) {
      case DateTime.january:
        {
          temp += "มกราคม";
        }
        break;

      case 2:
        {
          temp += "กุมภาพันธ์";
        }
        break;
      case 3:
        {
          temp += "มีนาคม";
        }
        break;
      case 4:
        {
          temp += "เมษายน";
        }
        break;
      case 5:
        {
          temp += "พฤษภาคม";
        }
        break;
      case 6:
        {
          temp += "มิถุนายน";
        }
        break;
      case 7:
        {
          temp += "กรกฎาคม";
        }
        break;
      case 8:
        {
          temp += "สิงหาคม";
        }
        break;
      case 9:
        {
          temp += "กันยายน";
        }
        break;
      case 10:
        {
          temp += "ตุลาคม";
        }
        break;
      case 11:
        {
          temp += "พฤศจิกายน";
        }
        break;
      case 12:
        {
          temp += "ธันวาคม";
        }
        break;

      default:
        {
          temp += "";
        }
        break;
    }

    temp += " " + (startdate.year + 543).toString();
    return temp;
  }

  @override
  Stream<NewsState> mapEventToState(NewsEvent event) async* {
    // TODO: implement mapEventToState
    if (event is NewsLoadingEvent) {
      //print("!!! NewsLoadingEvent !!!");
      loadingnews();
      setstate();
    }
  }
}
