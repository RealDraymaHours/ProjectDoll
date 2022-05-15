/// @description FinisherMeterRegem
if Recovery
{
	if FinisherMeter = 0
	{
		FinisherMeter = 0	
	}
	else
	{
		FinisherMeter -= 5;
	}

}
else
{
	if FinisherMeter = 0
	{
		FinisherMeter = 0	
	}
	else
	{
		FinisherMeter -= 1;
	}
}

alarm[9] = FinisherMeterRegenTime;