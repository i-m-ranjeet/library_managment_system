from asyncio.windows_events import NULL
from tkinter import CASCADE
from django.db import models



class BookCategory(models.Model):
    category_name = models.CharField(max_length=25, unique=True) # Novels, Comics, History, Poietry, Travel

    def __str__(self):
        return self.category_name


class BookSubject(models.Model):
    subject_name = models.CharField(max_length=25, unique=True) # Hindi, English, Mathematics, Social Science

    def __str__(self):
        return self.subject_name


class Book(models.Model):
    title = models.CharField(max_length=120)
    author = models.CharField(max_length=120)
    edition = models.CharField(max_length=120, null=True)    # 2017,2021,
    category = models.ForeignKey(BookCategory, on_delete=models.CASCADE)
    subject = models.ForeignKey(BookSubject, on_delete=models.CASCADE)

    def __str__(self):
        return self.title