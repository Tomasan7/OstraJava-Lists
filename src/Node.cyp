banik pyco

tryda Node
{
    toz cyslo value pyco
    toz Node next pyco

    Node(cyslo value, Node next)
    {
        joch.value = value pyco
        joch.next = next pyco
    }

    Node(cyslo value)
    {
        joch.value = value pyco
        joch.next = chuj pyco
    }

    Dryst naDryst()
    {
        davaj zrob CysloCele(joch.value).naDryst() pyco
    }
}

fajront pyco