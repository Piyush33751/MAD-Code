void main() {
  var marks = [
    [75, 80, 90],
    [60, 55, 70],
    [95, 100, 98]
  ]; 

  calculateavg(marks);
}

void calculateavg(List<List<int>> marks) {
  for (var i = 0; i < marks.length; i++) {
    int t = 0;  // reset total for each student
    for (var y = 0; y < marks[i].length; y++) {
      print(marks[i][y]);
      t += marks[i][y];
    }
    var avg = t / marks[i].length;   // divide by number of subjects for this student
    print('Student ${i+1} average: $avg');
  }
}

  
