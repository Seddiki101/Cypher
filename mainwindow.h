#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include "animal.h"
#include <QMainWindow>
#include <QCheckBox>
#include <QMessageBox>
#include <QValidator>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_btn_Refresh_clicked();

    void on_btn_Add_clicked();

    void on_btn_Update_clicked();

    void on_btn_Delete_clicked();

    void on_btn_Sort_clicked();

    void on_btn_PDF_clicked();

    void on_le_Search_textChanged();

    void on_Black_clicked();

    void on_White_clicked();

    void on_btn_Upload_clicked();

private:
    Ui::MainWindow *ui;
    Animal A;
};
#endif // MAINWINDOW_H
