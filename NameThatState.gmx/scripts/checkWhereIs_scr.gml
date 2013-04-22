if(global.isAClick) //You clicked the state
{
    if(room == (whereIs_1)) //You're in the Where Is This State Game
    {
        instance_create(mouse_x,mouse_y,selectOrb_obj);
        with(selectOrb_obj)
        {
            depth = -1;
        }
        global.whereIsTotal++;
        if(string(global.ansKey[global.question,1])==string(object_get_name(object_index)))
        {
            global.whereIsCorrect++;
            global.lastCorrect = 1;
        }
        else
        {
            global.lastCorrect = 0;
        }
        global.question = irandom_range(0,49);
    }
}
