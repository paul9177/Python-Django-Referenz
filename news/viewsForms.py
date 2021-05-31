# siehe thisModul/urls.py wird nur ausgeführt was oben steht
# https://django-book.readthedocs.io/en/latest/chapter07.html#making-a-contact-form
from django.http import HttpResponse    # 1
from django.shortcuts import render     # 2

# 1
def hello(request):
    return HttpResponse("<h1>Hello world, es wird ein Formular geben</h1>")


# 2
def search_form(request):
    return render(request, 'newsTemplates/search_form.html')

# 2 search_form.html
# <html>
# <head>
#     <title>Search</title>
# </head>
# <body>
#     <form action="/search/" method="get">
#         <input type="text" name="q">
#         <input type="submit" value="Search">
#     </form>
# </body>
# </html>

# 2 antwort zur search_html

def search(request):
    if 'q' in request.GET:
        #message = 'You searched for: %r' % request.GET['q']
        message =  "%r" % request.GET['q']
    else:
        message = 'You submitted an empty form.'
    return HttpResponse(message)







