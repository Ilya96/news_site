from news.views import index
from django.urls import path
from news.views import *

urlpatterns = [
    # path('', index, name='home'),
    path('', HomeNews.as_view(), name='home'),
    # path('categories/<int:category_id>/', get_category, name='category'),
    path('categories/<int:category_id>/', NewsByCategory.as_view(extra_context={'title': 'Какой-то тайтл'}),
         name='category'),
    # path('news/<int:news_id>/', view_news, name='view_news'),
    path('news/<int:news_id>/', ViewNews.as_view(), name='view_news'),
    # path('add-news/', add_news, name='add_news'),
    path('add-news/', CreateNews.as_view(), name='add_news'),
]
