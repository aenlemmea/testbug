module test_suite1
  use testdrive, only : new_unittest, unittest_type, error_type, check
  implicit none
  private

  public :: collect_suite1

contains

!> Collect all exported unit tests
subroutine collect_suite1(testsuite)
  !> Collection of tests
  type(unittest_type), allocatable, intent(out) :: testsuite(:)

  testsuite = [ &
    new_unittest("valid", test_valid) &
    ]

end subroutine collect_suite1

subroutine test_valid(error)
  type(error_type), allocatable, intent(out) :: error
  call check(error, 2 + 2 .eq. 4)
end subroutine test_valid

end module test_suite1
