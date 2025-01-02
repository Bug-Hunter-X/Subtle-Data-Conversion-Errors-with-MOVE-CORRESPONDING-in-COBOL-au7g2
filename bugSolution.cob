To avoid this problem, explicitly move data items using individual MOVE statements, checking data types and lengths during the process:

01  WS-RECORD.
    05 WS-NUMERIC-FIELD PIC 9(5).
    05 WS-CHAR-FIELD PIC X(10).

01  DB-RECORD.
    05 DB-NUMERIC-FIELD PIC 9(5).
    05 DB-CHAR-FIELD PIC X(10).

MOVE WS-NUMERIC-FIELD TO DB-NUMERIC-FIELD.

* Validate if the numeric field can be safely converted to a string
IF WS-NUMERIC-FIELD NUMERIC
    MOVE WS-NUMERIC-FIELD TO DB-CHAR-FIELD
ELSE
    MOVE 'Error' TO DB-CHAR-FIELD
END-IF.

This approach guarantees type safety and prevents data corruption. Always use explicit MOVE statements instead of MOVE CORRESPONDING when dealing with structures that have potential data type mismatches.