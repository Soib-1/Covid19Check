# This Python file uses the following encoding: utf-8
import requests
from datetime import date
import json
import matplotlib.pyplot as plt


class Data:

    today = ""

    def __init__(self):
        today = date.today()
        self.renderCovidGraph()

    def getLatestData():
        # Pobieramy aktualna date
        today = date.today()
        # Adres API z wszystkimi polami dla Polski
        latestUrl = "https://api.covid19api.com/country/poland?from="+str(today)+"T00:00:00Z&to="+str(today)+"T23:59:59Z"
        response = requests.request("GET", latestUrl, headers={}, data={})
        response = json.loads(response.text.encode('utf8'))
        # Zwracamy ostatni wiersz w razie, gdyby strona zwrocila więcej niż jeden wiersz
        # (czasami dla jednej daty pokazuje wiecej danych)
        return response[-1]

    def getSpecificData(chosenDate):
        today = date.today()
        urlDate = chosenDate
        tempDate = (str(urlDate).split("-"))

        # Sprawdzamy, czy data jest sprzed pandemii (unikamy problemow z danymi od API)
        if date(int(tempDate[0]), int(tempDate[1]), int(tempDate[2])) < date(2020, 4, 1):
            specificDateUrl = "https://api.covid19api.com/country/poland?from=2020-03-01T00:00:00Z&to=2020-03-01T23:59:59Z"

        # Sprawdzamy, czy data jest najwyżej dzisiejsza
        # - API zwraca wszystkie rekordy w przypadku przekroczenia daty
        elif date(int(tempDate[0]), int(tempDate[1]), int(tempDate[2])) > today:
            specificDateUrl = "https://api.covid19api.com/country/poland?from=" + str(today) + "T00:00:00Z&to=" + str(
                today) + "T23:59:59Z"
        else:
            specificDateUrl = "https://api.covid19api.com/country/poland?from="+str(urlDate)+"T00:00:00Z&to="+str(urlDate)+"T23:59:59Z"

        # W razie problemow z pobraniem danych - zwracamy błędy
        try:
            response = requests.request("GET", specificDateUrl, headers={}, data={})
        except requests.exceptions.HTTPError as err:
            return {'Confirmed': 'HTTP Error', 'Deaths': 'HTTP Error',
             'Recovered': 'HTTP Error', 'Active': 'HTTP Error'}
        except requests.exceptions.ConnectionError as err:
            return {'Confirmed': 'ConnectionError', 'Deaths': 'ConnectionError',
             'Recovered': 'ConnectionError', 'Active': 'ConnectionError'}
        except requests.exceptions.Timeout as err:
            return {'Confirmed': 'Timeout', 'Deaths': 'Timeout',
             'Recovered': 'Timeout', 'Active': 'Timeout'}
        except requests.exceptions.RequestException as err:
            return {'Confirmed': 'RequestException', 'Deaths': 'RequestException',
             'Recovered': 'RequestException', 'Active': 'RequestException'}

        # Unikamy bledu loadera JSON, jak strona jest przeciazona
        try:
            response = json.loads(response.text.encode('utf8'))
            return response[-1]
        except json.decoder.JSONDecodeError as err:
            return {'Confirmed': 'HTTP:503', 'Deaths': 'HTTP:503',
                    'Recovered': 'HTTP:503', 'Active': 'HTTP:503'}

    def renderCovidGraph(chosenDate):
        dataUrl = "https://api.covid19api.com/country/poland"

        # Zwracamy błędy w przypadku jakichkolwiek problemow sieciowych
        try:
            response = requests.request("GET", dataUrl, headers={}, data={})
        except requests.exceptions.HTTPError as err:
            return {'Confirmed': 'HTTP Error', 'Deaths': 'HTTP Error',
             'Recovered': 'HTTP Error', 'Active': 'HTTP Error'}
        except requests.exceptions.ConnectionError as err:
            return {'Confirmed': 'ConnectionError', 'Deaths': 'ConnectionError',
             'Recovered': 'ConnectionError', 'Active': 'ConnectionError'}
        except requests.exceptions.Timeout as err:
            return {'Confirmed': 'Timeout', 'Deaths': 'Timeout',
             'Recovered': 'Timeout', 'Active': 'Timeout'}
        except requests.exceptions.RequestException as err:
            return {'Confirmed': 'RequestException', 'Deaths': 'RequestException',
             'Recovered': 'RequestException', 'Active': 'RequestException'}

        # Obsluga bledu loadera JSON w przypadku przeciazenia strony
        try:
            response = json.loads(response.text.encode('utf8'))
        except json.decoder.JSONDecodeError as err:
            return {'Confirmed': 'HTTP:503', 'Deaths': 'HTTP:503',
                    'Recovered': 'HTTP:503', 'Active': 'HTTP:503'}
        dates = []
        confirmed = []
        deaths = []
        recovered = []
        active = []
        # Wprowadzanie danych na wykres
        for data in response:
            dates.append(data['Date'])
            confirmed.append(data['Confirmed'])
            deaths.append(data['Deaths'])
            recovered.append(data['Recovered'])
            active.append(data['Active'])

        x = dates
        y = [confirmed, deaths, recovered, active]

        # Ustawienie stylu wykresu
        with plt.style.context('dark_background'):
            plt.stackplot(x, y, labels=['Potwierdzone', 'Zgony', 'Ozdrowiency', 'Chorzy'])
            plt.xticks([])  # Usuniecie oznaczen danych na wykresie
            plt.yticks([])  # Usuniecie oznaczen danych na wykresie
            plt.xlabel("Czas")
            plt.ylabel("Ilość")
            plt.legend(loc='upper left')
            plt.title("Wykres COVID")
            plt.savefig("plot.png")
        return response[-1]

    def exportToJSON():
        dataUrl = "https://api.covid19api.com/country/poland"

        try:
            response = requests.request("GET", dataUrl, headers={}, data={})
        except requests.exceptions.HTTPError as err:
            return {'Confirmed': 'HTTP Error', 'Deaths': 'HTTP Error',
             'Recovered': 'HTTP Error', 'Active': 'HTTP Error'}
        except requests.exceptions.ConnectionError as err:
            return {'Confirmed': 'ConnectionError', 'Deaths': 'ConnectionError',
             'Recovered': 'ConnectionError', 'Active': 'ConnectionError'}
        except requests.exceptions.Timeout as err:
            return {'Confirmed': 'Timeout', 'Deaths': 'Timeout',
             'Recovered': 'Timeout', 'Active': 'Timeout'}
        except requests.exceptions.RequestException as err:
            return {'Confirmed': 'RequestException', 'Deaths': 'RequestException',
             'Recovered': 'RequestException', 'Active': 'RequestException'}

        # Zapis JSON do pliku
        with open("export.json", mode="w") as json:
            json.write(str(response.text.encode('utf-8')))






