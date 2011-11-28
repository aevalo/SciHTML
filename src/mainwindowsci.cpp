#include <Qsci/qsciscintilla.h>
#include "mainwindowsci.h"
#include "ui_mainwindowsci.h"

MainWindowSci::MainWindowSci(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindowSci)
{
    ui->setupUi(this);
}

MainWindowSci::~MainWindowSci()
{
    delete ui;
}

void MainWindowSci::changeEvent(QEvent *e)
{
    QMainWindow::changeEvent(e);
    switch (e->type()) {
    case QEvent::LanguageChange:
        ui->retranslateUi(this);
        break;
    default:
        break;
    }
}
