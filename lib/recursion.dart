//when a function calls itself untill a specific condition is met

void main() {
  reverseArray(['a', 'b', 'c', 'd']);
}

int count = 0;
void testRecursion() {
  //base condition
  if (count == 4) return;
  print("1");
  count++;
  testRecursion();
}

//print name n times using recursion
void printName(int i, int n) {
  if (i > n) return;
  print("name");
  i++;
  printName(i, n);
}

//print linearly from 1 to n;
void printNums(int i, int n) {
  if (i > n) return;
  print(i);
  i++;
  printNums(i, n);
}

//print in terms of n to 1
void printNumsReverse(int n) {
  if (n == 0) return;
  print(n);
  n--;
  printNumsReverse(n);
}

//print n to 5 with backtracking
void printNumsBacktrack(int i, int n) {
  if (i < 1) return;
  printNumsBacktrack(i - 1, n);
  print(i);
}

//print n to 5 with backtracking reverse
void printNumsBacktrackReverse(int i, int n) {
  if ((i - n) + 1 > n) return;
  printNumsBacktrackReverse(i + 1, n);
  print(i - n + 1);
}

//print n to 5 with backtracking reverse method 2
void reverseIntBacktrack(int n) {
  print(n);
  if (n > 1) return reverseIntBacktrack(n - 1);
}

//Parameterised recursion

//print sum of digits from 1 to n
//paramerterised
void printSum(int n, int sum) {
  if (n < 1) {
    print(sum);
    return;
  }
  printSum(n - 1, sum + n);
}

//print sum of digits from 1 to n
//Functional
int printSumWithFuction(int n) {
  if (n == 0) {
    return 0;
  } else {
    return n + printSumWithFuction(n - 1);
  }
}

//factorial of n number
//Functional
int printFactorial(int n) {
  if (n == 0) return 1;
  return n * printFactorial(n - 1);
}

//reverse an array
int step = 0;
List newl = [];
void reverseArray(List l) {

  
  if (step == l.length) {
    return;
  }
  var a = l[step];
  var b = l[l.length - (step + 1)];

  if (a == b) {
    return;
  }

  l[l.length - (step + 1)] = a;

  l[step] = b;

  newl = l;
  step++;
  reverseArray(newl);
  print(newl);

  
}
