/**
 * @file lab2.c
 * @brief Calculates certain aspects of geometric figures based upon user input
 * @details Calculates the perimeters of triangles and rectangles, the interior and 
 * exterior angles of a regular polygon, the diagnol of a rectangle, the hypotenuse
 * of a triangle, the circumference of a cirlce, and the area of a regular polygon,
 * triangle, circle, and rectangle
 * 
 * @author Matthew C. Olsen
 * @date September 14, 2015
 * @bug is_pos_float ingnores all '.' despite quantity and position
 */

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <ctype.h>

#define CHAR_ARRAY 10

int area_rectangle(int rect_length, int rect_width);
int perimeter_rectangle(int rect_length, int rect_width);
double diagnol_rectangle(int rect_length, int rect_width);
double area_circle(double radius);
double circumference(double radius);
double perimeter_triangle(double tri_height, double tri_base);
double hypotenuse(double tri_height, double tri_base);
double area_triangle(double tri_height, double tri_base);
double exterior_angle(int side_number);
double interior_angle(int side_number);
double area_regular_polygon(int side_number, double side_length);
int is_pos_integer(char s[], size_t length);
int is_pos_float(char s[], size_t length);
void error_message(char s[], size_t length);

int main(void)
{
        int rect_length;
        int rect_width;
        int rect_perim;
        int rect_area;        
        double rect_diag;              
        double radius;
        double circum;
        double circ_area;
        double tri_height;
        double tri_base;
        double tri_perimeter;
        double tri_area;
        double tri_hyp;
        int side_number;
        double side_length;
        double ext_angle;
        double int_angle;
        double poly_area; 
        char s[CHAR_ARRAY];
        int tmp;
        int input;        
        size_t length;
        
        /* to be later passed to is_pos_value, is_pos_float, and error_message */
        length = sizeof(s) / sizeof(s[0]);        
        
        printf("This program calculates basic propterties of rectangles, circles, triangles, or regular polygons.\n");     
        printf("Enter what what shape you would like to calculate.\n");
        printf("A : Rectangles\n");
        printf("B : Circles\n");
        printf("C : Triangles\n");
        printf("D : Regular Polygon\n");
        
        while((tmp = getchar()) != '\n') {
                input = tmp;
        }
        
        switch (input) {

        case 'A':
        case 'a':
                printf("A : Calculate the perimeter of a rectangle\n");
                printf("B : Calculate the area of a rectangle\n");
                printf("C : Calculate the diagnol of a rectangle\n");
                
                while((tmp = getchar()) != '\n') {
                        input = tmp;
                }
                
                switch (input) {
                case 'A':
                case 'a':
                        printf("Please input the width of your rectangle as a integer: ");                        
                        fgets(s, CHAR_ARRAY, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */                        
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                         
                        rect_width = atoi(s);

                        printf("Please input the length of your rectangle as a integer: ");
                        fgets(s, CHAR_ARRAY, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                                             
                        rect_length = atoi(s);                        
                        
                        rect_perim = perimeter_rectangle(rect_length, rect_width);
                        printf("The rectangle has a perimeter of %d.\n", rect_perim); 
                        
                        break;
                
                case 'B':
                case 'b':
                        printf("Please input the width of your rectangle as a integer: ");
                        fgets(s, CHAR_ARRAY, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                       
                        rect_width = atoi(s);

                        printf("Please input the length of your rectangle as a integer: ");
                        fgets(s, CHAR_ARRAY, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                                          
                        rect_length = atoi(s);   
                        
                        rect_area = area_rectangle(rect_length, rect_width);
                        printf("The area of the rectangle is %d.\n", rect_area);

                        break;

                case 'C':
                case 'c':
                        printf("Please input the width of your rectangle as a integer: ");
                        fgets(s, CHAR_ARRAY, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                        
                        rect_width = atoi(s);

                        printf("Please input the length of your rectangle as a integer: ");
                        fgets(s, CHAR_ARRAY, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                                             
                        rect_length = atoi(s);   
                        
                        rect_diag = diagnol_rectangle(rect_length, rect_width);
                        printf("The diagnol of the rectangle is %lf.\n", rect_diag);
                        break;
                
                default:
                        printf("You inputed %c, which is not a valid input.\n", input);
                        printf("Goodbye.\n");
                        return -1;
                }
        
                break;

        case 'B':
        case 'b':
                printf("A : Calculate the circumference of a circle\n");
                printf("B : Calculate the area of a circle\n");                
                
                while((tmp = getchar()) != '\n') {
                        input = tmp;
                }
                
                switch (input) {
                case 'A':
                case 'a':
                        printf("Please input the radius of your cricle: ");
                        fgets(s, CHAR_ARRAY, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                         
                        radius = atof(s);
                
                        circum = circumference(radius);  
                        printf("The circumference of the circle is %lf.\n", circum); 

                        break;     
                
                case 'B':
                case 'b':
                        printf("Please input the radius of your circle: ");
                        fgets(s, CHAR_ARRAY, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                        
                        radius = atof(s);
                
                        circ_area = area_circle(radius);  
                        printf("The area of the circle is %lf.\n", circ_area); 

                        break; 
                    
                default:
                        printf("You inputed %c, which is not a valid input.\n", input);
                        printf("Goodbye.\n");
                        return -1;
                }
                
                break;

        case 'C':
        case 'c':
                printf("A : Calculate the perimeter of a triangle\n");
                printf("B : Calculate the hypotenuse of a triangle\n"); 
                printf("C : Calculate the area of a triangle\n");               
                
                while((tmp = getchar()) != '\n') {
                        input = tmp;
                }
                
                switch (input) {
                case 'A':
                case 'a':
                        printf("Please input the base of your triangle: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                          
                        tri_base = atof(s);
        
                        printf("Please input the height of your triangle: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                       
                        tri_height = atof(s);
                
                        tri_perimeter = perimeter_triangle(tri_base, tri_height);  
                        printf("The perimeter of the triangle is %lf.\n", tri_perimeter); 

                        break;     
                
                case 'B':
                case 'b':
                        printf("Please input the base of your triangle: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                          
                        tri_base = atof(s);
        
                        printf("Please input the height of your triangle: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                       
                        tri_height = atof(s);
                
                        tri_hyp = hypotenuse(tri_base, tri_height);  
                        printf("The hypotenuse of the triangle is %lf.\n", tri_hyp); 

                        break;

                case 'C':
                case 'c':
                        printf("Please input the base of your triangle: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                         
                        tri_base = atof(s);
        
                        printf("Please input the height of your triangle: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                          
                        tri_height = atof(s);
                
                        tri_area = area_triangle(tri_base, tri_height);  
                        printf("The area of the triangle is %lf.\n", tri_area); 

                        break;                                                         
                    
                default:
                        printf("You inputed %c, which is not a valid input.\n", input);
                        printf("Goodbye.\n");
                        return -1;
                }


                break;

        case 'D':
        case 'd':
                printf("A : Calculate the exterior angles of a regular polygon\n");
                printf("B : Calculate the interior angles of a regular polygon\n"); 
                printf("C : Calculate the area of a regular polygon\n");               
                
                while((tmp = getchar()) != '\n') {
                        input = tmp;
                }
                
                switch (input) {
                case 'A':
                case 'a':
                        printf("Please input the number of sides on your regular polygon as an interger: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                         
                        side_number = atoi(s);        
                        
                        ext_angle = exterior_angle(side_number);  
                        printf("The exterior angles of the regular polygon are %lf.\n", ext_angle); 

                        break;     
                
                case 'B':
                case 'b':
                        printf("Please input the number of sides on your regular polygon as an interger: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                         
                        side_number = atoi(s);                        
                
                        int_angle = interior_angle(side_number);  
                        printf("The interior angles of the regular polygon are %lf.\n", int_angle); 

                        break;
                case 'C':
                case 'c':
                        printf("Please input the number of sides on your regular polygon as an interger: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive integer */
                        if(!is_pos_integer(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                         
                        side_number = atoi(s);
        
                        printf("Please input the side length of your regular polygon: ");
                        fgets(s, CHAR_ARRAY - 1, stdin);
                        /* displays invalid input to user and exits program if user input is not a postive float */
                        if(!is_pos_float(s, length)){                           
                                error_message(s, length);
                                return -1;
                        }                         
                        side_length = atof(s);
                
                        poly_area = area_regular_polygon(side_number, side_length);  
                        printf("The area of the regular polygon is %lf.\n", poly_area); 

                        break;                                                         
                    
                default:
                        printf("You inputed %c, which is not a valid input.\n", input);
                        printf("Goodbye.\n");
                        return -1;
                }

                break;

        default:
                printf("You inputed %c, which is not a valid input.\n", input);
                printf("Goodbye.\n");
                return -1;
        }                                

        return 0;
}

/**
 *finds the area of a rectangle
 *@param rect_length the length of the rectanlge
 *@param rect_width  the width of the rectangle
 *@return the product of rect_length * rect_width
 */
int area_rectangle(int rect_length, int rect_width)
{
        return rect_length * rect_width;
}

/**
 *finds the area of a rectangle
 *@param rect_length the length of the rectanlge
 *@param rect_width  the width of the rectangle
 *@return the product of rect_length * 2 + rect_width * 2
 */
int perimeter_rectangle(int rect_length, int rect_width)
{
        return (rect_length * 2) + (rect_width * 2);
}

/**
 *finds the area of a rectangle
 *@param rect_length the length of the rectanlge
 *@param rect_width  the width of the rectangle
 *@return the product of sqrt(rect_length ^ 2 + rect_width ^ 2)
 */
double diagnol_rectangle(int rect_length, int rect_width)
{
        return sqrt(pow(rect_length, 2) + pow(rect_width, 2));
}

/**
 *finds the area of a circle
 *@param radius the radius of the circle
 *@return the product of pi * r^2
 */
double area_circle(double radius)
{
        return 3.141593 * pow(radius, 2);
}

/**
 *finds the circumference of a circle
 *@param radius the radius of the circle
 *@return the product of 2 * pi * radius
 */
double circumference(double radius)
{
        return 2 * 3.141593 * radius;
}

/**
 *finds the area of a triangle
 *@param tri_height the height of the triangle
 *@param tri_base the base of the triangle
 *@return the product of 0.5 * tri_height * tri_base
 */
double area_triangle(double tri_height, double tri_base)
{
        return 0.5 * tri_height * tri_base;
}

/**
 *finds the hypotenuse of a triangle
 *@param tri_height the height of the triangle
 *@param tri_base the base of the triangle
 *@return the product of sqrt(tri_height ^ 2 + tri_base ^ 2)
 */
double hypotenuse(double tri_height, double tri_base)
{
        return sqrt(pow(tri_height, 2) + pow(tri_base, 2));
}

/**
 *finds the perimeter of a triangle
 *@param tri_height the height of the triangle
 *@param tri_base the base of the triangle
 *@return the sum of tri_height, tri_base, and the calculated hypotenuse
 */
double perimeter_triangle(double tri_height, double tri_base)
{
        double hyp = sqrt(pow(tri_height, 2) + pow(tri_base, 2));      
        return hyp + tri_height + tri_base;
}

/**
 *finds the exterior angle of a regular polygon
 *@param side_number number of sides on the polygon
 *@return 360.0 / side_number
 */
double exterior_angle(int side_number)
{
        return 360.0 / side_number;
}

/**
 *finds the interior angle of a regular polygon
 *@param side_number number of sides on the polygon
 *@return 180.0 * (side_number - 2) / side_number
 */
double interior_angle(int side_number)
{
        return (180.0 * (side_number - 2)) / side_number;
}

/**
 *finds the exterior of a regular polygon
 *@param side_number number of sides on the polygon
 *@param side_length the length of a side of the polygon
 *@return ((side_length ^ 2) * side_number) / (4 * tan(pi / side_number)
 */
double area_regular_polygon(int side_number, double side_length)
{                
        return (pow(side_length, 2) * side_number) / (4 * tan(3.141593 / side_number));
}

/**
 *determines if character array has non-digit characters, ignoring whitespaces.  
 *Terminates at new-line character.  Detects negative integer input by preceding '-' sign.
 *@param s[] the array of characters to be assessed
 *@param length the lenght of s[]
 *@return 0 if non-digit or non-whitespace character is detected before a new-line character, else returns 1.
 *@remarks any attempt of the user to include units in input will cause the return of false
 */
int is_pos_integer(char s[], size_t length)
{
        int i;        
        for (i = 0; i < length; i++) {
                if (s[i] == '\n') {                        
                        break; /*terminates assessment, preventing following if statement to unjustly return 0*/
                }
                else if (!isdigit(s[i]) && s[i] != ' ') {
                        /*to detect non-whitespace characters and non-digits*/                        
                        return 0;
                }
        }   
        return 1;     
}

/**
 *determines if character array has non-digit characters, ignoring whitespaces and periods.  
 *Terminates at new-line character. Detects negative double input by preceding '-' sign.
 *@param s[] the array of characters to be assessed
 *@param length the length of s[]
 *@return 0 if non-digit, non-whitespace, or non-period character is detected before a new-line character, else returns 1.
 *@bug ingnores position and quantity of periods
 *@remarks any attempt of the user to include units in input will cause the return of false
 */
int is_pos_float(char s[], size_t length)
{
        int i;        
        for (i = 0; i < length; i++) {
                if (s[i] == '\n') {                        
                        break; /*terminates assessment, preventing following if statement to unjustly return 0*/
                }
                else if (!isdigit(s[i]) && s[i] != ' ' && s[i] != '.') {
                        /*to detect non-whitespace characters, non-digits, or non-periods*/                        
                        return 0;
                }
        }   
        return 1;      
}

/**
 *prints a default error message containing character array contains error
 *@param s[] character array that contians error
 *@param length the length of s[]
 */   
void error_message(char s[], size_t length)
{
        int i;
        printf("Whoa, whoa, whoa...\n");
        printf("What is this: ");

        /* show user their invalid input */
        for (i = 0; i < length; i++)
        {
                if (s[i] == '\n') {
                        break;
        }
                printf("%c", s[i]);
        }

        printf("?\nI'll tell you what it is!\n");
        printf("Not valid input!  Pay attention to the prompts!\n");
        printf("That's it.  I'm done.  Goodbye!\n"); 
}
