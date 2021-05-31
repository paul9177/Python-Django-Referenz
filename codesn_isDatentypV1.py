# isTuple - () - ( [] ) array oder liste in tuple funkt, nur eine, string gehen viele
#

# isString

# isArray - [] - [ [] ] habe ich fehler
# isList - []

tabelle1 = ["id", "unit"]
tabelle2 = ["id", "wahrung"]
tabelle3 = ["id", "land"]
string1 = 'string1'
string2 = 'string2'
# zeilen1 = (string1, string2) # funkt
zeilen1 = [string1, string2]  # funkt
antwort = HttpResponse('\n'.join(zeilen1))