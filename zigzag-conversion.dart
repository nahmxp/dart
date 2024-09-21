class Solution {
  String convert(String s, int numRows) {
    // If only one row is needed, return the string as is.
    if (numRows == 1 || s.length <= numRows) return s;

    // Create a list of StringBuffer to hold characters for each row.
    List<StringBuffer> rows = List.generate(numRows, (_) => StringBuffer());

    // Set initial position and direction.
    int currentRow = 0;
    bool goingDown = false;

    // Iterate over each character in the string.
    for (int i = 0; i < s.length; i++) {
      rows[currentRow].write(s[i]);

      // Change direction when you hit the top or bottom row.
      if (currentRow == 0 || currentRow == numRows - 1) goingDown = !goingDown;

      // Move to the next row.
      currentRow += goingDown ? 1 : -1;
    }

    // Join all rows together.
    return rows.map((row) => row.toString()).join();
  }
}

void main() {
  var solution = Solution();
  print(solution.convert("PAYPALISHIRING", 6)); // Output: PAHNAPLSIIGYIR
  print(solution.convert("PAYPALISHIRING", 4)); // Output: PINALSIGYAHRPI
  print(solution.convert("A", 1)); // Output: A
}
