package $Event
{
	import managers.SingleEnterFrame;

	public function addEnterFrameCallback(func:Function):void
	{
		SingleEnterFrame.getInstance().addCallback(func);
	}
}