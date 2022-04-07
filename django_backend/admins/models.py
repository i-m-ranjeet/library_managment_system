from django.db import models

class User(models.Model):
    fname = models.CharField(max_length=25)
    lname = models.CharField(max_length=25)
    email = models.EmailField(unique=True)
    mobile = models.PositiveIntegerField()
    password = models.CharField(max_length=12)


