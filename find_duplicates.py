#!/usr/bin/python
# Written by Forest J. Handford (She/Her)

# This is a Python implementation of the ideal solution for a common interview
# question.
class FindDupes:
    """Class to find duplicates in an ARRAY."""

    @staticmethod
    def build_count():
        count = {}
        numbers = [1, 88, 18, 88, 22, 134, 95, 134, 5, 8, 88, 22, 59, 134, 3,
                   42, 133, 67, 163]
        for num in numbers:
            if num in count:
                count[num] += 1
            else:
                count[num] = 1
        return count

    @staticmethod
    def list_dupes():
        count = FindDupes.build_count()
        for key, val in count.items():
            if val > 1:
                print("There are %i of number %i in the list!" % (val, key))


FindDupes.list_dupes()
