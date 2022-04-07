from unicodedata import name
from library import views
from django.urls import path

urlpatterns = [
    path('add',views.addBook, name='add'),
    path('allbooks', views.allBooks, name='allbooks'),
    path('getbook/<int:id>',views.getBook, name='getbook'),
    path('update/<int:id>', views.updateBook, name='update'),
    path('deletebook/<int:id>', views.deleteBook, name='deletebook'),
    path('addcategory', views.addCategory, name='addcategory'),
    path('addsubject', views.addSubject, name='addsubject'),

    path('getsubjects', views.getSubjects, name='getsubjects'),
    path('getcategories', views.getCategories, name='getcategories'),


]