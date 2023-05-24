# SpringCars
SpringCars is a Spring MVC Application that enables interaction between sellers and buyers of used cars. 
Below you can see Use-Case diagram for two actors: Visitor and registered User of website.

![Use-Case diagram](https://github.com/Larisa-Pomidor/springcars/blob/master/src/main/resources/uml/use_case_diagram.jpg)

# Working with App in your IDE
To install application you need:

    - Java 18 or newer (full JDK not a JRE)
    - Maven 3.5+ (https://maven.apache.org/install.html)
    - git command line tool (https://help.github.com/articles/set-up-git)
    - Jetty 11.0+ or Tomcat 10+    
    - IntelliJ IDEA (Your IDE may differ)
    
# How to use App
Run SpringcarsApplication file and open browser on http://localhost:8080/.
You will see home page of the website. Start to explore. Click the Register button in menu to be able to add a new Product you want to sell.
To contact the seller, open details page of the car and press the Buy button.

# Application architecture
So far application has three models: User, Image, Product. 
Accordingly there are two Services: UserService and ProductService and three Repositories that extend Jparepository.
Not without three controllers: ProductController, UserController, ImageController. 
Views in template directory use FreeMarker Java library.
