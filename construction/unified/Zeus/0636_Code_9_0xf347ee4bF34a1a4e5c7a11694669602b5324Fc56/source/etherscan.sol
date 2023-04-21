contract FunkyGasPattern {
	string public field;

	function SetField(string value) {
		// This check will screw gas estimation! Good, good!
		if (msg.gas < 100000) {
			throw;
		}
		field = value;
	}
}