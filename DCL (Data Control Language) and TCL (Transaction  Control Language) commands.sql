/* DCL(Data Control Language) : DCL includes commands such as GRANT and
REVOKE which mainly deals with the rights, permissions and other controls of the
database system.
Examples of DCL commands:
GRANT-gives user’s access privileges to database.
REVOKE-withdraw user’s access privileges given by using the GRANT command.
TCL(transaction Control Language) : TCL commands deals with the transaction
within the database.
Examples of TCL commands:
COMMIT– commits a Transaction.
ROLLBACK– rollbacks a transaction in case of any error occurs.
SAVEPOINT–sets a savepoint within a transaction.*/
SQL> create user URK20AI1041 identified by hello123;
User created.
SQL> alter user URK20AI1041 identified by hello321;
User altered.

SQL> select * from
deposit_URK20AI1041; select * from
deposit_URK20AI1041

SQL> grant create session to URK20AI1041;
SQL> grant select on deposit_1041 to URK20AI1041 with grantoption;
SQL> grant insert on deposit_1041 to URK20AI1041 with grant option;
SQL> grant update on deposit_1041 to URK20AI1041 with grantoption;
SQL> grant select on loan_1041 to URK20AI1041 with grant option;
SQL> select* from system.deposit_1041;
SQL> grant select on system.deposit_1041 to AI1041;
SQL> revoke select on system.deposit_1041 from AI1041;
SQL> savepoint a;
SQL> delete from deposit_1041 where actno = 104;
SQL> rollback;
