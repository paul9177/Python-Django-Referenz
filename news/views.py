# html - seite 961
from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.shortcuts import render, get_object_or_404
from django.template import RequestContext, loader

from .models import Meldung, Kommentar

""" html kurz code version, seite 958 noch kürzerer code """
def meldungen(request):
    return render(request, 'newsTemplates/meldungen.html',
        context={'meldungenPlatz' : Meldung.objects.all()})


# anpassung an html seite 956 buch python 3, seite 958 noch kürzerer code
def meldungen_detail(request, meldungs_id):
    meldung = get_object_or_404(Meldung, id=meldungs_id)

    if 'speichere_kommentar' in request.POST:
        name = request.POST.get('besuchername', '')
        text = request.POST.get('kommentartext', '')

        if name and text:
            kommentar = meldung.kommentar_set.create(
                autor=name, text=text)
            kommentar.save()
            return HttpResponseRedirect('.')

        else:
            return render(request, 'newsTemplates/meldungen_detail.html',
                          context={'meldung': meldung,
                                   'fehler': 'Geben Sie Ihren Namen und ' \
                                             'einen Kommentar an.',
                                   'besuchername': name, 'kommentartext': text})

    return render(request, 'newsTemplates/meldungen_detail.html',
                  context={'meldung': meldung})




