from django.conf.urls import include, url
from . import views
from . import viewsForms


urlpatterns = [
    url(r'^hello/$', viewsForms.hello, name='hello'),                   # http://127.0.0.1:8000/hello/ - funkt
    url(r'^search-form/$', viewsForms.search_form),                     # http://127.0.0.1:8000/search-form/ - funkt
    url(r'^search/$', viewsForms.search, name='hello'),                 # http://127.0.0.1:8000/search/ - funkt

    # ↓ für news modul und meldungen
    url(r'^$', views.meldungen, name='meldungen'),
    url(r'^(?P<meldungs_id>\d+)/$', views.meldungen_detail,
                                    name='meldungen_detail'),

]

# url(r'^$',                        - http://127.0.0.1:8000/meldungen oder ohne meldungen
# url(r'^search-form/$',            - http://127.0.0.1:8000/search-form/ - funkt
# url(r'^(?P<meldungs_id>\d+)/$',   - http://127.0.0.1:8000/meldungen/1 oder ohne meldungen
