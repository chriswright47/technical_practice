=begin
A lambda is similar to a proc with a couple key differences
(by my understanding)
  - lambdas will raise errors about the number of arguments passed,
    while procs will just assign nil values to missing arguments and
    ignore extra parameters passed.
  - for return of control, an explicit return in a lambda will just
    return the value to the calling method/routine, while an explicit
    return in a proc will return all the way out of the calling method.
=end
def test

  add_one_lambda = lambda {|x| x + 1}

  puts add_one_lambda.call(1) == 2
  puts add_one_lambda[46] == 47
  # this line will throw an error for wrong number of arguments
  # puts add_one_lambda[46, 47] == 47


  add_one_lambda_explicit = lambda {|x| return x + 1}

  puts add_one_lambda_explicit.call(1) == 2
  puts add_one_lambda_explicit[46] == 47

  add_one_proc = proc {|x| x + 1}

  puts add_one_proc.call(1) == 2
  puts add_one_lambda[46] == 47
  # this proc will just ignore the second argument
  puts add_one_proc[46, 48] == 47

  add_one_proc_explicit = proc {|x| return x + 1}

  # these next lines jumps out of the method b/c of
  # explicit return from the proc
  puts add_one_proc_explicit.call(1) == 2
  puts add_one_proc_explicit[46] == 47

  reached_here = true

ensure
  # this will print true if reached_here was assigned
  # or false if we jumped out due to a proc return
  puts true == reached_here


end

test