banik pyco

tryda IntLinkedList
{
    toz Node head pyco
    toz Node tail pyco
    toz cyslo size pyco

   IntLinkedList()
   {
       joch.head = chuj pyco
       joch.tail = chuj pyco
       joch.size = 0 pyco
   }

    add(cyslo num)
    {
        toz Node newNode = zrob Node(num) pyco

        kaj (joch.head == chuj)
        {
            joch.head = newNode pyco
            joch.tail = newNode pyco
            joch.size = 1 pyco
            davaj pyco
        }

        joch.tail.next = newNode pyco
        joch.tail = newNode pyco

        joch.size = joch.size + 1 pyco
    }

    Node getNode(cyslo index)
    {
        toz cyslo i = 0 pyco
        toz Node result = joch.head pyco

        rubat (i < joch.size)
        {
            kaj (i == index)
            {
                davaj result pyco
            }

            result = result.next pyco
            i = i + 1 pyco
        }

        davaj chuj pyco
    }

    cyslo get(cyslo index)
    {
        toz Node node = getNode(index) pyco
        davaj node.value pyco
    }

    set(cyslo index, cyslo num)
    {
        toz Node node = joch.getNode(index) pyco
        node.value = num pyco
    }

    removeAt(cyslo index)
    {
        kaj (index == 0)
        {
            kaj (joch.size == 1)
            {
                joch.head = chuj pyco
                joch.tail = chuj pyco
                joch.size = joch.size + 1 pyco
                davaj pyco
            }

            joch.head = joch.getNode(1) pyco
        }

        toz Node precedingNode = joch.getNode(index - 1) pyco
        toz Node followingNode = joch.getNode(index + 1) pyco

        precedingNode.next = followingNode pyco
        joch.size = joch.size - 1 pyco
    }

    cyslo size()
    {
        davaj joch.size pyco
    }

    IntLinkedList subList(cyslo startIndex, cyslo endIndex)
    {
        toz IntLinkedList subList = zrob IntLinkedList() pyco

        toz cyslo i = startIndex pyco

        rubat (i < endIndex)
        {
            subList.add(joch.get(i)) pyco

            i = i + 1 pyco
        }

        davaj subList pyco
    }

    Dryst naDryst()
    {
        toz Dryst result = chuj pyco

        toz cyslo i = 0 pyco

        rubat (i < joch.size)
        {
            toz Node node = joch.getNode(i) pyco
            toz Dryst valueAsDryst = node.naDryst() pyco

            kaj (result != chuj)
            {
                toz Dryst toAdd = chuj pyco
                kaj (i == joch.size - 1)
                {
                    toAdd = "]" pyco
                }
                boinak
                {
                    toAdd = ", " pyco
                }
                result = result.pridaj(valueAsDryst.pridaj(toAdd)) pyco
            }
            boinak
            {
                result = "[".pridaj(valueAsDryst.pridaj(", ")) pyco
            }

            i = i + 1 pyco
        }

        davaj result pyco
    }
}

fajront pyco