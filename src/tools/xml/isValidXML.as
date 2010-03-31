package tools.xml
{
	/**
	 * Checks whether the specified string is valid and well formed XML.
	 *
	 * @param data The string that is being checked to see if it is valid XML.
	 *
	 * @return A Boolean value indicating whether the specified string is
	 * valid XML.
	 *
	 * @langversion ActionScript 3.0
	 * @playerversion Flash 9.0
	 */
	public function isValidXML(data:String):Boolean
	{
		var xml:XML;

		try
		{
			xml = new XML(data);
		}
		catch(e:Error)
		{
			return false;
		}

		if (xml.nodeKind() != constants.ELEMENT)
		{
			return false;
		}

		return true;
	}
}