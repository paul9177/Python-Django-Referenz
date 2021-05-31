# magic method __str__(self) test
from django.db import models
# from news.xx_magic_method1 import TestMagic1 # für shell
# from news.models import TestMagic1 # für shell
# python manage.py shell


# mit models.py migriert
class TestMagic1(models.Model):
    titel = models.CharField(max_length=100)
    text = models.CharField(max_length=100)
    array = 'testen bei problemen'
    #def __str__(self):
        #return self.text



# geht - return self.array?
# m = TestMagic1(titel="ein titel", text="ein text") - bevor <TestMagic1: TestMagic1 object (1)>
# m2 = TestMagic1(titel="ein titel __str__ eingeschaltet", text="ein text __str__ eingeschaltet") - after <TestMagic1: ein text __str__ eingeschaltet>
"""
wird also __str__ eingeschaltet ist die ausgabe als string und nicht nur als object
scheinbar lang irgentwas zu returnen, bei problemen array testen
"""

# m.save()