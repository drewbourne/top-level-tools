package maps.managers
{
	import flash.utils.Dictionary;

	[ExcludeClass]
	public class EventManager
	{
		private static var eventManager:EventManager;

		private var eventMap:Dictionary = new Dictionary();

		public static function getInstance():EventManager
		{
			return eventManager ||= new EventManager();
		}

		public function map(type:Class, command:Class):void
		{
			eventMap[type] = command;
		}

		public function getByKey(type:Class):*
		{
			return eventMap[type];
		}
	}
}