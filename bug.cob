MOVE CORRESPONDING WS-RECORD TO DB-RECORD.

This statement might cause unexpected results if the structures of WS-RECORD and DB-RECORD are not perfectly aligned, especially if they contain data items with different data types or lengths.  The MOVE CORRESPONDING statement only copies data items with matching names, regardless of their data types.  If a numeric field in WS-RECORD is moved to a character field in DB-RECORD (or vice versa), data truncation or conversion errors may occur without any explicit error messages being generated.  This is a subtle error that can be difficult to debug.