func void REV_SetObjectRoutine_Fire (var STRING mobName)
{
	Wld_SetObjectRoutine (00,00, mobName, 1);
	Wld_SetObjectRoutine (20,00, mobName, 1);
	Wld_SetObjectRoutine (05,00, mobName, 0);
};