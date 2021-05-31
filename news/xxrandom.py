# random script für das befüllen der numis app datenbank auf die auch harding (php) zugreift
# später dann in jango db implementieren
import mysql.connector  # paket mysql-connector - nicht paket mysql-connector-python
import random


def main_namespace():
# auswahl db
    def fnc_dbConnect(zahl):
        db1 = mysql.connector.connect(host='mysql07.manitu.net', user='u65152', password='svz3MzxNyYUmRFZ5', port='3306', database='db65152')  # numis hardcoding DB
        db2 = mysql.connector.connect(host='mysql07.manitu.net', user='u66665', password='Bzz2YUhEsRmrGxPA', port='3306', database='db66665')  # numis django DB
        db2 = mysql.connector.connect(host='mysql06.manitu.net', user='u66847', password='22vvuDBhpDVmNXfz', port='3306', database='db66847')  # numis django DB - neu
        if(zahl < 2):
            print('db 1')
            return db1
        else:
            print('db 2')
            return db2

# db - SELECT START
    def fnc_select(query, myDB):
        mycursor = myDB.cursor()
        mycursor.execute(query)
        myresult = mycursor.fetchall()
        # START - fnc_select("SELECT * FROM tab_10")
        def kontrolleArray(myresult):
            for x in myresult:
                print(x)
                # print(len(kArray))
        kontrolleArray(myresult)
        # ENDE
        return myresult

# db - INSERT START
    def fnc_insertRand(myDB):
        # erzeuge daten START
        imgFrond = 'https://anwendungsentwickler.info/numisDesigner-01(m%C3%BCnzen)tumb.png'  # blob - https://anwendungsentwickler.info/numisDesigner-01(m%C3%BCnzen)tumb.png
        imgBack = 'Rückseite'  # blob
        edge = '... der Rand ist ...'  # varchar
        describe = '... beschreibt die Münze'  # varchar
        value = random.randrange(49, 450)  # int
        mKey = 'mKey für Ki - später Build Unique Key'  # varchar
        unit = unitArray[random.randrange(0, len(unitArray) - 1)][1]  # int
        wahrung = wahrungArray[random.randrange(0, len(wahrungArray))][1]  # varchar
        land = landArray[random.randrange(0, len(landArray) - 1)][1]  # varchar
        year = yearArray[random.randrange(0, len(yearArray) - 1)][1]  # int
        produce = produceArray[random.randrange(0, len(produceArray) - 1)][1]  # varchar
        pollution = pollutionArray[random.randrange(0, len(pollutionArray) - 1)][2]  # varchar
        #################
        # insert daten in DB START
        mycursor = myDB.cursor()
        sql = "" \
              "INSERT INTO tab_60 (`60_imgFrond`, `60_imgBack`, 60_edge, 60_describe, 60_value, 60_mKey, 60_unit, 60_wahrung, 60_land, 60_year, 60_produce, 60_pollution) " \
              "VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
        val = (imgFrond, imgBack, edge, describe, value, mKey, unit, wahrung, land, year, produce, pollution)
        mycursor.execute(sql, val)
        myDB.commit()

# datensätze in db schreiben
    def fnc_anzahlDatensatze(anzahl):
        i = 1
        while i <= anzahl:
            fnc_insertRand(fnc_dbConnect(2))
            print(i)
            i += 1

# befülle random daten array START
    unitArray = fnc_select("SELECT * FROM tab_10", fnc_dbConnect(1))
    wahrungArray = fnc_select("SELECT * FROM tab_20", fnc_dbConnect(1))
    landArray = fnc_select("SELECT * FROM tab_30", fnc_dbConnect(1))
    yearArray = fnc_select("SELECT * FROM tab_40", fnc_dbConnect(1))
    produceArray = fnc_select("SELECT * FROM tab_50", fnc_dbConnect(1))
    pollutionArray = fnc_select("SELECT * FROM tab_70", fnc_dbConnect(1))


# call - fnc_anzahlDatensatze - datensätze erzeugen fire START
    fnc_anzahlDatensatze(1)













"""
price = random.randrange(49, 4500)
txt = "{} dollars"
print(txt.format(price))
"""
main_namespace()


