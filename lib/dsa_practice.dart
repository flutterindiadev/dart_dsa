import 'dart:io';

void main() {
  pattern13(5);
}

// * * * * *
// * * * * *
// * * * * *
// * * * * *
// * * * * *

void pattern1(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
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

void pattern2(int n) {
  for (int i = 0; i < n; i++) {
    stdout.write("* " * (i + 1));
    stdout.write("\n");
  }
}

// 1
// 1 2
// 1 2 3
// 1 2 3 4
// 1 2 3 4 5

void pattern3(int n) {
  for (int i = 1; i < n + 1; i++) {
    for (int j = 1; j < i + 1; j++) {
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
void pattern4(int n) {
  for (int i = 1; i < n + 1; i++) {
    for (int j = 1; j < i + 1; j++) {
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

void pattern5(int n) {
  for (int i = 0; i < n; i++) {
    stdout.write("* " * (n - i));
    stdout.write("\n");
  }
}

// 1 2 3 4 5
// 1 2 3 4
// 1 2 3
// 1 2
// 1
void pattern6(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i; j++) {
      stdout.write("${j + 1} ");
    }
    stdout.write("\n");
  }
}

//     *
//    ***
//   *****
//  *******
// *********

void pattern7(int n) {
  for (int i = 0; i < n; i++) {
    //space
    for (int j = 0; j < n - i - 1; j++) {
      stdout.write(" ");
    }

    //star
    for (int j = 0; j < 2 * i + 1; j++) {
      stdout.write("*");
    }

    //space
    for (int j = 0; j < n - i - 1; j++) {
      stdout.write(" ");
    }
    stdout.write("\n");
  }
}

// *********
//  *******
//   *****
//    ***
//     *

void pattern8(int n) {
  for (int i = 0; i < n; i++) {
    //space
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }

    //star
    for (int j = 0; j < 2 * n - (2 * i + 1); j++) {
      stdout.write("*");
    }

    //space
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    stdout.write("\n");
  }
}

//     *
//    ***
//   *****
//  *******
// *********
// *********
//  *******
//   *****
//    ***
//     *

//pattern9
//  pattern7(5);
// pattern8(5); this will print the above diamond shape

// *
// **
// ***
// ****
// *****
// ****
// ***
// **
// *

void pattern10(int n) {
  for (int i = 1; i <= 2 * n - 1; i++) {
    int stars = i;
    if (i > n) stars = 2 * n - i;
    for (int j = 1; j <= stars; j++) {
      stdout.write("*");
    }
    stdout.write("\n");
  }
}

// 1
// 01
// 101
// 0101
// 10101

void pattern11(int n) {
  int start = 1;
  for (int i = 0; i < n; i++) {
    if (i % 2 == 0) {
      start = 1;
    } else {
      start = 0;
    }
    for (int j = 0; j <= i; j++) {
      stdout.write(start);
      start = 1 - start;
    }
    stdout.write("\n");
  }
}

// 1      1
// 12    21
// 123  321
// 12344321

void pattern12(int n) {
  for (int i = 1; i < n + 1; i++) {
    //number
    for (int j = 1; j < i + 1; j++) {
      stdout.write(j);
    }
    //space
    for (int j = 0; j < n * 2 - (i * 2); j++) {
      stdout.write(" ");
    }

    //number

    for (int j = i; j >= 1; j--) {
      stdout.write(j);
    }
    stdout.write("\n");
  }
}

void pattern13(int n) {
  int start = 1;
  for (var i = 1; i < n; i++) {
    for (var j = 0; j < i; j++) {
      stdout.write(start);
      start = start + 1;
    }
    stdout.write("\n");
  }
}
