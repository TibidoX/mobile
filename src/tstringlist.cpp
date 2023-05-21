#include "tstringlist.h"

TStringList::TStringList(QObject *parent) : QObject(parent){}

QString TStringList::getText() const
{
    QString result = stringList.join(",").toLower();
    result[0] = result[0].toUpper();
    return result;
}

void TStringList::add(QString string)
{
    stringList.push_back(string);
    emit textChanged();
}

void TStringList::remove()
{
    if (!stringList.empty())
    {
        stringList.pop_back();
        emit textChanged();
    }
}
