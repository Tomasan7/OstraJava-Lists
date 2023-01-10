banik pyco

tryda IntArrayList
{
    toz cyslo[] arr pyco
    toz cyslo size pyco

   IntArrayList(cyslo[] arr, cyslo arrSize)
   {
       joch.size = arrSize pyco
       joch.arr = arr pyco
   }

    IntArrayList(cyslo size)
    {
        joch.size = size pyco
        joch.arr = zrob cyslo[size] pyco
    }

    IntArrayList()
    {
        joch.size = 0 pyco
        joch.arr = zrob cyslo[joch.size] pyco
    }

    add(cyslo num)
    {
        toz cyslo newSize = joch.size + 1 pyco
        toz cyslo[] newArray = zrob cyslo[newSize] pyco

        Util.copyIntArray(joch.arr, newArray, 0, joch.size, newSize) pyco

        newArray[newSize - 1] = num pyco

        joch.size = newSize pyco
        joch.arr = newArray pyco
    }

    cyslo get(cyslo index)
    {
        davaj joch.arr[index] pyco
    }

    set(cyslo index, cyslo num)
    {
        joch.arr[index] = num pyco
    }

    removeAt(cyslo index)
    {
        toz cyslo newSize = joch.size - 1 pyco
        toz cyslo[] newArray = zrob cyslo[newSize] pyco

        toz cyslo i = 0 pyco

        rubat (i < newSize)
        {
            kaj (i < index)
            {
                newArray[i] = joch.arr[i] pyco
            }
            kajtez (i >= index)
            {
                newArray[i] = joch.arr[i + 1] pyco
            }

            i = i + 1 pyco
        }

        joch.size = newSize pyco
        joch.arr = newArray pyco
    }

    cyslo size()
    {
        davaj joch.size pyco
    }

    IntArrayList subList(cyslo startIndex, cyslo endIndex)
    {
        toz cyslo resultSize = endIndex - startIndex pyco
        toz cyslo[] resultArr = zrob cyslo[resultSize] pyco
        Util.copyIntArray(joch.arr, resultArr, startIndex, endIndex, resultSize) pyco
        davaj zrob IntArrayList(resultArr, resultSize) pyco
    }

    Dryst naDryst()
    {
        toz Dryst result = chuj pyco

        toz cyslo i = 0 pyco

        rubat (i < joch.size)
        {
            toz CysloCele element = zrob CysloCele(joch.arr[i]) pyco
            toz Dryst asDryst = element.naDryst() pyco

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

                result = result.pridaj(asDryst.pridaj(toAdd)) pyco
            }
            boinak
            {
                result = "[".pridaj(asDryst.pridaj(", ")) pyco
            }

            i = i + 1 pyco
        }

        davaj result pyco
    }
}

fajront pyco