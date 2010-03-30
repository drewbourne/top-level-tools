package tools.clazz
{
	/**
		 * Targeted reflection describing an object's methods.
		 *
		 * @param	value			The object or class to introspect.
		 * @param	metadataType	Optional filter to return only those
		 * 							method descritions containing the
		 * 							specified metadata.
		 *
		 * @return					A list of XML method descriptions.
		 */
		public function describeMethods(value:Object, metadataType:String = null):XMLList
		{
			var methods:XMLList = describeType(value).factory.method;

			return (metadataType == null) ? methods : methods.(child("metadata").(@name == metadataType).length() > 0);
		}
}