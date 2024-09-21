Set<int> findDuplicateBooks(Set<int> oldBooks, Set<int> newBooks) {
  return oldBooks.intersection(newBooks);
}

int duplicateCount(Set<int> oldBooks, Set<int> newBooks) {
  Set<int> total = findDuplicateBooks(oldBooks, newBooks);
  return total.length;
}

Set<int> findNewBooks(Set<int> oldBooks, Set<int> newBooks) {
  return newBooks.difference(oldBooks);
}

void main() {
  Set<int> oldBooks = {1, 2, 3};
  Set<int> newBooks = {3, 8, 7, 2};

  Set<int> duplicate = findDuplicateBooks(oldBooks, newBooks);

  int totalDuplicate = duplicateCount(oldBooks, newBooks);

  Set<int> onlyNewBooks = findNewBooks(oldBooks, newBooks);

  Set<int> shelf = Set.from(oldBooks);
  shelf.addAll(newBooks);

  print("shelf: $oldBooks");
  if (duplicate != 0) {
    print("Duplicate books: $duplicate");
  } else {
    print("oops! You have no common books");
  }
  print("Number of duplicate books: $totalDuplicate");

  print("New books: $onlyNewBooks");
}
