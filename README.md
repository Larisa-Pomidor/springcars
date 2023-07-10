# SpringCars
SpringCars is a Spring MVC Application that enables interaction between sellers and buyers of used cars. It provides a platform for car enthusiasts to connect, explore available cars, and make purchases.
#
Below you can see Use-Case diagram for two actors: Visitor and registered User of website.

![Use-Case diagram](https://github.com/Larisa-Pomidor/springcars/blob/master/src/main/resources/uml/use_case_diagram.jpg)

# Working with App in your IDE
To install application you need:

    - Java 18 or newer (full JDK not a JRE)
    - Maven 3.5+ (https://maven.apache.org/install.html)
    - git command line tool (https://help.github.com/articles/set-up-git)
    - Jetty 11.0+ or Tomcat 10+    
    - IntelliJ IDEA (Your IDE may differ)

# Application architecture
So far application has three models: User, Image, Product. 
Accordingly there are two Services: UserService and ProductService and three Repositories that extend Jparepository.
Not without three controllers: ProductController, UserController, ImageController. 
Views in template directory use FreeMarker Java library.

# Features
- User Registration and Authentication: Users can create accounts, log in, and manage their profile information.
- Car Listings: Users can view a list of available cars for sale, including details such as make, model, year, and price.
- Car Details: Users can view detailed information about each car, including specifications, description, and seller contact information.
- Car Search: Users can search for specific cars based on criteria such as make, model, year, and price range.
- Selling Cars: Users can create listings to sell their cars by providing relevant details and contact information.

# Technologies Used
- Java
- Spring MVC
- Apache FreeMarker 
- HTML/CSS
- MySQL
- Maven

# Getting Started
To run this project locally, follow these steps:

- Clone the repository: git clone https://github.com/Larisa-Pomidor/springcars.git
- Navigate to the project directory: cd springcars
- Set up a MySQL database and update the database configuration in application.properties file.
- Build the project: mvn clean install
- Run the application: mvn spring-boot:run
- Access the application in your web browser at: http://localhost:8080

# How to use App
After running the app you will see home page of the website. Start to explore. Click the Register button in menu to be able to add a new Product you want to sell.
To contact the seller, open details page of the car and press the Buy button.

# Screenshots
![spring-cars-1](https://raw.githubusercontent.com/Larisa-Pomidor/springcars/master/car-sell-1.jpg)
![spring-cars-2](https://raw.githubusercontent.com/Larisa-Pomidor/springcars/master/car-sell-2.jpg)
![spring-cars-3](https://raw.githubusercontent.com/Larisa-Pomidor/springcars/master/car-sell-3.jpg)
