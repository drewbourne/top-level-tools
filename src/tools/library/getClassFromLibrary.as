package tools.library
{
	/**
	 *   Get a class from the clip's library
	 *   @param className Name of the class to get
	 *   @return The class with the given name or null if it cannot be found
	 *   @author Jackson Dunstan
	 */
	public function getClassFromLibrary(className:String):Class
	{
		try
		{
			return Class(this.loaderInfo.applicationDomain.getDefinition(className));
		}
		catch (refErr:ReferenceError)
		{
			return null;
		}
		catch (typeErr:TypeError)
		{
			return null;
		}

		return null;
	}
}