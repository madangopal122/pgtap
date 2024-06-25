BEGIN;
    SELECT PLAN(1);

    SELECT is(public.add_integers(1, 1), 2, 'should be equal');
    
    SELECT * FROM finish();
ROLLBACK;