banik pyco

tryda Util
{
    statyk copyIntArray(cyslo[] sourceArr, cyslo[] destinationArr, cyslo sourceArrStartIndex, cyslo sourceArrEndIndex, cyslo destinationArrSize)
    {
        toz cyslo x = sourceArrStartIndex pyco
        toz cyslo i = 0 pyco

        rubat(x <= sourceArrEndIndex)
        {
            destinationArr[i] = sourceArr[x] pyco

            i = i + 1 pyco
            x = x + 1 pyco

            kaj (i == destinationArrSize)
            {
                zdybat pyco
            }
        }
    }
}

fajront pyco