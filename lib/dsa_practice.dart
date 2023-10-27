import 'dart:io';

void main() {
  pattern5(5);
}

// * * * * *
// * * * * *
// * * * * *
// * * * * *
// * * * * *

void pattern1(int count) {
  for (int i = 0; i < count; i++) {
    for (int j = 0; j < count; j++) {
      stdout.write("* ");
    }
    stdout.write("\n");
  }
}

// *
// * *
// * * *
// * * * *
// * * * * *

void pattern2(int count) {
  for (int i = 0; i < count; i++) {
    stdout.write("* " * (i + 1));
    stdout.write("\n");
  }
}

// 1
// 1 2
// 1 2 3
// 1 2 3 4
// 1 2 3 4 5

void pattern3(int count) {
  for (int i = 1; i < count + 1; i++) {
    for (var j = 1; j < i + 1; j++) {
      stdout.write("$j ");
    }
    stdout.write("\n");
  }
}

// 1
// 2 2
// 3 3 3
// 4 4 4 4
// 5 5 5 5 5
void pattern4(int count) {
  for (int i = 1; i < count + 1; i++) {
    for (var j = 1; j < i + 1; j++) {
      stdout.write("$i ");
    }
    stdout.write("\n");
  }
}

// * * * * *
// * * * *
// * * *
// * *
// *

void pattern5(int count) {
  for (int i = 0; i < count; i++) {
    stdout.write("* " * (count - i));
    stdout.write("\n");
  }
}
