## Ruby QuickStart *Bootcamp*

---

## Please feel free to interrupt and ask questions!

*Pulled from the Ruby Quickstart*
https://www.ruby-lang.org/en/documentation/quickstart/

*Getting more help*
http://apidock.com/ruby

---

## Quick introduction

Ruby comes with a program that you can use to run code "on the fly".  It's called `irb` and stands for *Interactive Ruby*

If you're using *Windows* open *Interactive Ruby* from the ruby section of the start menu.

If you're using *Mac* or *Linux* open a terminal and type `irb`

---

## IRB as a calculator

1. Addition

    ```ruby
    3+2
    ```

1. Multiplication

    ```ruby
    3*2
    ```

---

1. Powers

    ```ruby
    3**2
    ```

1. Square Root

    ```ruby
    Math.sqrt(9)
    ```

---

### Breaking it down -

*Math*.sqrt(9)

*Math* is a built-in module for mathematics.  Modules serve two roles in Ruby.  This shows one role about how to group similar methods together under a familiar name.  Math also contains methods like sin() and tan()

---

### Breaking it down
Math*.*sqrt(9)

*Dot (.)* is how you identify the receiver of a message.  The message in this case is `sqrt(9)``, which means call the method `sqrt` (short for square root) with the parameter of 9

---

### Breaking it down

*The result* of this is the value 3.0, notice it's not just 3.

---

## Saving results (variables)

```ruby
a = 3 ** 2
b = 4 ** 2
Math.sqrt(a+b)
```

---

## Hello World!

```ruby
irb(main):001:0> "Hello World"
=> "Hello World"
```

---

## Hello World!

```ruby
irb(main):002:0> puts "Hello World"
Hello World
=> nil
```

---

## Making it our own method

```ruby
def hi
  puts "Hello World!"
end
hi
hi()
```

---

## Saying hi to someone

Adding a parameter to the method

```ruby
def hi(name)
  puts "Hello #{name}!"
end
hi("Will")
hi # error!
```

---

### What is that "#{name}" bit?

```ruby
def hi(name)
  puts "Hello #{name}!"
end
```

^It's a way to tell ruby that you want to substitute the value of something into that spot in a string.  The stuff between the braces {} is turned into a string (if it already isn't one) and then put in it's place of the outer string.  You can also use other ruby methods inside the braces.  For example to make sure someone's name is always capitalized change the string to look like.

---

### Making it a little bit smarter

```ruby
def hi(name = "World")
  puts "Hello #{name.capitalize}!"
end
hi "will"
hi
```

^A few other tricks up above, Parentheses are optional, and the default value for name

---

## Inspecting things in IRB

```ruby
name = "will"
name.inspect
name.methods
name.methods.sort
name.capitalize
name.upcase
name.upcase!
name
```

---

## Arrays

```ruby
a = [1,2,3,4,5]

a.size
a.max
a.reverse
a.first
a.last
```

---

## Looping

```ruby
a = [1,2,3,4,5]
a.each do |number|
  puts number
end

1
2
3
4
5
```

^`each` is a method that accepts blocks of code and run that code for each item in an array.  The code between the `do` and `end` is a block of code.  You can think of them like anonymous methods (methods without a name).  In this case it's making a method, the parameters for the method show up inside the pipes (`|`), in this case `number` and the `each` method will call our block passing it one number at a time from the array

---

## More looping

```ruby
5.times do |number|
  puts number
end

0
1
2
3
4
```

How can we make the output look like the first loop?

---

## Making it look like the first loop

```ruby
5.times do |number|
  puts number + 1
end
```
