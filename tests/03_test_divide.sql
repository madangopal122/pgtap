BEGIN;
    SELECT PLAN(1);

    SELECT is(4/2, 2, 'shhould be 2');

    SELECT * FROM finish();
ROLLBACK;