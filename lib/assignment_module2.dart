void main(){
  List<int> grades = [85, 92, 78, 65, 88, 72];
  double sum = 0;
  for(int i=0 ; i<grades.length; i++){
    sum = sum + grades[i];
  }
  double avgResult = sum/ grades.length;
  print("Student's average grade: ${avgResult}");
  int roundAvg =avgResult.round();
  print("Rounded average: ${roundAvg}");

  if(avgResult >= 70){
    print("Passed");
  }else
    {
      print("Failed");
    }

}