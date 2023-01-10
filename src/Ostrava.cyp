banik pyco

tryda Ostrava
{
    rynek()
    {
        toz IntLinkedList list = zrob IntLinkedList() pyco

        Konzola.pravit("Zadavej cisla do LinkedListu: (napis konec pro skonceni)") pyco

        rubat (fajne == fajne)
        {
            toz Dryst input = Konzola.cti() pyco

            kaj (input.kantuje("konec") == fajne)
            {
                zdybat pyco
            }

            toz cyslo inputCyslo = CysloCele.preved(input) pyco
            list.add(inputCyslo) pyco
        }

        list = list.subList(2,5) pyco
        Konzola.pravit("LinkedList:") pyco
        Konzola.pravit(list) pyco

//        toz IntArrayList list = zrob IntArrayList(6) pyco
//
//        list.set(0, 0) pyco
//        list.set(1, 11) pyco
//        list.set(2, 22) pyco
//        list.set(3, 33) pyco
//        list.set(4, 44) pyco
//        list.set(5, 55) pyco
//
//        Konzola.pravit(list) pyco
//        Konzola.pravit(list.size) pyco
//
//
//        list.remove(3) pyco
//
//        Konzola.pravit(list) pyco
//        Konzola.pravit(list.size) pyco
    }
}

fajront pyco