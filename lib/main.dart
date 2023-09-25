import 'dart:io';

main() {
  // var sum = 0;
  // dynamic n = stdin.readLineSync();
  // var numberList = [n, n * 2, n * 3];
  // for (var x in numberList) {
  //   sum += int.parse(x);
  // }
  final long = Solution();
  final strs = ["flower", "flw", "floight"];
  final str = long.longestCommonPrefix(strs);

  print(str);
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    String prefixWord = strs[0];
    for (int i = 1; i < strs.length; i++) {
      while (!strs[i].startsWith(prefixWord)) {
        prefixWord = prefixWord.substring(0, prefixWord.length - 1);
        if (prefixWord.isEmpty) return "";
      }
    }

    return prefixWord;
  }
}
// 1. Write a Dart program6 to print the following string in a specific format Sample String :
// "Twinkle, twinkle, little star, How I wonder what you are! Up above the world so high,
// Like a diamond in the sky. Twinkle, twinkle, little star, How I wonder what you are"

var value = '''
Twinkle, twinkle, little star,
\tHow I wonder what you are!
\t\tUp above the world so high,
\t\tLike a diamond in the sky.
Twinkle, twinkle, little star,
\tHow I wonder what you are
''';
//   print(value);
//-----------------------------------
// 2. Write a Dart program to get the Python version you are using
  // print(Platform.version);
//------------------------------------
// 3. Write a Dart program to display the current date and time. Sample Output : Current
//date and time : 2014-07-05 14:34:14
//  DateTime date = DateTime.now();
//  print('current date and time : $date');
//--------------------------------------
// 4. Write a Dart program which accepts the radius of a circle from the user and compute
// the area

// 5. Write a Dart program which accepts the user's first and last name and print them in
// reverse order with a space between them

