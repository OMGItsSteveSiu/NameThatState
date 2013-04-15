global.correctMultChoice = irandom_range(0,4);

//Array init
for(i=0; i<50; i++)
{
    global.shuffledArray[i] = i;
}

//Array shuffle
for(i = 0; i < 50; i++)
{
    j = irandom_range(i, 50 - 1)
    if (i != j)
    {
        k = global.shuffledArray[i]
        global.shuffledArray[i] = global.shuffledArray[j]
        global.shuffledArray[j] = k
    }
}

instance_create(445,269,global.ansKey[global.shuffledArray[global.correctMultChoice],2]);
