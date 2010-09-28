DROP TABLE IF EXISTS patterns;
DROP TABLE IF EXISTS categories;



CREATE TABLE categories (
  symbol TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT);

INSERT INTO categories (symbol, name) VALUES ('B', 'Behavioral');
INSERT INTO categories (symbol, name) VALUES ('C', 'Creational');
INSERT INTO categories (symbol, name) VALUES ('S', 'Structural');



CREATE TABLE patterns (
  stem TEXT PRIMARY KEY,
  name TEXT,
  category TEXT REFERENCES categories (symbol),
  description TEXT);

INSERT INTO patterns (stem, name, category, description)
  VALUES ('chain_of_responsibility', 'Chain of Responsibility', 'B', 'Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('command', 'Command', 'B', 'Encapsulate a request as an object,  thereby letting you parameterize clients  with different requests, queue or log  requests, and support undoable operations.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('interpreter', 'Interpreter', 'B', 'Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('iterator ', 'Iterator ', 'B', 'Provide a way to access the elements of  an aggregate object sequentially without  exposing its underlying representation.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('mediator', 'Mediator', 'B', 'Define an object that encapsulates how a set of objects interact. Promotes loose coupling by keeping objects from referring to each other explicitly and it lets you vary their interactions independently.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('memento', 'Memento', 'B', 'Without violating encapsulation, capture and externalize an object''s internal state so that the object can be restored to this state later.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('observer', 'Observer', 'B', 'Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('state', 'State', 'B', 'Allow an object to alter its behavior when its internal state changes. The object will appear to change its class.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('strategy', 'Strategy', 'B', 'Define a family of algorithms, encapsulate each one, and make them interchangeable. Lets the algorithm vary independently from clients that use it.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('template_method', 'Template Method', 'B', 'Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Lets subclasses redefine certain steps of an algorithm without changing the algorithm''s structure.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('visitor', 'Visitor', 'B', 'Represent an operation to be performed on the elements of an object structure. Lets you define a new operation without changing the classes of the elements on which it operates.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('adapter', 'Adapter', 'S', 'Convert the interface of a class into  another interface clients expect. Lets  classes work together that couldn''t  otherwise because of incompatible  interfaces.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('bridge', 'Bridge', 'S', 'Decouple an abstraction from its implementation so that the two can vary independently.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('composite', 'Composite', 'S', 'Compose objects into tree structures to  represent part-whole hierarchies. Lets  clients treat individual objects and  compositions of objects uniformly.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('decorator', 'Decorator', 'S', 'Attach additional responsibilities to an  object dynamically. Provide a flexible  alternative to sub-classing for extending  functionality.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('facade', 'Facade', 'S', 'Provide a unified interface to a set of  interfaces in a subsystem. Defines a high-  level interface that makes the subsystem  easier to use.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('flyweight', 'Flyweight', 'S', 'Use sharing to support large numbers of fine grained objects efficiently.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('proxy', 'Proxy', 'S', 'Provide a surrogate or placeholder for another object to control access to it.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('abstract_factory', 'Abstract Factory', 'C', 'Provides an interface for creating families of related or dependent objects without specifying their concrete class.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('builder', 'Builder', 'C', 'Separate the construction of a complex object from its representing so that the same construction process can create different representations.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('factory_method', 'Factory Method', 'C', 'Define an interface for creating an object, but let subclasses decide which class to instantiate. Lets a class defer instantiation to subclasses.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('prototype', 'Prototype', 'C', 'Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.');
INSERT INTO patterns (stem, name, category, description)
  VALUES ('singleton', 'Singleton', 'C', 'Ensure a class only has one instance and provide a global point of access to it.');

