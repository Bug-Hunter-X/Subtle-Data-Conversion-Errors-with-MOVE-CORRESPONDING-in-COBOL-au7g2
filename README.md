# Subtle Data Conversion Errors with MOVE CORRESPONDING in COBOL

This repository demonstrates a subtle bug that can occur when using the `MOVE CORRESPONDING` statement in COBOL. If the structures of the source and target data areas are not perfectly aligned in terms of data types and lengths, unexpected data truncation or conversion errors may arise without explicit error messages.

The example illustrates a scenario where a numeric field is moved to a character field using `MOVE CORRESPONDING`. This leads to erroneous data without any immediate error indication, making debugging challenging.  The solution showcases alternative methods to ensure type safety during data transfer.

## How to Reproduce

1. Compile and run `bug.cob`.  Observe the unexpected output in the `DB-RECORD` character field.
2. Compile and run `bugSolution.cob` which demonstrates the corrected approach.

## Bug and Solution

Both `bug.cob` and `bugSolution.cob` demonstrate the erroneous behavior and the corrected approach.