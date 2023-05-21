#ifndef TSTRINGLIST_H
#define TSTRINGLIST_H

#include <QObject>

class TStringList : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString text READ getText NOTIFY textChanged)

private:
    QStringList stringList;

public:
    explicit TStringList(QObject *parent = nullptr);

    Q_INVOKABLE QString getText() const;

    Q_INVOKABLE void add(QString string);
    Q_INVOKABLE void remove();

signals:
    void textChanged();
};

#endif // TSTRINGLIST_H
