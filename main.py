# This Python file uses the following encoding: utf-8
import sys
from CovidData import Data

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QUrl, QObject, Slot, Signal


class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)


    # Inicjalizacja danych COVID
    data = Data

    # Sygnal do QML z backendu Python
    refreshData = Signal(str, str, str, str)

    # Obsługa slotow PyQT
    @Slot(str, str, str, str)
    def welcomeText(self, confirmed, deaths, recovered, active):
        fetchedData = self.data.getLatestData()
        self.refreshData.emit(str(fetchedData['Confirmed']), str(fetchedData['Deaths']), str(fetchedData['Recovered']), str(fetchedData['Active']))

    @Slot(str)
    def specificDate(self, date):
        fetchedData = self.data.getSpecificData(date)
        self.refreshData.emit(str(fetchedData['Confirmed']), str(fetchedData['Deaths']), str(fetchedData['Recovered']), str(fetchedData['Active']))

    @Slot(str)
    def renderGraph(self, date):
        fetchedData = self.data.renderCovidGraph(date)
    @Slot()
    def exportData(self):
        fetchedData = self.data.exportToJSON()

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # Backend
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)

    engine.load(QUrl("mainWindow.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())
