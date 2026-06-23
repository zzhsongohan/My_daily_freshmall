import os
import django

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "my_daily_freshmall.settings")
django.setup()

from celery import Celery

app = Celery("celery_task")
app.config_from_object("celery_task.config")

app.autodiscover_tasks(["celery_task"])