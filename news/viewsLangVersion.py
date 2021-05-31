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



""" html lang code version 
def meldungen(request):
    template = loader.get_template('newsTemplates/meldungen.html')
    context = {'meldungenPlatzhalter' : Meldung.objects.all()} # siehe meldungen.html - meldungenPlatzhalter war bezeichnet mit meldungen
    return HttpResponse(template.render(context))


# anpassung an html seite 956 buch python 3, 
def meldungen_detail(request, meldungs_id):
    template = loader.get_template('newsTemplates/meldungen_detail.html')
    meldung = get_object_or_404(Meldung, id=meldungs_id)
    return HttpResponse(template.render({'meldung' : meldung}))
"""


""" war für text/plain
def meldungen(request):
    zeilen = []
    # len(array) - l = len(zeilen)
    for m in Meldung.objects.all():
        zeilen.append("Meldung (myFirstBlah): '{}' vom {}".format(
            m.titel, m.zeitstempel.strftime('%d.%m.%Y um %H:%M')))
        zeilen.append('Text: {}'.format(m.text))
        # neu - zeilen.append(str(l))
        zeilen += ['', '#' * 30, '']
    antwort = HttpResponse('\n'.join(zeilen))
    antwort['Content-Type'] = 'text/plain' # # html geht auch aber ohne formatierung
    return antwort
"""
"""
def meldungen_detail(request, meldungs_id):
    try:
        m = Meldung.objects.get(id=meldungs_id)
    except Meldung.DoesNotExist:
        raise Http404

    zeilen = [
        "Titel: '{}' vom {}".format(
            m.titel, m.zeitstempel.strftime('%d.%m.%Y um %H:%M')),
        'Text: {}'.format(m.text),
        '', '-' * 30,
        'Kommentare:', '']
    zeilen += ['{}: {}'.format(k.autor, k.text)
               for k in m.kommentar_set.all()]
    antwort = HttpResponse('\n'.join(zeilen))
    antwort['Content-Type'] = 'text/plain' # html geht auch aber ohne formatierung
    return antwort
"""


#################################################################
"""
import mysql.connector #

myDB = mysql.connector.connect(
    host='mysql01.manitu.net',
    user='u39344',
    password='wCKaV5gkUJrN',
    port='3306',
    database='db39344'
)

# the cursor is used to execute statements and return data from database.
mycursor = myDB.cursor()

mycursor.execute('SELECT * From tab_berat') # tab_berat, users

# return a list of tuples
tab_berat = mycursor.fetchall()

for user in tab_berat:
    print(user)
    print('zeile: ' + user[1])
"""



