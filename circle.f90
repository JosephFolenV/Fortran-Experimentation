PROGRAM areaAndCircumference
    REAL :: radius
    print*, 'Enter the radius of circle'
    READ*, radius
    CALL calculate(radius, area, circumference)
    PRINT*, 'Area of circle = ',area,'square units'
    PRINT*, 'Circumference of circle = ',circumference,"units"
    
    CONTAINS
        SUBROUTINE calculate(radius, area, circumference)
                    real :: radius, area, circle
                    PI = 3.14159
                    circumference = 2*PI*radius
                    area = PI*radius*radius
        END SUBROUTINE calculate

END PROGRAM areaAndCircumference
