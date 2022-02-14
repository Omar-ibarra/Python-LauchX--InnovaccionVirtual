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
┌─┤ omar • DellG7 • (923) • ~
└──•% vi config.py
┌─┤ omar • DellG7 • (924) • ~
└──•% cat config.py
def main():
    try:
        configuration = open('config.txt')
    except FileNotFoundError:
        print("Couldn't find the config.txt file!")
    except IsADirectoryError:
        print("Found config.txt but it is a directory, couldn't read it")

if __name__ == '__main__':
    main()
```
### Ejercicio 
```bash
```
### Ejercicio 
```bash
```
### Ejercicio 
```bash
```
### Ejercicio 
```bash
```
### Ejercicio 
```bash
```
### Ejercicio 
```bash
```
### Ejercicio 
```bash
```
### Ejercicio 
```bash
```






