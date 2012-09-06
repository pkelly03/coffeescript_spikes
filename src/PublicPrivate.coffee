class Foo
  # this will be our private method. it is invisible
  # outside of the current scope
  foo = -> "foo"

  # this will be our public method.
  # note that it is defined with ':' and not '='
  # '=' creates a *local* variable
  # : adds a property to the class prototype
  bar: -> foo()

c = new Foo

# this will return "foo"
c.bar()
