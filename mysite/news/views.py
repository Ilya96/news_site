from django.shortcuts import render, get_object_or_404, redirect
from news.models import News, Category
from .forms import NewsForm
from django.views.generic import ListView, DetailView, CreateView

# Create your views here.


class CreateNews(CreateView):
    form_class = NewsForm
    template_name = 'news/add_news.html'


class ViewNews(DetailView):
    model = News
    context_object_name = 'news_item'
    # template_name = 'news/news_detail.html'
    pk_url_kwarg = 'news_id'


class HomeNews(ListView):
    model = News
    template_name = 'news/home_news_list.html'
    context_object_name = 'news'
    extra_context = {'title': 'Главная'}
    
    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = 'Главная страница'
        return context

    def get_queryset(self):
        return News.objects.filter(is_published=True)


class NewsByCategory(ListView):
    model = News
    template_name = 'news/home_news_list.html'
    context_object_name = 'news'

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title'] = get_object_or_404(Category, pk=self.kwargs['category_id'])
        return context

    def get_queryset(self):
        return News.objects.filter(category_id=self.kwargs['category_id'], is_published=True)


def index(request):
    news = News.objects.all()
    context = {
        'news': news,
        'title': 'List of News',
    }
    # rez = '<h1>List of News</h1>'
    # for i in news:
    #     rez += f'<div>\n<p>{i.title}</p>\n<p>{i.content}</p>\n</div>\n<hr>\n'
    return render(request, 'news/index.html', context=context)


def get_category(request, category_id):
    news = News.objects.filter(category_id=category_id)
    category = Category.objects.get(pk=category_id)
    context = {
        'news': news,
        'title': 'List of categories',
        'category': category
    }
    return render(request, 'news/category.html', context=context)


def view_news(request, news_id):
    # news_item = News.objects.get(pk=news_id)
    news_item = get_object_or_404(News, pk=news_id)
    return render(request, 'news/view_news.html', context={'news_item': news_item})


def add_news(request):
    if request.method == 'POST':
        form = NewsForm(request.POST)
        if form.is_valid():
            # print(form.cleaned_data)
            News.objects.create(**form.cleaned_data)
            return redirect('home')
    else:
        form = NewsForm()
    return render(request, 'news/add_news.html', {'form': form})


# def test(request):
#     print(request)
#     return HttpResponse("<h1> Testing page </h1>")
