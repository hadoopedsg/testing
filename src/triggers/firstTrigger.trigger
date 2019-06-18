trigger firstTrigger on Account (before update)
{
	system.debug('error' + Trigger.oldmap);
   
}