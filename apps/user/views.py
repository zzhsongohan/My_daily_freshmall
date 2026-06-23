from django.shortcuts import render
from django.views import View


# Create your views here.
class RegisterView(View):
    """注册类视图"""

    def get(self, request):
        """显示注册页面"""
        return render(request, "register.html")
