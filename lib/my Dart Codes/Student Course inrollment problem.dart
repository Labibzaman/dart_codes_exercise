void main(){
  Student student = Student(20156, 'Labib');
  student.enrollCourse.add('App Devlopment');
  print(student.enrollCourse);
  student.enrollCourse.addAll(['Bcs','python code']);
  print(student.enrollCourse);
  student.enroll('html');
  print(student.enroll('leo'));

  student.enrollCourse.insert(3, 'Webdevlopment');
  print(  student.enrollCourse);

  Enrollment courseEnrollment = Enrollment(145224, 'DSA', 5);
  courseEnrollment.curseFullornot();
  print(courseEnrollment.curseFullornot());

}
class Student {
  int studentID;
  String Name;
  List<String> enrollCourse =[];

  Student(this.studentID,this.Name){


    print(studentID);
    print(Name);
  }
  enroll (String x){
    enrollCourse.add('$x');
    return  enrollCourse;
  }
}

class Course{
  int CourseCode;
  String courseName;
  int maxCap=0;
  Course(this.CourseCode,this.courseName,this.maxCap);
  int maxCap1= 0;



}
class Enrollment extends Course {
  Enrollment(super.CourseCode, super.courseName, super.maxCap);

  curseFullornot(){

    if(maxCap == 5){
      print('You are enrolled');
    }else{
      print('Enrollment is Full');
    }
  }
}