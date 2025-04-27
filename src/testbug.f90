module testbug
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, testbug!"
  end subroutine say_hello
end module testbug
