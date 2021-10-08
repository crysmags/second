from django.shortcuts import render
from django.http import HttpResponse
from django.views import View


class MyView(View):

    def get(self, request, *args, **kwargs):
        # return HttpResponse('Hello, World!')
        return render(request, 'index.html')

class AnotherView(View):

    def get(self, request, *args, **kwargs):
        # return HttpResponse('Hello, World!')
        return render(request, 'another.html')


class OtherView(View):

    def get(self, request, *args, **kwargs):
        # return HttpResponse('Hello, World!')
        return render(request, 'other.html')