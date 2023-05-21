#include "counter.h"

Counter::Counter(QObject *parent) : QObject(parent)
{
    value = 0;
}

int Counter::get() const
{
    return value;
}

void Counter::set(int value)
{
    this->value = value;
    emit valueChanged();
}

void Counter::reset()
{
    set(0);
}

void Counter::inc()
{
    set(value + 1);
}
