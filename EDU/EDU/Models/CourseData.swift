import Foundation
import SwiftUICore

struct Lecture {
    let title: String
    let topics: [String]?
    let content: String
    let exampleCode: String?
}

struct CourseData {
    static let javaLectures = [
        
        Lecture(
            title: "Getting Started with Java",
            topics: ["Basic Java Syntax", "Working with Variables"],
            content: """
                Java is a versatile programming language known for its scalability and robust performance. In this session, we'll explore Java's foundational syntax, focusing on variable declaration and manipulation.

                Java Syntax:
                Java employs a structured syntax where every statement ends with a semicolon (`;`). A Java application typically starts with a class definition and includes a `main` method as the entry point for execution.

                Variables in Java:
                Variables store data in a program and are defined by specific data types. Here are some commonly used types:
                - `int`: For whole numbers
                - `float`: For fractional numbers with less precision
                - `String`: To store text
                - `char`: To store a single character

                In the next section, we'll see how to declare and initialize variables in Java.
            """,
            exampleCode: """
                public class HelloWorld {
                    public static void main(String[] args) {
                        int age = 25;
                        float temperature = 36.5f;
                        String message = "Welcome to Java!";
                        char grade = 'A';

                        System.out.println("Age: " + age);
                        System.out.println("Temperature: " + temperature);
                        System.out.println("Message: " + message);
                        System.out.println("Grade: " + grade);
                    }
                }
            """
        ),
        
        Lecture(
            title: "Conditional Statements and Loops",
            topics: ["Conditional Statements", "Loops"],
            content: """
                Conditional Statements:
                In Java, conditional statements are used to execute different blocks of code based on certain conditions. They allow you to control the flow of your program.

                The most commonly used conditional statements are:
                - `if`: Runs the code if the condition evaluates to true.
                - `else`: Executes when the condition in the `if` is false.
                - `else if`: Used to check additional conditions if the `if` statement is false.
                - `switch`: Offers an easy way to compare one variable against many possible values.

                Example:
                ```java
                public class Main {
                    public static void main(String[] args) {
                        int number = 10;

                        if (number > 0) {
                            System.out.println("Positive number.");
                        } else {
                            System.out.println("Non-positive number.");
                        }
                    }
                }
                ```

                Loops:
                Loops allow you to repeat code multiple times. In Java, there are three primary types of loops:
                - `for`: Ideal when you know the number of iterations ahead of time.
                - `while`: Executes a block of code as long as a condition is true.
                - `do while`: Ensures that the block of code is executed at least once before checking the condition.

                Example (for loop):
                ```java
                public class Main {
                    public static void main(String[] args) {
                        for (int i = 1; i <= 3; i++) {
                            System.out.println(i);
                        }
                    }
                }
                ```

                Example (while loop):
                ```java
                public class Main {
                    public static void main(String[] args) {
                        int count = 1;
                        while (count <= 3) {
                            System.out.println(count);
                            count++;
                        }
                    }
                }
                ```

                Loops help you handle tasks like iterating over collections or automating repetitive processes in your program.
            """,
            exampleCode: """
                public class Main {
                    public static void main(String[] args) {
                        int number = 10;

                        if (number > 0) {
                            System.out.println("Positive number.");
                        } else {
                            System.out.println("Non-positive number.");
                        }

                        for (int i = 1; i <= 3; i++) {
                            System.out.println(i);
                        }

                        int count = 1;
                        while (count <= 3) {
                            System.out.println(count);
                            count++;
                        }
                    }
                }
            """
        ),
        
        Lecture(
            title: "Object-Oriented Programming",
            topics: ["Encapsulation", "Polymorphism"],
            content: """
                Encapsulation:
                Encapsulation is the concept of bundling data and methods that operate on that data within a single unit, typically a class. This helps in restricting direct access to some of an object's components, which is why it is often called data hiding.

                In Java, encapsulation is achieved by making the fields of a class private and providing public getter and setter methods to access them.

                Example:
                ```java
                public class BankAccount {
                    private double balance;

                    public double getBalance() {
                        return balance;
                    }

                    public void deposit(double amount) {
                        if (amount > 0) {
                            balance += amount;
                        }
                    }
                }

                public class Main {
                    public static void main(String[] args) {
                        BankAccount account = new BankAccount();
                        account.deposit(500);
                        System.out.println("Balance: " + account.getBalance());
                    }
                }
                ```

                Polymorphism:
                Polymorphism allows objects of different classes to be treated as objects of a common superclass. It enables a method to behave differently based on the object that is calling it.

                Example:
                ```java
                public class Shape {
                    public void draw() {
                        System.out.println("Drawing a shape");
                    }
                }

                public class Circle extends Shape {
                    @Override
                    public void draw() {
                        System.out.println("Drawing a circle");
                    }
                }

                public class Main {
                    public static void main(String[] args) {
                        Shape shape = new Circle();
                        shape.draw();  // Output: Drawing a circle
                    }
                }
                ```

                In this example, the `draw()` method behaves differently depending on the object type (Shape or Circle).
            """,
            exampleCode: """
                public class BankAccount {
                    private double balance;

                    public double getBalance() {
                        return balance;
                    }

                    public void deposit(double amount) {
                        if (amount > 0) {
                            balance += amount;
                        }
                    }
                }

                public class Shape {
                    public void draw() {
                        System.out.println("Drawing a shape");
                    }
                }

                public class Circle extends Shape {
                    @Override
                    public void draw() {
                        System.out.println("Drawing a circle");
                    }
                }

                public class Main {
                    public static void main(String[] args) {
                        BankAccount account = new BankAccount();
                        account.deposit(500);
                        System.out.println("Balance: " + account.getBalance());

                        Shape shape = new Circle();
                        shape.draw();  // Output: Drawing a circle
                    }
                }
            """
        ),
        
        Lecture(
            title: "Inheritance and Interfaces",
            topics: ["Inheritance", "Interfaces"],
            content: """
                Inheritance:
                Inheritance is a key feature of object-oriented programming that allows a class to inherit properties and methods from another class. It helps in code reuse and establishes a relationship between parent and child classes.

                Example of Inheritance:
                ```java
                class Vehicle {
                    void start() {
                        System.out.println("Vehicle is starting");
                    }
                }

                class Car extends Vehicle {
                    void drive() {
                        System.out.println("Car is driving");
                    }
                }

                public class Main {
                    public static void main(String[] args) {
                        Car car = new Car();
                        car.start(); // Inherited from Vehicle class
                        car.drive(); // Specific to Car class
                    }
                }
                ```

                Interfaces:
                An interface in Java is a reference type, similar to a class, that can contain only constants, method signatures, default methods, static methods, and nested types. Interfaces cannot contain instance fields or constructors.

                Example of an Interface:
                ```java
                interface Animal {
                    void sound();
                }

                class Cat implements Animal {
                    @Override
                    public void sound() {
                        System.out.println("Meow");
                    }
                }

                public class Main {
                    public static void main(String[] args) {
                        Animal cat = new Cat();
                        cat.sound();  // Output: Meow
                    }
                }
                ```

                Inheritance and interfaces allow developers to design flexible and reusable code by creating hierarchies and defining common behaviors for different types.
            """,
            exampleCode: """
                class Vehicle {
                    void start() {
                        System.out.println("Vehicle is starting");
                    }
                }

                class Car extends Vehicle {
                    void drive() {
                        System.out.println("Car is driving");
                    }
                }

                interface Animal {
                    void sound();
                }

                class Cat implements Animal {
                    @Override
                    public void sound() {
                        System.out.println("Meow");
                    }
                }

                public class Main {
                    public static void main(String[] args) {
                        Vehicle vehicle = new Vehicle();
                        vehicle.start();

                        Car car = new Car();
                        car.start();
                        car.drive();

                        Animal cat = new Cat();
                        cat.sound();  // Output: Meow
                    }
                }
            """
        ),

        Lecture(
            title: "Exception Handling",
            topics: ["Try-Catch", "Throwing Exceptions"],
            content: """
                Try-Catch:
                Exception handling is a technique used to handle runtime errors, such as invalid inputs or accessing unavailable resources. In Java, the `try`, `catch`, and `finally` blocks allow you to handle exceptions gracefully.

                Example:
                ```java
                public class Main {
                    public static void main(String[] args) {
                        try {
                            String[] fruits = {"Apple", "Banana"};
                            System.out.println(fruits[5]); // Index out of bounds
                        } catch (ArrayIndexOutOfBoundsException e) {
                            System.out.println("Invalid index access");
                        }
                    }
                }
                ```

                Throwing Exceptions:
                Sometimes, you may want to manually throw an exception if certain conditions are met. The `throw` keyword is used for this purpose.

                Example:
                ```java
                public class Main {
                    public static void main(String[] args) {
                        try {
                            checkAge(15);
                        } catch (IllegalArgumentException e) {
                            System.out.println(e.getMessage());
                        }
                    }

                    static void checkAge(int age) {
                        if (age < 18) {
                            throw new IllegalArgumentException("Age must be 18 or older");
                        }
                    }
                }
                ```

                Exception handling helps ensure your programs behave properly in unexpected situations, improving reliability.
            """,
            exampleCode: """
                public class Main {
                    public static void main(String[] args) {
                        try {
                            String[] fruits = {"Apple", "Banana"};
                            System.out.println(fruits[5]); // Index out of bounds
                        } catch (ArrayIndexOutOfBoundsException e) {
                            System.out.println("Invalid index access");
                        }

                        try {
                            checkAge(15);
                        } catch (IllegalArgumentException e) {
                            System.out.println(e.getMessage());
                        }
                    }

                    static void checkAge(int age) {
                        if (age < 18) {
                            throw new IllegalArgumentException("Age must be 18 or older");
                        }
                    }
                }
            """
        ),
        
        Lecture(
            title: "Java Collections Framework",
            topics: ["ArrayList", "HashMap"],
            content: """
                ArrayList:
                `ArrayList` is a part of the Java Collections Framework and provides a resizable array. It can hold elements of any data type and provides methods for adding, removing, and accessing elements.

                Example:
                ```java
                import java.util.ArrayList;

                public class Main {
                    public static void main(String[] args) {
                        ArrayList<String> list = new ArrayList<>();
                        list.add("Java");
                        list.add("Python");
                        list.add("JavaScript");

                        System.out.println(list);
                    }
                }
                ```

                HashMap:
                `HashMap` stores key-value pairs and allows for fast lookups. It doesn't maintain any specific order of the elements.

                Example:
                ```java
                import java.util.HashMap;

                public class Main {
                    public static void main(String[] args) {
                        HashMap<String, Integer> map = new HashMap<>();
                        map.put("Java", 8);
                        map.put("Python", 5);

                        System.out.println(map);
                    }
                }
                ```

                Both `ArrayList` and `HashMap` are highly useful for managing and organizing data in your Java applications.
            """,
            exampleCode: """
                import java.util.ArrayList;
                import java.util.HashMap;

                public class Main {
                    public static void main(String[] args) {
                        ArrayList<String> list = new ArrayList<>();
                        list.add("Java");
                        list.add("Python");
                        list.add("JavaScript");
                        System.out.println(list);

                        HashMap<String, Integer> map = new HashMap<>();
                        map.put("Java", 8);
                        map.put("Python", 5);
                        System.out.println(map);
                    }
                }
                """
        ),
        
        Lecture(
                   title: "Interfaces and Abstract Classes",
                   topics: ["Interfaces", "Abstract Classes"],
                   content: """
                       Interfaces:
                       In Java, interfaces are used to define a contract for classes. An interface can contain abstract methods (methods without a body) that must be implemented by the classes that implement the interface. Interfaces are used to achieve abstraction and multiple inheritance.

                       Example:
                       ```java
                       interface Animal {
                           void sound();
                       }

                       class Dog implements Animal {
                           @Override
                           public void sound() {
                               System.out.println("Bark");
                           }
                       }

                       public class Main {
                           public static void main(String[] args) {
                               Animal dog = new Dog();
                               dog.sound();  // Output: Bark
                           }
                       }
                       ```

                       Abstract Classes:
                       Abstract classes are similar to interfaces, but they can have method implementations. You cannot instantiate an abstract class directly, but you can subclass it and implement its abstract methods.

                       Example:
                       ```java
                       abstract class Animal {
                           abstract void sound();
                           public void sleep() {
                               System.out.println("Sleeping...");
                           }
                       }

                       class Cat extends Animal {
                           @Override
                           void sound() {
                               System.out.println("Meow");
                           }
                       }

                       public class Main {
                           public static void main(String[] args) {
                               Animal cat = new Cat();
                               cat.sound();  // Output: Meow
                               cat.sleep();  // Output: Sleeping...
                           }
                       }
                       ```

                       Interfaces allow for defining behavior across classes, while abstract classes allow for partial implementation with shared functionality.
                   """,
                   exampleCode: """
                       interface Animal {
                           void sound();
                       }

                       class Dog implements Animal {
                           @Override
                           public void sound() {
                               System.out.println("Bark");
                           }
                       }

                       abstract class Animal {
                           abstract void sound();
                           public void sleep() {
                               System.out.println("Sleeping...");
                           }
                       }

                       class Cat extends Animal {
                           @Override
                           void sound() {
                               System.out.println("Meow");
                           }
                       }

                       public class Main {
                           public static void main(String[] args) {
                               Animal dog = new Dog();
                               dog.sound();  // Output: Bark

                               Animal cat = new Cat();
                               cat.sound();  // Output: Meow
                               cat.sleep();  // Output: Sleeping...
                           }
                       }
                       """
               ),
               
        Lecture(
                title: "File Input/Output",
                topics: ["File Handling", "Reading/Writing Files"],
                content: """
                    File Handling in Java:
                    Java provides a robust set of classes for file handling. We can use the `File`, `FileReader`, and `FileWriter` classes for basic file operations like reading and writing text files.

                    Reading a File:
                    Java's `FileReader` and `BufferedReader` are typically used for reading text files.

                    Example (Reading a File):
                    ```java
                    import java.io.*;

                    public class Main {
                        public static void main(String[] args) {
                            try {
                                BufferedReader reader = new BufferedReader(new FileReader("file.txt"));
                                String line;
                                while ((line = reader.readLine()) != null) {
                                    System.out.println(line);
                                }
                                reader.close();
                            } catch (IOException e) {
                                System.out.println("Error reading file.");
                            }
                        }
                    }
                    ```

                    Writing to a File:
                    Java's `FileWriter` and `BufferedWriter` are used for writing text files.

                    Example (Writing to a File):
                    ```java
                    import java.io.*;

                    public class Main {
                        public static void main(String[] args) {
                            try {
                                BufferedWriter writer = new BufferedWriter(new FileWriter("output.txt"));
                                writer.write("Hello, world!");
                                writer.close();
                            } catch (IOException e) {
                                System.out.println("Error writing to file.");
                            }
                        }
                    }
                    ```

                    File I/O in Java is essential when you need to persist data to the file system, such as reading and writing user inputs or logs.
                """,
                exampleCode: """
                    import java.io.*;

                    public class Main {
                        public static void main(String[] args) {
                            try {
                                BufferedReader reader = new BufferedReader(new FileReader("file.txt"));
                                String line;
                                while ((line = reader.readLine()) != null) {
                                    System.out.println(line);
                                }
                                reader.close();
                            } catch (IOException e) {
                                System.out.println("Error reading file.");
                            }

                            try {
                                BufferedWriter writer = new BufferedWriter(new FileWriter("output.txt"));
                                writer.write("Hello, world!");
                                writer.close();
                            } catch (IOException e) {
                                System.out.println("Error writing to file.");
                            }
                        }
                    }
                    """
            ),
               
        Lecture(
                title: "Streams and Lambda Expressions",
                topics: ["Streams", "Lambda Expressions"],
                content: """
                    Streams:
                    A stream is a sequence of data that can be processed in a functional style. Java introduced the Stream API in Java 8 to simplify data manipulation and make the code more concise. Streams allow you to perform operations like filtering, mapping, and reducing in a clean, readable way.

                    Example (Using Streams):
                    ```java
                    import java.util.*;
                    import java.util.stream.*;

                    public class Main {
                        public static void main(String[] args) {
                            List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);

                            List<Integer> squaredNumbers = numbers.stream()
                                                                    .map(n -> n * n)
                                                                    .collect(Collectors.toList());

                            System.out.println(squaredNumbers);
                        }
                    }
                    ```

                    Lambda Expressions:
                    Lambda expressions allow you to write shorter, more readable code for methods that only need to implement a single function. They're a core part of Java's functional programming features.

                    Example (Lambda Expression):
                    ```java
                    import java.util.*;

                    public class Main {
                        public static void main(String[] args) {
                            List<String> names = Arrays.asList("Alice", "Bob", "Charlie");

                            names.forEach(name -> System.out.println(name));
                        }
                    }
                    ```

                    Lambda expressions are often used in combination with streams to process data in a functional style, making code cleaner and more efficient.
                """,
                exampleCode: """
                    import java.util.*;
                    import java.util.stream.*;

                    public class Main {
                        public static void main(String[] args) {
                            List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);

                            List<Integer> squaredNumbers = numbers.stream()
                                                                    .map(n -> n * n)
                                                                    .collect(Collectors.toList());

                            System.out.println(squaredNumbers);

                            List<String> names = Arrays.asList("Alice", "Bob", "Charlie");
                            names.forEach(name -> System.out.println(name));
                        }
                    }
                    """
            ),
               
        Lecture(
                title: "Multithreading",
                topics: ["Creating Threads", "Thread Synchronization"],
                content: """
                    Creating Threads:
                    Java provides built-in support for multithreading through the `Thread` class and the `Runnable` interface. A thread is a lightweight process that runs concurrently with other threads.

                    Example (Creating a Thread):
                    ```java
                    class MyThread extends Thread {
                        public void run() {
                            System.out.println("Thread is running.");
                        }
                    }

                    public class Main {
                        public static void main(String[] args) {
                            MyThread thread = new MyThread();
                            thread.start();
                        }
                    }
                    ```

                    Thread Synchronization:
                    Multithreading can lead to issues like race conditions. To avoid this, Java provides synchronization mechanisms. You can use the `synchronized` keyword to control access to shared resources.

                    Example (Synchronizing a Method):
                    ```java
                    class Counter {
                        private int count = 0;

                        public synchronized void increment() {
                            count++;
                        }

                        public int getCount() {
                            return count;
                        }
                    }

                    public class Main {
                        public static void main(String[] args) {
                            Counter counter = new Counter();

                            Thread t1 = new Thread(() -> {
                                for (int i = 0; i < 1000; i++) {
                                    counter.increment();
                                }
                            });

                            Thread t2 = new Thread(() -> {
                                for (int i = 0; i < 1000; i++) {
                                    counter.increment();
                                }
                            });

                            t1.start();
                            t2.start();
                        }
                    }
                    ```

                    Thread synchronization is essential when working with shared data in concurrent programming.
                """,
                exampleCode: """
                    class MyThread extends Thread {
                        public void run() {
                            System.out.println("Thread is running.");
                        }
                    }

                    class Counter {
                        private int count = 0;

                        public synchronized void increment() {
                            count++;
                        }

                        public int getCount() {
                            return count;
                        }
                    }

                    public class Main {
                        public static void main(String[] args) {
                            Counter counter = new Counter();

                            Thread t1 = new Thread(() -> {
                                for (int i = 0; i < 1000; i++) {
                                    counter.increment();
                                }
                            });

                            Thread t2 = new Thread(() -> {
                                for (int i = 0; i < 1000; i++) {
                                    counter.increment();
                                }
                            });

                            t1.start();
                            t2.start();
                        }
                    }
                    """
            )
    ]
    static let htmlLectures = [
            
            Lecture(
                title: "Introduction to HTML",
                topics: ["HTML Structure", "Basic Tags"],
                content: """
                    HTML Structure:
                    HTML (Hypertext Markup Language) is the standard language used to create webpages. It consists of various elements, called tags, that define the structure and content of the webpage.

                    A basic HTML document has the following structure:
                    ```html
                    <!DOCTYPE html>
                    <html>
                        <head>
                            <title>Page Title</title>
                        </head>
                        <body>
                            <h1>Welcome to My Website</h1>
                            <p>This is a paragraph.</p>
                        </body>
                    </html>
                    ```

                    HTML Tags:
                    Tags are the building blocks of HTML. They usually come in pairs: an opening tag and a closing tag.

                    Commonly used tags:
                    - `<h1>`, `<h2>`, ... `<h6>`: Headings
                    - `<p>`: Paragraph
                    - `<a>`: Anchor (link)
                    - `<div>`, `<span>`: Containers
                """,
                exampleCode: """
                    <!DOCTYPE html>
                    <html>
                        <head>
                            <title>Page Title</title>
                        </head>
                        <body>
                            <h1>Welcome to My Website</h1>
                            <p>This is a paragraph.</p>
                        </body>
                    </html>
                    """
            ),
            
            Lecture(
                title: "HTML Forms and Inputs",
                topics: ["Forms", "Input Elements"],
                content: """
                    HTML Forms:
                    Forms allow users to input data into a webpage. The `<form>` element is used to create forms, and various input elements are placed inside it to capture user information.

                    Input Elements:
                    HTML provides a variety of input types to capture different kinds of user data, such as text, passwords, dates, etc.

                    Example (Creating a Form):
                    ```html
                    <form action="/submit" method="POST">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name"><br><br>
                        
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email"><br><br>
                        
                        <input type="submit" value="Submit">
                    </form>
                    ```

                    The `action` attribute defines the URL where the form data will be sent, and `method` defines the HTTP method (GET or POST).
                """,
                exampleCode: """
                    <form action="/submit" method="POST">
                        <label for="name">Name:</label>
                        <input type="text" id="name" name="name"><br><br>
                        
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email"><br><br>
                        
                        <input type="submit" value="Submit">
                    </form>
                    """
            ),
            
            Lecture(
                title: "HTML Links and Navigation",
                topics: ["Links", "Navigation"],
                content: """
                    HTML Links:
                    Links are essential in navigating between webpages. The `<a>` tag is used to create hyperlinks.

                    Example (Creating a Link):
                    ```html
                    <a href="https://www.example.com">Click here to visit Example</a>
                    ```

                    Navigation Menus:
                    A navigation menu typically contains a list of links that allow users to move between different sections or pages of a website.

                    Example (Navigation Menu):
                    ```html
                    <nav>
                        <ul>
                            <li><a href="#home">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </nav>
                    ```

                    Links are crucial for a seamless user experience, as they allow for easy navigation across different pages or sections of a website.
                """,
                exampleCode: """
                    <a href="https://www.example.com">Click here to visit Example</a>

                    <nav>
                        <ul>
                            <li><a href="#home">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Contact</a></li>
                        </ul>
                    </nav>
                    """
            ),
            
            Lecture(
                title: "HTML Tables and Lists",
                topics: ["Tables", "Lists"],
                content: """
                    HTML Tables:
                    Tables are used to display data in a grid-like structure. The `<table>` tag defines the table, and inside it, you use `<tr>` for rows, `<td>` for table data (cells), and `<th>` for table headers.

                    Example (Creating a Table):
                    ```html
                    <table>
                        <tr>
                            <th>Header 1</th>
                            <th>Header 2</th>
                        </tr>
                        <tr>
                            <td>Row 1, Cell 1</td>
                            <td>Row 1, Cell 2</td>
                        </tr>
                        <tr>
                            <td>Row 2, Cell 1</td>
                            <td>Row 2, Cell 2</td>
                        </tr>
                    </table>
                    ```

                    HTML Lists:
                    Lists are used to group items. HTML supports both ordered lists (numbered) and unordered lists (bulleted).

                    Example (Creating an Unordered List):
                    ```html
                    <ul>
                        <li>Item 1</li>
                        <li>Item 2</li>
                        <li>Item 3</li>
                    </ul>
                    ```

                    Example (Creating an Ordered List):
                    ```html
                    <ol>
                        <li>First Item</li>
                        <li>Second Item</li>
                        <li>Third Item</li>
                    </ol>
                    ```
                """,
                exampleCode: """
                    <table>
                        <tr>
                            <th>Header 1</th>
                            <th>Header 2</th>
                        </tr>
                        <tr>
                            <td>Row 1, Cell 1</td>
                            <td>Row 1, Cell 2</td>
                        </tr>
                        <tr>
                            <td>Row 2, Cell 1</td>
                            <td>Row 2, Cell 2</td>
                        </tr>
                    </table>

                    <ul>
                        <li>Item 1</li>
                        <li>Item 2</li>
                        <li>Item 3</li>
                    </ul>

                    <ol>
                        <li>First Item</li>
                        <li>Second Item</li>
                        <li>Third Item</li>
                    </ol>
                    """
            ),
            
            Lecture(
                title: "HTML Semantic Elements",
                topics: ["Semantic Tags", "Accessibility"],
                content: """
                    Semantic HTML:
                    Semantic elements describe the meaning of content on the page. They improve accessibility and SEO by providing context to the browser and developers.

                    Common semantic tags include:
                    - `<header>`: Represents the header section of a page or section.
                    - `<footer>`: Represents the footer section of a page or section.
                    - `<article>`: Represents a self-contained piece of content.
                    - `<section>`: Represents a section of content.

                    Example (Using Semantic Tags):
                    ```html
                    <header>
                        <h1>Welcome to My Website</h1>
                    </header>

                    <section>
                        <h2>About Me</h2>
                        <p>This section is about me.</p>
                    </section>

                    <footer>
                        <p>Contact us at contact@example.com</p>
                    </footer>
                    ```

                    Accessibility:
                    Semantic HTML improves accessibility for users with disabilities by providing clear structure to assistive technologies, such as screen readers.
                """,
                exampleCode: """
                    <header>
                        <h1>Welcome to My Website</h1>
                    </header>

                    <section>
                        <h2>About Me</h2>
                        <p>This section is about me.</p>
                    </section>

                    <footer>
                        <p>Contact us at contact@example.com</p>
                    </footer>
                    """
            ),
            
            Lecture(
                title: "HTML Media Elements",
                topics: ["Images", "Audio and Video"],
                content: """
                    Images:
                    Images are added to webpages using the `<img>` tag. The `src` attribute specifies the image file location, and the `alt` attribute provides alternative text for accessibility.

                    Example (Adding an Image):
                    ```html
                    <img src="image.jpg" alt="A description of the image">
                    ```

                    Audio and Video:
                    HTML5 introduced the `<audio>` and `<video>` tags to embed media files in a webpage.

                    Example (Adding Audio):
                    ```html
                    <audio controls>
                        <source src="audio.mp3" type="audio/mp3">
                        Your browser does not support the audio element.
                    </audio>
                    ```

                    Example (Adding Video):
                    ```html
                    <video width="320" height="240" controls>
                        <source src="movie.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                    ```

                    Media elements enhance user interaction by allowing multimedia content to be embedded on webpages.
                """,
                exampleCode: """
                    <img src="image.jpg" alt="A description of the image">

                    <audio controls>
                        <source src="audio.mp3" type="audio/mp3">
                        Your browser does not support the audio element.
                    </audio>

                    <video width="320" height="240" controls>
                        <source src="movie.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                    """
            )
        ]
    static let cssLectures = [
            
            Lecture(
                title: "Introduction to CSS",
                topics: ["CSS Basics", "Selectors", "Styling Text"],
                content: """
                    CSS Basics:
                    Cascading Style Sheets (CSS) is used to describe the presentation of a document written in HTML or XML. It controls the layout of multiple web pages all at once.

                    Selectors:
                    CSS uses selectors to target HTML elements and apply styles. The most common selectors are element selectors, class selectors, and ID selectors.

                    Example (Element Selector):
                    ```css
                    p {
                        color: blue;
                    }
                    ```

                    Styling Text:
                    CSS provides properties to style the text within HTML elements, including color, font size, and text alignment.

                    Example (Styling Text):
                    ```css
                    p {
                        color: red;
                        font-size: 16px;
                        text-align: center;
                    }
                    ```

                    With CSS, you can change the look and feel of your website, giving it a more polished and structured appearance.
                """,
                exampleCode: """
                    p {
                        color: blue;
                    }
                    ```

                    p {
                        color: red;
                        font-size: 16px;
                        text-align: center;
                    }
                    """
            ),
            
            Lecture(
                title: "CSS Layout Techniques",
                topics: ["Flexbox", "Grid Layout", "Positioning"],
                content: """
                    Flexbox:
                    Flexbox is a one-dimensional layout method for arranging items in rows or columns. It helps to align items easily and distribute space dynamically within containers.

                    Example (Flexbox Layout):
                    ```css
                    .container {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                    }
                    ```

                    Grid Layout:
                    CSS Grid Layout is a two-dimensional layout system, meaning it can handle both columns and rows, which makes it more powerful than Flexbox for creating complex designs.

                    Example (Grid Layout):
                    ```css
                    .container {
                        display: grid;
                        grid-template-columns: repeat(3, 1fr);
                        gap: 20px;
                    }
                    ```

                    Positioning:
                    CSS provides various positioning methods such as static, relative, absolute, fixed, and sticky positioning.

                    Example (Positioning):
                    ```css
                    .container {
                        position: relative;
                    }

                    .element {
                        position: absolute;
                        top: 10px;
                        left: 20px;
                    }
                    ```

                    CSS Layout techniques help create well-structured and responsive designs, making your web pages more user-friendly and adaptive to different screen sizes.
                """,
                exampleCode: """
                    .container {
                        display: flex;
                        justify-content: space-between;
                        align-items: center;
                    }

                    .container {
                        display: grid;
                        grid-template-columns: repeat(3, 1fr);
                        gap: 20px;
                    }

                    .container {
                        position: relative;
                    }

                    .element {
                        position: absolute;
                        top: 10px;
                        left: 20px;
                    }
                    """
            ),
            
            Lecture(
                title: "CSS Styling for Responsive Web Design",
                topics: ["Media Queries", "Responsive Design", "Viewport Units"],
                content: """
                    Media Queries:
                    Media queries in CSS allow you to apply different styles for different screen sizes or devices. It's a key part of responsive design.

                    Example (Media Query):
                    ```css
                    @media (max-width: 768px) {
                        .container {
                            flex-direction: column;
                        }
                    }
                    ```

                    Responsive Design:
                    Responsive design ensures your website looks good on all screen sizes, from mobile phones to desktop monitors. It often involves using percentage-based widths, flexible grids, and media queries.

                    Viewport Units:
                    Viewport units (vw, vh, vmin, vmax) are relative units that allow you to create layouts based on the size of the viewport (the user's browser window).

                    Example (Viewport Units):
                    ```css
                    .container {
                        width: 50vw;
                        height: 50vh;
                    }
                    ```

                    Using these techniques, you can create flexible and adaptive layouts for different devices, improving user experience across multiple platforms.
                """,
                exampleCode: """
                    @media (max-width: 768px) {
                        .container {
                            flex-direction: column;
                        }
                    }

                    .container {
                        width: 50vw;
                        height: 50vh;
                    }
                    """
            ),
            
            Lecture(
                title: "Advanced CSS Styling",
                topics: ["Transitions", "Animations", "CSS Variables"],
                content: """
                    Transitions:
                    CSS transitions allow you to change property values smoothly (over a given duration), making the changes more interactive.

                    Example (CSS Transition):
                    ```css
                    .element {
                        transition: background-color 0.3s ease;
                    }

                    .element:hover {
                        background-color: blue;
                    }
                    ```

                    Animations:
                    CSS animations allow you to animate elements by specifying keyframes. With keyframes, you can define how the element should move or change at different stages of the animation.

                    Example (CSS Animation):
                    ```css
                    @keyframes slideIn {
                        from {
                            transform: translateX(-100%);
                        }
                        to {
                            transform: translateX(0);
                        }
                    }

                    .element {
                        animation: slideIn 1s ease-in-out;
                    }
                    ```

                    CSS Variables:
                    CSS variables allow you to store values for later use, making your styles more maintainable.

                    Example (CSS Variable):
                    ```css
                    :root {
                        --main-color: #3498db;
                    }

                    .element {
                        color: var(--main-color);
                    }
                    ```

                    These advanced styling techniques add interactivity and flexibility to your design, creating more dynamic user experiences.
                """,
                exampleCode: """
                    .element {
                        transition: background-color 0.3s ease;
                    }

                    .element:hover {
                        background-color: blue;
                    }

                    @keyframes slideIn {
                        from {
                            transform: translateX(-100%);
                        }
                        to {
                            transform: translateX(0);
                        }
                    }

                    .element {
                        animation: slideIn 1s ease-in-out;
                    }

                    :root {
                        --main-color: #3498db;
                    }

                    .element {
                        color: var(--main-color);
                    }
                    """
            ),
            
            Lecture(
                title: "CSS Typography",
                topics: ["Font Family", "Font Size", "Line Height", "Text Shadow"],
                content: """
                    Font Family:
                    CSS allows you to specify the font of an element using the `font-family` property. You can set a custom font or use system fonts.

                    Example (Font Family):
                    ```css
                    body {
                        font-family: 'Arial', sans-serif;
                    }
                    ```

                    Font Size and Line Height:
                    You can adjust the size of the text with `font-size`, and control the vertical space between lines with `line-height`.

                    Example (Font Size and Line Height):
                    ```css
                    p {
                        font-size: 18px;
                        line-height: 1.5;
                    }
                    ```

                    Text Shadow:
                    CSS allows you to add a shadow to the text to create more depth.

                    Example (Text Shadow):
                    ```css
                    h1 {
                        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
                    }
                    ```

                    Typography is an essential aspect of web design, helping to improve readability and the overall aesthetic of your website.
                """,
                exampleCode: """
                    body {
                        font-family: 'Arial', sans-serif;
                    }

                    p {
                        font-size: 18px;
                        line-height: 1.5;
                    }

                    h1 {
                        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
                    }
                    """
            ),
            
            Lecture(
                title: "CSS Frameworks",
                topics: ["Bootstrap", "Tailwind CSS"],
                content: """
                    Bootstrap:
                    Bootstrap is a popular CSS framework that provides a collection of CSS classes and JavaScript components to help you design responsive websites quickly.

                    Example (Bootstrap Grid System):
                    ```html
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">Column 1</div>
                            <div class="col-sm-4">Column 2</div>
                            <div class="col-sm-4">Column 3</div>
                        </div>
                    </div>
                    ```

                    Tailwind CSS:
                    Tailwind CSS is a utility-first framework that provides low-level utility classes to build custom designs without leaving your HTML.

                    Example (Tailwind CSS):
                    ```html
                    <div class="bg-blue-500 text-white p-4">
                        <h1>Welcome to Tailwind CSS</h1>
                    </div>
                    ```

                    Frameworks like Bootstrap and Tailwind CSS help speed up development and make it easier to create responsive, modern websites.
                """,
                exampleCode: """
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-4">Column 1</div>
                            <div class="col-sm-4">Column 2</div>
                            <div class="col-sm-4">Column 3</div>
                        </div>
                    </div>

                    <div class="bg-blue-500 text-white p-4">
                        <h1>Welcome to Tailwind CSS</h1>
                    </div
                    """
            )
        ]
    static let pythonLectures = [
            
            Lecture(
                title: "Introduction to Python",
                topics: ["Variables", "Data Types", "Control Flow"],
                content: """
                    Variables and Data Types:
                    In Python, variables are used to store data. You don't need to declare a variable type explicitly as Python is dynamically typed. The main data types are integers, floats, strings, and booleans.

                    Control Flow:
                    Control flow in Python is used to control the execution of statements based on conditions.

                    Example (Basic Syntax):
                    ```python
                    x = 5
                    y = "Hello, World!"
                    
                    if x > 0:
                        print("x is positive")
                    else:
                        print("x is negative or zero")
                    ```

                    Python's simple and clean syntax makes it ideal for beginners.
                """,
                exampleCode: """
                    x = 5
                    y = "Hello, World!"
                    
                    if x > 0:
                        print("x is positive")
                    else:
                        print("x is negative or zero")
                    """
            ),
            
            Lecture(
                title: "Functions",
                topics: ["Defining Functions", "Arguments", "Return Values"],
                content: """
                    Defining Functions:
                    Functions in Python are defined using the `def` keyword. They can take parameters and return values.

                    Arguments:
                    Functions can accept different types of arguments, including positional and keyword arguments.

                    Return Values:
                    Functions can return a result, which can be used in other parts of the program.

                    Example (Function Definition):
                    ```python
                    def greet(name):
                        return f"Hello, {name}!"
                    
                    result = greet("Alice")
                    print(result)  # Output: Hello, Alice!
                    ```

                    Functions allow you to encapsulate logic and reuse code.
                """,
                exampleCode: """
                    def greet(name):
                        return f"Hello, {name}!"
                    
                    result = greet("Alice")
                    print(result)  # Output: Hello, Alice!
                    """
            ),
            
            Lecture(
                title: "Object-Oriented Programming",
                topics: ["Classes", "Objects", "Inheritance"],
                content: """
                    Classes and Objects:
                    Python supports object-oriented programming. Classes are blueprints for creating objects. An object is an instance of a class.

                    Inheritance:
                    Python allows classes to inherit from other classes, which helps to reuse code.

                    Example (Creating a Class):
                    ```python
                    class Animal:
                        def __init__(self, name):
                            self.name = name
                        
                        def speak(self):
                            print(f"{self.name} makes a sound.")
                    
                    class Dog(Animal):
                        def speak(self):
                            print(f"{self.name} barks.")
                    
                    dog = Dog("Buddy")
                    dog.speak()  # Output: Buddy barks.
                    ```

                    Object-oriented programming helps you create modular, reusable, and maintainable code.
                """,
                exampleCode: """
                    class Animal:
                        def __init__(self, name):
                            self.name = name
                        
                        def speak(self):
                            print(f"{self.name} makes a sound.")
                    
                    class Dog(Animal):
                        def speak(self):
                            print(f"{self.name} barks.")
                    
                    dog = Dog("Buddy")
                    dog.speak()  # Output: Buddy barks.
                    """
            ),
            
            Lecture(
                title: "File Input/Output",
                topics: ["Reading Files", "Writing Files", "Working with File Paths"],
                content: """
                    Reading Files:
                    Python provides built-in functions like `open` to read from files. You can read files line by line or in chunks.

                    Writing Files:
                    Similarly, you can use the `open` function to write data to files.

                    Example (Reading from a File):
                    ```python
                    with open("file.txt", "r") as file:
                        content = file.read()
                        print(content)
                    ```

                    Writing to a File:
                    ```python
                    with open("output.txt", "w") as file:
                        file.write("Hello, Python!")
                    ```

                    File I/O in Python is essential for handling persistent data.
                """,
                exampleCode: """
                    with open("file.txt", "r") as file:
                        content = file.read()
                        print(content)
                    
                    with open("output.txt", "w") as file:
                        file.write("Hello, Python!")
                    """
            ),
            
            Lecture(
                title: "Working with Lists and Loops",
                topics: ["Lists", "For Loops", "While Loops"],
                content: """
                    Lists:
                    In Python, lists are used to store multiple items in a single variable. Lists are ordered, changeable, and allow duplicates.

                    Loops:
                    Loops are used to iterate over data. Python supports `for` loops and `while` loops.

                    Example (Working with Lists):
                    ```python
                    fruits = ["apple", "banana", "cherry"]
                    for fruit in fruits:
                        print(fruit)
                    ```

                    While Loops:
                    ```python
                    i = 0
                    while i < 5:
                        print(i)
                        i += 1
                    ```

                    Loops and lists allow you to process and iterate over large data sets efficiently.
                """,
                exampleCode: """
                    fruits = ["apple", "banana", "cherry"]
                    for fruit in fruits:
                        print(fruit)
                    
                    i = 0
                    while i < 5:
                        print(i)
                        i += 1
                    """
            ),
            
            Lecture(
                title: "Exception Handling",
                topics: ["Try-Except", "Handling Multiple Exceptions", "Finally Block"],
                content: """
                    Try-Except:
                    In Python, exception handling is done using the `try-except` block. It allows you to handle errors without stopping the program.

                    Handling Multiple Exceptions:
                    You can catch multiple types of exceptions using multiple `except` blocks.

                    Finally Block:
                    The `finally` block runs code regardless of whether an exception occurred or not.

                    Example (Exception Handling):
                    ```python
                    try:
                        num = int(input("Enter a number: "))
                        result = 10 / num
                    except ZeroDivisionError:
                        print("Cannot divide by zero!")
                    except ValueError:
                        print("Invalid input!")
                    finally:
                        print("Execution finished.")
                    ```

                    Exception handling is important for building robust programs that can handle unexpected situations.
                """,
                exampleCode: """
                    try:
                        num = int(input("Enter a number: "))
                        result = 10 / num
                    except ZeroDivisionError:
                        print("Cannot divide by zero!")
                    except ValueError:
                        print("Invalid input!")
                    finally:
                        print("Execution finished.")
                    """
            ),
            
            Lecture(
                title: "Understanding Decorators",
                topics: ["Function Decorators", "Class Decorators", "Built-in Decorators"],
                content: """
                    Function Decorators:
                    Decorators are a powerful tool in Python. They allow you to modify the behavior of a function or class without changing its code.

                    Class Decorators:
                    You can also apply decorators to classes to modify their behavior.

                    Example (Function Decorator):
                    ```python
                    def decorator(func):
                        def wrapper():
                            print("Before function call")
                            func()
                            print("After function call")
                        return wrapper

                    @decorator
                    def greet():
                        print("Hello, World!")

                    greet()
                    ```

                    Built-in Decorators:
                    Python also has built-in decorators like `@staticmethod`, `@classmethod`, and `@property`.

                    Decorators allow you to write cleaner, reusable code and enhance functionality dynamically.
                """,
                exampleCode: """
                    def decorator(func):
                        def wrapper():
                            print("Before function call")
                            func()
                            print("After function call")
                        return wrapper

                    @decorator
                    def greet():
                        print("Hello, World!")

                    greet()
                    """
            ),
            
            Lecture(
                title: "Working with APIs",
                topics: ["HTTP Requests", "Requests Library", "JSON Data"],
                content: """
                    HTTP Requests:
                    In Python, you can make HTTP requests using the `requests` library. It allows you to interact with RESTful APIs.

                    Requests Library:
                    The `requests` library simplifies sending HTTP requests and handling responses.

                    Example (GET Request):
                    ```python
                    import requests

                    response = requests.get("https://jsonplaceholder.typicode.com/posts")
                    data = response.json()
                    print(data)
                    ```

                    Sending Data with POST:
                    ```python
                    response = requests.post("https://jsonplaceholder.typicode.com/posts", data={"title": "New Post", "body": "This is a new post."})
                    print(response.status_code)
                    ```

                    Working with APIs allows you to interact with external data sources, such as databases or other services.
                """,
                exampleCode: """
                    import requests

                    response = requests.get("https://jsonplaceholder.typicode.com/posts")
                    data = response.json()
                    print(data)

                    response = requests.post("https://jsonplaceholder.typicode.com/posts", data={"title": "New Post", "body": "This is a new post."})
                    print(response.status_code)
                    """
            )
        ]
    static let sqlLectures = [
        
        Lecture(
            title: "Introduction to SQL",
            topics: ["What is SQL?", "Database Basics", "Why Use SQL?"],
            content: """
                What is SQL?
                SQL (Structured Query Language) is a programming language designed to manage and manipulate relational databases.

                Database Basics:
                - A database is a structured collection of data.
                - Tables are used to store data in rows and columns.

                Why Use SQL?
                SQL provides powerful tools to query, insert, update, and delete data in a database.

                Example:
                - Retrieve all rows from a table:
            """,
            exampleCode: """
                SELECT * FROM employees;
                """
        ),
        
        Lecture(
            title: "Understanding SQL DDL",
            topics: ["CREATE", "ALTER", "DROP"],
            content: """
                What is DDL?
                Data Definition Language (DDL) is used to define the structure of a database.

                CREATE Statement:
                Used to create a new table.
                
                ALTER Statement:
                Modify the structure of an existing table.

                DROP Statement:
                Delete tables or databases.

                Example:
                - Create a table:
            """,
            exampleCode: """
                CREATE TABLE employees (
                    id INT PRIMARY KEY,
                    name VARCHAR(100),
                    position VARCHAR(50),
                    salary DECIMAL(10, 2)
                );
                """
        ),
        

        Lecture(
            title: "Using SQL DML",
            topics: ["INSERT", "UPDATE", "DELETE"],
            content: """
                What is DML?
                Data Manipulation Language (DML) is used to interact with and modify data in a table.

                INSERT Statement:
                Adds new rows of data to a table.

                UPDATE Statement:
                Modifies existing data in a table.

                DELETE Statement:
                Removes rows from a table.

                Example:
                - Insert a new employee:
            """,
            exampleCode: """
                INSERT INTO employees (id, name, position, salary)
                VALUES (1, 'Alice', 'Manager', 75000.00);

                UPDATE employees
                SET salary = 80000.00
                WHERE name = 'Alice';

                DELETE FROM employees
                WHERE id = 1;
                """
        ),

        Lecture(
            title: "Mastering SQL DQL",
            topics: ["SELECT", "WHERE Clause", "ORDER BY"],
            content: """
                What is DQL?
                Data Query Language (DQL) is used to retrieve data from a database.

                SELECT Statement:
                The most commonly used command to query data.

                WHERE Clause:
                Filters records based on a condition.

                ORDER BY:
                Sorts the results by one or more columns.

                Example:
                - Query employees with specific conditions:
            """,
            exampleCode: """
                SELECT name, position, salary
                FROM employees
                WHERE salary > 50000
                ORDER BY salary DESC;
                """
        ),
        

        Lecture(
            title: "Understanding SQL Joins",
            topics: ["INNER JOIN", "LEFT JOIN", "RIGHT JOIN"],
            content: """
                What are Joins?
                Joins are used to combine rows from two or more tables based on a related column.

                INNER JOIN:
                Retrieves matching rows from both tables.

                LEFT JOIN:
                Retrieves all rows from the left table and matching rows from the right table.

                RIGHT JOIN:
                Retrieves all rows from the right table and matching rows from the left table.

                Example:
                - Combine data from two tables:
            """,
            exampleCode: """
                SELECT employees.name, departments.department_name
                FROM employees
                INNER JOIN departments
                ON employees.department_id = departments.id;
                """
        ),
        

        Lecture(
            title: "SQL Aggregate Functions",
            topics: ["COUNT()", "SUM()", "AVG()", "MIN()", "MAX()"],
            content: """
                What are Aggregate Functions?
                Aggregate functions perform calculations on a set of values and return a single result.

                Common Functions:
                - COUNT(): Counts the number of rows.
                - SUM(): Calculates the total of a column.
                - AVG(): Calculates the average of a column.
                - MIN()/MAX(): Finds the smallest/largest value.

                Example:
                - Calculate total and average salary:
            """,
            exampleCode: """
                SELECT COUNT(*) AS total_employees,
                       SUM(salary) AS total_salary,
                       AVG(salary) AS average_salary
                FROM employees;
                """
        ),
        

        Lecture(
            title: "SQL Subqueries",
            topics: ["Nested Queries", "Correlated Subqueries"],
            content: """
                What are Subqueries?
                Subqueries are queries within a query, used to perform advanced data retrieval.

                Nested Queries:
                Execute a query within the main query.

                Correlated Subqueries:
                Use data from the outer query.

                Example:
                - Find employees with above-average salary:
            """,
            exampleCode: """
                SELECT name, salary
                FROM employees
                WHERE salary > (
                    SELECT AVG(salary)
                    FROM employees
                );
                """
        ),
        
        Lecture(
            title: "Working with SQL Transactions",
            topics: ["BEGIN", "COMMIT", "ROLLBACK"],
            content: """
                What are Transactions?
                Transactions are used to execute a set of SQL statements as a single unit of work.

                BEGIN:
                Starts a transaction.

                COMMIT:
                Saves the changes made in the transaction.

                ROLLBACK:
                Undoes changes made in the transaction.

                Example:
                - Using transactions:
            """,
            exampleCode: """
                BEGIN;

                UPDATE employees
                SET salary = salary * 1.1
                WHERE position = 'Developer';

                COMMIT;

                -- If an error occurs, use ROLLBACK instead:
                -- ROLLBACK;
                """
        )
    ]
}



