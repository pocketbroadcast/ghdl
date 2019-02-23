entity test is
end test;

architecture only of test is

begin  -- only

  doit: process
    variable concatted : string(1 to 4);
  begin  -- process doit
    concatted := "foo" & 'l';

    assert concatted = "fool" report "TEST FAILED - concatted was not 'fool'" severity failure;
    assert not(concatted = "fool") report "TEST PASSED" severity note;
    
    wait;
  end process doit;
end only;
