from dataclasses import fields
from rest_framework import serializers
from library import models


class BookCategorySerializer(serializers.ModelSerializer):
    class Meta:
        model = models.BookCategory
        fields = "__all__"


class BookSubjectSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.BookSubject
        fields = "__all__"
        

class BookSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Book
        fields = "__all__"