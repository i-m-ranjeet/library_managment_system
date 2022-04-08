# from django.http import HttpResponse, JsonResponse
# from django.shortcuts import render
# from django.views.decorators.csrf import csrf_exempt
from django.core.exceptions import ObjectDoesNotExist
from admins.serializers import UserSerializer
from admins import models
from rest_framework.decorators import api_view
from rest_framework.response import Response


@api_view(['POST'])
def signup(request):
    try:
        request.session['userid']
    except KeyError:
        if request.method == 'POST':
            user = UserSerializer(data=request.data)
            if user.is_valid():
                user.save()
                return Response(data={"msg":"User Created  Successfuly!","isregister":True})
            return Response(user.errors)
        # return Response(data={"islogin":False})
    else:
        return Response(data={"islogin":True})


@api_view(['GET','POST'])
def signin(request):
    try:
        request.session['userid']
    except KeyError:
        if request.method == 'POST':
            email = request.data['email']
            pswd = request.data['password']
            user = None    
            try:
                user = models.User.objects.get(email=email)
            except ObjectDoesNotExist:
                return Response(data={"islogin":False,"username":False,"password":True, "cred":"Wrong Email", })
            if user:
                if user.password == pswd:
                    request.session['userid'] = user.id
                    # request.session['fname'] = user.fname
                    # request.session['lname'] = user.lname
                    # request.session['email'] = user.email
                    # request.session['mobile'] = user.mobile
                    return Response(data={"islogin":True,})
                return Response(data={"islogin":False,"username":True,"password":False, "cred":"Wrong Password", })
            return Response(data={"islogin":False,"username":False,"password":True, "cred":"Wrong Username", })
        return Response(data={"islogin":False,})       
        # return Response(data={"islogin":False})
    return Response(data={"islogin":True,})
    
@api_view(['GET'])
def signout(request):
    del request.session['userid']
    # del request.session['fname']
    # del request.session['lname']
    # del request.session['email']
    # del request.session['mobile']
    return Response({"islogin":False})




        
    
    
