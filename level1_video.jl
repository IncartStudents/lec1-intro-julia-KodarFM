# переписать ниже примеры из первого часа из видеолекции: 
# https://youtu.be/4igzy3bGVkQ
# по желанию можно поменять значения и попробовать другие функции

println("I'm excited to learn Julia!")

my_answer = 42
typeof(my_answer)

my_pi = 3.14159
typeof(my_pi)

my_name = "Kirill"
typeof(my_name)

my_answer = my_name
typeof(my_answer)

# comments
#=

another comments

=#
sum = 3 + 7
difference = 10 - 3
product = 20 * 5
quotient = 100 / 10
power = 10 ^ 2
modulus = 101 % 2

s1 = "i am a string"
s2 = """I am also a string"""
#"Here, we get an "error" because it's ambiguous where..."
#""" Look, there is no "error"! """
typeof('a')
#'We will get an error here'

name = "Kirill"
num_fingers = 10
num_toes = 10

println("Hello, my name is $name")
println("I have $num_fingers fingers and $num_toes toes. That is $(num_fingers + num_toes) diqits in all")

string("How many cats"," are too mane cats?")
string("I don't know, but ", 10," are too few")

s3 = "How mant cats ";
s4 = "are too many cats?";
s5 = s3*s4
println("$s3$s4")
println(s5)

myphonebook = Dict("Jenny" => "867-5309", "Ghostbusters" => "8(800)555-35-35")
myphonebook["Kramer"] = "555-FILK"
myphonebook

myphonebook["Kramer"]

pop!(myphonebook, "Kramer")
myphonebook

#myphonebook[1]

myfavoriteanimals = ("penguins", "cats", "sugargliders")
myfavoriteanimals[1]

#myfavoriteanimals[1] = "otters"

myfriends = ["Ted", "Robyn", "Barney", "Lily", "Marshall"]

fibonacci = [1, 1, 2, 3, 5, 8, 13]
mix = [1, 2, 3.0, "hi"]

myfriends[3]
myfriends[3] = "Baby Bop"
myfriends

push!(fibonacci, 21)
pop!(fibonacci)
fibonacci

favorites = [["koobideh", "chocolate", "eggs"],["penguins", "cats", "sugargliders"]]
numbers = [[1, 2, 3],[4, 5],[6, 7, 8, 9, 0]]

rand(4, 3)
rand(4, 3, 2)

let
    n = 0
    while n < 10
        n += 1
        println(n)
    end
end


let 
    i = 1
    while i <= length(myfriends)
        friend = myfriends[i]
        println("Hi $friend, it's great to see you!")
        i += 1
    end
end

for n in 1:10
    println(n)
end

for friend in myfriends
    println("Hi $friend, it's great to see you!")
end

m, n = 5, 5
A = zeros(m, n)
B = zeros(m, n)
C = zeros(m, n)

for i in 1:m, j in 1:n
    B[i, j]= i+j
end
B

C = [i + j for i in 1:m, j in 1:n]
C

for n in 1:10
    A = [i + j for i in 1:n, j in 1:n]
    display(A)
end

x = 4
y = 1
if x > y
    println("$x is larger then $y")
elseif y > x
    println("$y is larger then $x")
else
    println("$x and $y are equal!")
end

if x > y
    x
else
    y
end

(x > y) ? x : y

(x > y) && println("$x is larger then $y")
#(x < y) && println("$y is larger then $x")

function sayhi(name)
    println("Hi $name, it's great to see you")
end

function f(x)
    x^2
end

sayhi("C-3PO")
f(5)

sayhi2(name) = print("Hi $name, it's great to see you")
f2(x) = x^2

sayhi2("R2D2")
f2(12)

sayhi3 = name -> print("Hi $name, it's great to see you")
f3 = x -> x^2

sayhi3("Chewbacca")
f3(42)

sayhi(12531)

A = rand(3, 3)
A
f(A)

#v = rand(3)
#f(v)

v = [3,5,2]
sort(v)
sort!(v)

A = [i + 3*j for j in 0:2, i in 1:3]
f(A)

v = [1,2,3]
f.(v)

using Example
hello("It's me, Mario")

using Colors
palette = distinguishable_colors(100)
rand(palette, 3,3)

using Plots
x = -3:0.1:3
f(x) = x^2
y = f.(x)
gr()
plot(x,y, label="line")
scatter!(x,y,label="points")

globaltemperatures = [14.4,14.5,14.8,15.2,15.5,15.8]
numpirates = [45000,20000,15000,5000,400,17]

plot(numpirates,globaltemperatures,legend=false)
scatter!(numpirates,globaltemperatures,legend=false)

xlabel!("namber of pirates [Approximate]")
ylabel!("Global Temperature (C)")
title!("Influence of pirate population on global warming")

p1 = plot(x,x)
p2 = plot(x,x.^2)
p3 = plot(x,x.^3)
p4 = plot(x,x.^4)
plot(p1,p2,p3,p4,layout=(2,2),legend=false)

methods(+)

import Base: +

+(x::String, y::String) = string(x,y)
"hello " + "world!"

foo(x,y) = println("duck-typed foo")
foo(x::Int,y::Float64) = println("foo with an integer and a float")
foo(x::Float64,y::Float64) = println("foo with two floats")
foo(x::Int,y::Int) = println("foo with two integers floats")

foo(1,1)
foo(1.,1.)
foo(1,1.0)
foo(true,false)

A = rand(1:4,3,3)
B=A
C=copy(A)
[ B C]

A[1]=17
[B C]

x = ones(3)

b = A*x

Asym = A + A'
Apd = A'A
A\b

Atall = A[:,1:2]
display(Atall)
Atall\b

A = rand(3,3)
[A[:,1] A[:,1]]\b

Ashort = A[1:2,:]
display(Ashort)
Ashort\b[1:2]
