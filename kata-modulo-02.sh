# Kata módulo 2


python3 -m venv env 
source env/bin/activate
pip freeze
pip install python-dateutil
pip freeze
deactivate

Salida="""
┌─┤ omar • DellG7 • (910) • ~/cursos/Python-LauchX--InnovaccionVirtual
└──•% python3 -m venv env   

┌─┤ omar • DellG7 • (911) • ~/cursos/Python-LauchX--InnovaccionVirtual
└──•% source env/bin/activate

(env) ┌─┤ omar • DellG7 • (912) • ~/cursos/Python-LauchX--InnovaccionVirtual
└──•% pip freeze

(env) ┌─┤ omar • DellG7 • (913) • ~/cursos/Python-LauchX--InnovaccionVirtual
└──•% pip install python-dateutil

Collecting python-dateutil
  Downloading python_dateutil-2.8.2-py2.py3-none-any.whl (247 kB)
     |████████████████████████████████| 247 kB 957 kB/s 
Collecting six>=1.5
  Downloading six-1.16.0-py2.py3-none-any.whl (11 kB)
Installing collected packages: six, python-dateutil
Successfully installed python-dateutil-2.8.2 six-1.16.0

(env) ┌─┤ omar • DellG7 • (914) • ~/cursos/Python-LauchX--InnovaccionVirtual
└──•% pip freeze
python-dateutil==2.8.2
six==1.16.0

(env) ┌─┤ omar • DellG7 • (915) • ~/cursos/Python-LauchX--InnovaccionVirtual
└──•% deactivate
"""