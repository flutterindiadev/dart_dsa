import 'dart:math';

import 'package:dart_numerics/dart_numerics.dart';

void main() {
  eq(40, 20);
}

//extract the numbers in reverse order with modulo operator

void numberExtraction(int n) {
  int lastdigit = 0;
  while (n > 0) {
    lastdigit = n % 10;
    print(lastdigit);
    n = n ~/ 10;
  }
}

//count number of digits in n
void numberCount(int n) {
  int digits = 0;
  while (n > 0) {
    n = n ~/ 10;
    digits += 1;
  }
  print(digits);
}

//another method to get the count
void numberCountMethod2(int n) {
  int count = (log10(n) + 1).toInt();
  print(count);
}

//Reverse the number
void numberReverse(int n) {
  int lastdigit = 0;
  int reverseNum = 0;
  while (n > 0) {
    lastdigit = n % 10;
    n = n ~/ 10;
    reverseNum = (reverseNum * 10) + lastdigit;
  }
  print(reverseNum);
}

//check if number is palindrome
void checkPalindrome(int n) {
  int lastdigit = 0;
  int reverseNum = 0;
  int dupNum = n;
  while (n > 0) {
    lastdigit = n % 10;
    n = n ~/ 10;
    reverseNum = (reverseNum * 10) + lastdigit;
  }
  if (reverseNum == dupNum) {
    print(true);
  } else {
    print(false);
  }
}

//check if given number is armstrong number
void checkifArmstrong(int n) {
  int dup = n;
  int lastNum = 0;
  int cubeNum = 0;

  int digits = (log10(n) + 1).toInt();
  while (n > 0) {
    lastNum = n % 10;

    cubeNum = cubeNum + (pow(lastNum, digits)).toInt();
    n = n ~/ 10;
  }
  if (cubeNum == dup) {
    print(true);
  } else {
    print(cubeNum);
    print(false);
  }
}

//print all divisors
void printDivisors(int n) {
  List<int> divisors = [];
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      divisors.add(i);
    }
  }
  print(divisors);
}

//print all divisors with less time complexity
void printDivisorsLessComplex(int n) {
  List<int> divisors = [];
  for (int i = 1; i * i <= n; i++) {
    if (n % i == 0) {
      divisors.add(i);
      if ((n / i) != i) {
        divisors.add(n ~/ i);
      }
    }
  }
  divisors.sort();
  print(divisors);
}

//check prime number
void checkPrime(int n) {
  int count = 0;
  for (var i = 1; i * i <= n; i++) {
    if (n % i == 0) {
      count++;
      if (n % i != i) {
        count++;
      }
    }
  }
  if (count == 2) {
    print("it's prime number");
  } else {
    print("Not a prime number");
  }
}

//GCD and HCF (Greatest common divisor and highest common factor)
void getGCD(int n1, int n2) {
  int gcd = 1;
  for (var i = 1; i <= min(n1, n2); i++) {
    if (n1 % i == 0 && n2 % i == 0) {
      gcd = i;
    }
  }
  print(gcd);
}

//Equilateral Algorithm for getting GCD
void eq(int a, int b) {
  while (a > 0 && b > 0) {
    if (a > b) {
      a = a % b;
    } else {
      b = b % a;
    }
  }
  if (a == 0) {
    print(b);
  }
  print(a);
}
