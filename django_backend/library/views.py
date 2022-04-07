from urllib import response
from django.shortcuts import render
from library import models
# from django.views.decorators.csrf import csrf_exempt
from library import serializers
from rest_framework.decorators import api_view
from rest_framework.response import Response

@api_view(["POST"])
def addBook(request):
    if request.method == "POST":
        book = serializers.BookSerializer(data = request.data)
        if book.is_valid():
            book.save()
            return Response({"msg":"Book is added to library!"})
        return Response(book.errors)

@api_view(["GET"])
def getBook(request,id):
    if request.method == 'GET':
        book = models.Book.objects.get(id=id)
        serialized_book = serializers.BookSerializer(book)
        data={}
        cate = models.BookCategory.objects.get(id = serialized_book.data['category'])
        sub = models.BookSubject.objects.get(id=serialized_book.data['subject'])
        serialized_book.data['category'] = cate.category_name
        serialized_book.data['subject'] = sub.subject_name
        data.update({
            "id":serialized_book.data['id'],
            "title":serialized_book.data['title'],
            "author":serialized_book.data['author'],
            "edition":serialized_book.data['edition'],
            "category":cate.category_name,
            "subject":sub.subject_name
        })
        return Response(serialized_book.data)
    

@api_view(["PUT"])
def updateBook(request,id):
    if request.method == 'PUT':
        book = models.Book.objects.get(id=id)
        updated = serializers.BookSerializer(book, request.data)
        if updated.is_valid():
            updated.save()
            return Response({"msg":"Book is Updated Successfully!"})
        return Response(updated.errors)
    

@api_view(["DELETE"])
def deleteBook(request, id):
    if request.method == 'DELETE':
        book = models.Book.objects.get(id=id)
        book.delete()
        return Response({"msg":"Book has been Deleted!"})

@api_view(["GET"])
def allBooks(request):
    if request.method == "GET":
        books = models.Book.objects.all()
        serializedbooks = serializers.BookSerializer(data=books, many=True)
        if serializedbooks.is_valid():
            serializedbooks.save()

        for item in serializedbooks.data:
            cate = models.BookCategory.objects.get(id = item['category'])
            sub = models.BookSubject.objects.get(id=item['subject'])
            item['category'] = cate.category_name
            item['subject'] = sub.subject_name

        return Response(serializedbooks.data)


@api_view(["POST"])
def addCategory(request):
    if request.method == 'POST':
        category = serializers.BookCategorySerializer(data = request.data)
        if category.is_valid():
            category.save()
            return Response({"msg":"Category is saved!"})
        return Response(category.errors)

@api_view(["POST"])
def addSubject(request):
    if request.method == 'POST':
        subject = serializers.BookSubjectSerializer(data = request.data)
        if subject.is_valid():
            subject.save()
            return Response({"msg":"subject is saved!"})
        return Response(subject.errors)

@api_view(["GET"])
def getSubjects(request):
    if request.method == 'GET':
        all_subjects = models.BookSubject.objects.all()
        serialized_subjects = serializers.BookSubjectSerializer(all_subjects, many=True)
        return Response(serialized_subjects.data)

@api_view(["GET"])
def getCategories(request):
    if request.method == 'GET':
        all_category = models.BookCategory.objects.all()
        serialized_category = serializers.BookCategorySerializer(all_category, many=True)
        return Response(serialized_category.data)
