BEGIN;
    SELECT PLAN(1);

    SELECT is(1 + 1, 2, 'should be equal to 2');

    SELECT * FROM finish();
ROLLBACK;