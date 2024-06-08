--[[
  EXERCISE: Monkey-patching strings

  With all you have learnt now, you should be able to do this exercise

  Add the necessary code below so that the test at the end passes

]]

-- INSERT YOUR CODE HERE

string.starts_with = function(self, prefix)
    if #prefix == 0 then return true end
    return string.sub(self, 1, 1 + #prefix - 1) == prefix
end

string.ends_with = function(self, suffix)
    if #suffix == 0 then return true end
    return string.sub(self, #self - #suffix + 1) == suffix
end

-- END OF CODE INSERT

function test_starts_with()
  local str = "Lua is awesome"

  assert_true(str:starts_with("L"))
  assert_true(str:starts_with("Lua"))
  assert_true(str:starts_with("Lua is"))
  assert_not(str:starts_with("awe"))
end

function test_ends_with()
  local str = "Lua is awesome"

  assert_true(str:ends_with("e"))
  assert_true(str:ends_with("some"))
  assert_true(str:ends_with("awesome"))
  assert_not(str:ends_with("awe"))
end

-- hint: string == getmetatable("").__index
