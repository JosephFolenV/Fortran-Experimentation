program areaAndCircumference
    real :: radius
    print*, 'Enter the radius of circle'
    read*, radius
    PI = 3.14159
    circumference = 2.*PI*radius
    area = PI*radius*radius
    print*, 'Area of circle = ',area,'square units'
    print*, 'Circumference of circle = ',circumference,"units"
end program areaAndCircumference