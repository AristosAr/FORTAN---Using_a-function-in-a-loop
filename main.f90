
program main
    implicit none

    real:: x, dx, xmin, xmax,f
    real:: A(41)
    real:: y
    integer:: i

    xmin=-20.
    xmax=20.
    dx=1.
    x=xmin

print*, "The result of the function f(x) is"

    do i=1,41,1
        A(i)=f(x)
        y=A(i)
        call prnt(x,y)
        x=x+dx

    end do

end program

real function f(x)
real:: x
f=x**2+(2.*x)+1.
end function


subroutine prnt(x,y)
real:: x,y
integer::m
m=x
write(*,10) "For x = ",m," is ",y
10 format (a,1x,i3,1x,a,1x,f5.1)
end subroutine

