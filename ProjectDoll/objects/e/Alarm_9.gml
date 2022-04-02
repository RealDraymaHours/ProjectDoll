/// @description FinisherMeterRegem
if FinisherMeter >= 100
{
	FinisherMeter = 100	
}
else
{
	FinisherMeter += FinisherMeterRegenAmount;
}

alarm[9] = FinisherMeterRegenTime;