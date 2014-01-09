=begin
A lambda is similar to a proc with a couple key differences
(by my understanding)
  - lambdas will raise errors about the number of arguments passed,
    while procs will just assign nil values to missing arguments
  - for return of control, an explicit return in a lambda will just
    return the value to the calling method/routine, while an explicit
    return in a proc will return all the way out of the calling method.
=end

