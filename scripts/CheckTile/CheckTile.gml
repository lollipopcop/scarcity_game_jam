/// CheckTile()
// Checks which tile the test zone currently overlaps, 
// returns that object.

if(place_meeting(x,y,obj_test_block_1))
{
	return obj_test_block_1;	
}

if(place_meeting(x,y,obj_test_block_2))
{
	return obj_test_block_2;	
}


if(place_meeting(x,y,obj_test_block_3))
{
	return obj_test_block_3;	
} else {
	return 0;
}

