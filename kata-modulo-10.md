# Kata módulo 10

### Ejercicio 1 
```bash
┌─┤ omar • DellG7 • (909) • ~
└──•% python                         
Python 3.10.2 (main, Jan 17 2022, 00:00:00) [GCC 11.2.1 20211203 (Red Hat 11.2.1-7)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> open("/path/to/mars.jpg")
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
FileNotFoundError: [Errno 2] No such file or directory: '/path/to/mars.jpg'
```

### Ejercicio 2 
```bash
┌─┤ omar • DellG7 • (911) • ~
└──•% vi open.py  
┌─┤ omar • DellG7 • (912) • ~
└──•% cat open.py    
def main():
    open("/path/to/mars.jpg")

if __name__ == '__main__':
    main()
```

### Ejercicio 3 
```bash
┌─┤ omar • DellG7 • (913) • ~
└──•% python3 open.py
Traceback (most recent call last):
  File "/home/omar/open.py", line 5, in <module>
    main()
  File "/home/omar/open.py", line 2, in main
    open("/path/to/mars.jpg")
FileNotFoundError: [Errno 2] No such file or directory: '/path/to/mars.jpg'
```

### Ejercicio 4 
```bash
┌─┤ omar • DellG7 • (914) • ~
└──•% python         
Python 3.10.2 (main, Jan 17 2022, 00:00:00) [GCC 11.2.1 20211203 (Red Hat 11.2.1-7)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> try:
...   open('config.txt')
... except FileNotFoundError:
...   print("Couldnt find the config.txt file!")
... 
Couldn't find the config.txt file!
```

### Ejercicio 5 
```bash
┌─┤ omar • DellG7 • (915) • ~
└──•% vi config.py
┌─┤ omar • DellG7 • (916) • ~
└──•% cat config.py 
def main():
    try:
        configuration = open('config.txt')
    except FileNotFoundError:
        print("Couldnt find the config.txt file!")


if __name__ == '__main__':
    main()
```

### Ejercicio 6 
```bash
┌─┤ omar • DellG7 • (919) • ~
└──•% python config.py
Traceback (most recent call last):
  File "/home/omar/config.py", line 9, in <module>
    main()
  File "/home/omar/config.py", line 3, in main
    configuration = open('config.txt')
IsADirectoryError: [Errno 21] Is a directory: 'config.txt'
```

### Ejercicio 7
```bash
┌─┤ omar • DellG7 • (920) • ~
└──•% vi config.py
┌─┤ omar • DellG7 • (921) • ~
└──•% cat config.py
def main():
    try:
        configuration = open('config.txt')
    except Exception:
        print("Couldnt find the config.txt file!")

if __name__ == '__main__':
    main()
```


### Ejercicio 8
```bash
┌─┤ omar • DellG7 • (922) • ~
└──•% python config.py
Couldn't find the config.txt file!
```

### Ejercicio 9
```bash
┌─┤ omar • DellG7 • (933) • ~
└──•% vi config.py
┌─┤ omar • DellG7 • (934) • ~
└──•% cat config.py       
def main():
    try:
        configuration = open('config.txt')
    except FileNotFoundError:
        print("Couldn't find the config.txt file!")
    except IsADirectoryError:
        print("Found config.txt but it is a directory, couldn't read it")
    except PermissionError:
        print("Found config.txt but couldn't read it")

if __name__ == '__main__':
    main()
```

### Ejercicio 10
```bash
┌─┤ omar • DellG7 • (935) • ~
└──•% python config.py
Found config.txt but couldn't read it
```

### Ejercicio 11
```bash
┌─┤ omar • DellG7 • (936) • ~
└──•% rm -f config.txt 
┌─┤ omar • DellG7 • (937) • ~
└──•% python config.py
Couldn't find the config.txt file!
```
### Ejercicio 12
```bash
┌─┤ omar • DellG7 • (938) • ~
└──•% vi config.py
┌─┤ omar • DellG7 • (939) • ~
└──•% cat config.py
def main():
    try:
        configuration = open('config.txt')
    except FileNotFoundError:
        print("Couldn't find the config.txt file!")
    except IsADirectoryError:
        print("Found config.txt but it is a directory, couldn't read it")
    except PermissionError:
        print("Found config.txt but couldn't read it")
    except (BlockingIOError, TimeoutError):
        print("Filesystem under heavy load, can't complete reading configuration file")
if __name__ == '__main__':
    main()
```
### Ejercicio 13
```bash
>>> try:
...     open("mars.jpg")
... except FileNotFoundError as err:
...     print("got a problem trying to read the file:", err)
...
got a problem trying to read the file: [Errno 2] No such file or directory: 'mars.jpg'
```
### Ejercicio 14
```bash
>>> try:
...     open("config.txt")
... except OSError as err:
...     if err.errno == 2:
...         print("Couldn't find the config.txt file!")
...     elif err.errno == 13:
...         print("Found config.txt but couldn't read it")
...
Couldn't find the config.txt file!
```
### Ejercicio 15
```bash
┌─┤ omar • DellG7 • (941) • ~
└──•% python 
Python 3.10.2 (main, Jan 17 2022, 00:00:00) [GCC 11.2.1 20211203 (Red Hat 11.2.1-7)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> def water_left(astronauts, water_left, days_left):
...     daily_usage = astronauts * 11
...     total_usage = daily_usage * days_left
...     total_water_left = water_left - total_usage
...     return f"Total water left after {days_left} days is: {total_water_left} liters"
... 
>>> water_left(5, 100, 2)
'Total water left after 2 days is: -10 liters'
```
### Ejercicio 16
```bash
┌─┤ omar • DellG7 • (942) • ~
└──•% python
Python 3.10.2 (main, Jan 17 2022, 00:00:00) [GCC 11.2.1 20211203 (Red Hat 11.2.1-7)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> def water_left(astronauts, water_left, days_left):
...     daily_usage = astronauts * 11
...     total_usage = daily_usage * days_left
...     total_water_left = water_left - total_usage
...     if total_water_left < 0:
...         raise RuntimeError(f"There is not enough water for {astronauts} astronauts after {days_left} days!")
...     return f"Total water left after {days_left} days is: {total_water_left} liters"
... 
>>> water_left(5, 100, 2)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "<stdin>", line 6, in water_left
RuntimeError: There is not enough water for 5 astronauts after 2 days!
```
### Ejercicio 17
```bash
try:
    water_left(5, 100, 2)
except RuntimeError as err:
    alert_navigation_system(err)
```
### Ejercicio 18
```bash
>>> water_left("3", "200", None)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "<stdin>", line 3, in water_left
TypeError: can't multiply sequence by non-int of type 'NoneType'
```
### Ejercicio 19
```bash
┌─┤ omar • DellG7 • (943) • ~
└──•% python 
Python 3.10.2 (main, Jan 17 2022, 00:00:00) [GCC 11.2.1 20211203 (Red Hat 11.2.1-7)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> def water_left(astronauts, water_left, days_left):
...     for argument in [astronauts, water_left, days_left]:
...         try:
...             # If argument is an int, the following operation will work
...             argument / 10
...         except TypeError:
...             # TypError will be raised only if it isn't the right type 
...             # Raise the same exception but with a better error message
...             raise TypeError(f"All arguments must be of type int, but received: '{argument}'")
...     daily_usage = astronauts * 11
...     total_usage = daily_usage * days_left
...     total_water_left = water_left - total_usage
...     if total_water_left < 0:
...         raise RuntimeError(f"There is not enough water for {astronauts} astronauts after {days_left} days!")
...     return f"Total water left after {days_left} days is: {total_water_left} liters"
... 
>>> water_left("3", "200", None)
Traceback (most recent call last):
  File "<stdin>", line 5, in water_left
TypeError: unsupported operand type(s) for /: 'str' and 'int'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "<stdin>", line 9, in water_left
TypeError: All arguments must be of type int, but received: '3'
```






