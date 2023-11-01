import 'dart:io';
import 'dart:math';

void main() {
  pattern22(5);
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

// 1
// 23
// 456
// 78910

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

// A
// AB
// ABC
// ABCD
// ABCDE
void pattern14(int n) {
  for (int i = 0; i < n; i++) {
    for (int ch = "A".codeUnitAt(0); ch <= 'A'.codeUnitAt(0) + i; ch++) {
      stdout.write(String.fromCharCode(ch));
    }
    stdout.write("\n");
  }
}

// ABCDE
// ABCD
// ABC
// AB
// A
void pattern15(int n) {
  for (int i = 0; i < n; i++) {
    for (int ch = "A".codeUnitAt(0);
        ch <= 'A'.codeUnitAt(0) + (n - i - 1);
        ch++) {
      stdout.write(String.fromCharCode(ch));
    }
    stdout.write("\n");
  }
}

// A
// BB
// CCC
// DDDD
// EEEEE

void pattern16(int n) {
  for (int i = 0; i < n; i++) {
    int ch = "A".codeUnitAt(0) + i;
    for (int j = 0; j <= i; j++) {
      stdout.write(String.fromCharCode(ch));
    }
    stdout.write("\n");
  }
}

//     A
//    ABA
//   ABCBA
//  ABCDCBA
// ABCDEDCBA

void pattern17(int n) {
  for (int i = 0; i < n; i++) {
    //space
    for (int j = 0; j < (n - i - 1); j++) {
      stdout.write(" ");
    }

    //alphabet
    int ch = "A".codeUnitAt(0);
    int brakpoint = (2 * i + 1) ~/ 2;
    for (int j = 1; j <= 2 * i + 1; j++) {
      stdout.write(String.fromCharCode(ch));
      if (j <= brakpoint) {
        ch++;
      } else {
        ch--;
      }
    }

    //space
    for (int j = 0; j < (n - i - 1); j++) {
      stdout.write(" ");
    }
    stdout.write("\n");
  }
}

//E
//DE
//CDE
//BCDE
//ABCDE

void pattern18(int count) {
  for (int i = 1; i <= count; i++) {
    stdout.write(String.fromCharCodes(
        List.generate(i, (index) => "E".codeUnitAt(0) - index).reversed));
    stdout.write("\n");
  }
}

// **********
// ****  ****
// ***    ***
// **      **
// *        *
// *        *
// **      **
// ***    ***
// ****  ****
// **********

void pattern19(int n) {
  int spaces = 0;
  for (var i = 0; i < n; i++) {
    //stars

    for (int j = 1; j <= n - i; j++) {
      stdout.write("*");
    }
    //space
    for (int j = 0; j < spaces; j++) {
      stdout.write(" ");
    }

    //stars
    for (int j = 1; j <= n - i; j++) {
      stdout.write("*");
    }
    spaces += 2;
    stdout.write("\n");
  }
  //second half
  spaces = 2 * n - 2;
  for (int i = 0; i < n; i++) {
    for (int j = 1; j <= i + 1; j++) {
      stdout.write("*");
    }
    //space
    for (int j = 0 * 2; j < spaces; j++) {
      stdout.write(" ");
    }

    //stars
    for (int j = 1; j <= i + 1; j++) {
      stdout.write("*");
    }
    spaces -= 2;
    stdout.write("\n");
  }
}

// *        *
// **      **
// ***    ***
// ****  ****
// **********
// ****  ****
// ***    ***
// **      **
// *        *
void pattern20(int n) {
  int spaces = 2 * n - 2;
  for (int i = 1; i <= 2 * n - 1; i++) {
    int stars = i;
    if (i > n) {
      stars = 2 * n - i;
    }
    //stars
    for (int j = 1; j <= stars; j++) {
      stdout.write("*");
    }
    //spaces
    for (int j = 1; j <= spaces; j++) {
      stdout.write(" ");
    }
    //stars
    for (int j = 1; j <= stars; j++) {
      stdout.write("*");
    }
    stdout.write("\n");

    if (i < n) {
      spaces -= 2;
    } else {
      spaces += 2;
    }
  }
}

// *****
// *   *
// *   *
// *   *
// *****

void pattern21(int n) {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i == 0 || j == 0 || i == n - 1 || j == n - 1) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
    stdout.write("\n");
  }
}

// 555555555
// 544444445
// 543333345
// 543222345
// 543212345
// 543222345
// 543333345
// 544444445
// 555555555

void pattern22(int n) {
  for (int i = 0; i < 2 * n - 1; i++) {
    for (int j = 0; j < 2 * n - 1; j++) {
      int top = i;
      int left = j;
      int right = (2 * n - 2) - j;
      int down = (2 * n - 2) - i;
      stdout.write(n - min(min(top, down), min(left, right)));
    }

    stdout.write("\n");
  }
}
