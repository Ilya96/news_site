from django import template
from news.models import Category
from django.db.models import *

register = template.Library()


@register.simple_tag()
def get_categories():
    return Category.objects.annotate(cnt=Count('news')).filter(cnt__gt=0)


@register.inclusion_tag('news/list_categories.html')
def show_categories(arg1='Hello', arg2='world'):
    categories = Category.objects.annotate(cnt=Count('news')).filter(cnt__gt=0)
    return {"categories": categories, 'arg_first': arg1, 'arg_second': arg2}
