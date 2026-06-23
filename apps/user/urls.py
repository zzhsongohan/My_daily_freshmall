from django.urls import path, re_path

from apps.user.views import RegisterView, ActiveView

urlpatterns = [
    path("register/", RegisterView.as_view(), name="register"),
    re_path("active/(?P<token>.*)$", ActiveView.as_view(), name="active"),
]