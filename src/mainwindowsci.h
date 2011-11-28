#ifndef MAINWINDOWSCI_H
#define MAINWINDOWSCI_H

#include <QMainWindow>

namespace Ui {
    class MainWindowSci;
}

class MainWindowSci : public QMainWindow {
    Q_OBJECT
public:
    MainWindowSci(QWidget *parent = 0);
    ~MainWindowSci();

protected:
    void changeEvent(QEvent *e);

private:
    Ui::MainWindowSci *ui;
};

#endif // MAINWINDOWSCI_H
