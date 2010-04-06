package tools.color
{
	/**
	 * Convert individual R,G,B values to a hexidecimal value.
	 */
	public function toRGBComponents(r:uint, g:uint, b:uint):uint
	{
		var hex:uint = 0;
		hex += (r << 16);
		hex += (g << 8);
		hex += (b);
		return hex;
	}
}