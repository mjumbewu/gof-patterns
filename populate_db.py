import os
import sys
os.environ['DJANGO_SETTINGS_MODULE'] = 'settings'

from models.category import Category
from models.pattern import Pattern

def insert_category(symbol, name):
  Category(
    symbol=symbol, 
    name=name).save();

def insert_pattern(stem, name, category_id, description):
  Pattern(
    stem=stem, 
    name=name, 
    category=Category.objects.get(symbol=category_id), 
    description=description).save();

if __name__ == "__main__":
  Pattern.objects.all().delete();
  Category.objects.all().delete();
  
  insert_category('B', 'Behavioral');
  insert_category('C', 'Creational');
  insert_category('S', 'Structural');

  insert_pattern('chain_of_responsibility', 'Chain of Responsibility', 'B', 'Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.');
  insert_pattern('command', 'Command', 'B', 'Encapsulate a request as an object,  thereby letting you parameterize clients  with different requests, queue or log  requests, and support undoable operations.');
  insert_pattern('interpreter', 'Interpreter', 'B', 'Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.');
  insert_pattern('iterator', 'Iterator', 'B', 'Provide a way to access the elements of  an aggregate object sequentially without  exposing its underlying representation.');
  insert_pattern('mediator', 'Mediator', 'B', 'Define an object that encapsulates how a set of objects interact. Promotes loose coupling by keeping objects from referring to each other explicitly and it lets you vary their interactions independently.');
  insert_pattern('memento', 'Memento', 'B', 'Without violating encapsulation, capture and externalize an object\'s internal state so that the object can be restored to this state later.');
  insert_pattern('observer', 'Observer', 'B', 'Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.');
  insert_pattern('state', 'State', 'B', 'Allow an object to alter its behavior when its internal state changes. The object will appear to change its class.');
  insert_pattern('strategy', 'Strategy', 'B', 'Define a family of algorithms, encapsulate each one, and make them interchangeable. Lets the algorithm vary independently from clients that use it.');
  insert_pattern('template_method', 'Template Method', 'B', 'Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Lets subclasses redefine certain steps of an algorithm without changing the algorithm\'s structure.');
  insert_pattern('visitor', 'Visitor', 'B', 'Represent an operation to be performed on the elements of an object structure. Lets you define a new operation without changing the classes of the elements on which it operates.');
  insert_pattern('adapter', 'Adapter', 'S', 'Convert the interface of a class into  another interface clients expect. Lets  classes work together that couldn\'t  otherwise because of incompatible  interfaces.');
  insert_pattern('bridge', 'Bridge', 'S', 'Decouple an abstraction from its implementation so that the two can vary independently.');
  insert_pattern('composite', 'Composite', 'S', 'Compose objects into tree structures to  represent part-whole hierarchies. Lets  clients treat individual objects and  compositions of objects uniformly.');
  insert_pattern('decorator', 'Decorator', 'S', 'Attach additional responsibilities to an  object dynamically. Provide a flexible  alternative to sub-classing for extending  functionality.');
  insert_pattern('facade', 'Facade', 'S', 'Provide a unified interface to a set of  interfaces in a subsystem. Defines a high-  level interface that makes the subsystem  easier to use.');
  insert_pattern('flyweight', 'Flyweight', 'S', 'Use sharing to support large numbers of fine grained objects efficiently.');
  insert_pattern('proxy', 'Proxy', 'S', 'Provide a surrogate or placeholder for another object to control access to it.');
  insert_pattern('abstract_factory', 'Abstract Factory', 'C', 'Provides an interface for creating families of related or dependent objects without specifying their concrete class.');
  insert_pattern('builder', 'Builder', 'C', 'Separate the construction of a complex object from its representation so that the same construction process can create different representations.');
  insert_pattern('factory_method', 'Factory Method', 'C', 'Define an interface for creating an object, but let subclasses decide which class to instantiate. Lets a class defer instantiation to subclasses.');
  insert_pattern('prototype', 'Prototype', 'C', 'Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.');
  insert_pattern('singleton', 'Singleton', 'C', 'Ensure a class only has one instance and provide a global point of access to it.');

