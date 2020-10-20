class Utils{
	String _displayed = "0";
	double _cache1;
	double _cache2;
	String _operation;

	static const operations = const["-", "+", "/", "x", "="];


	void applyCommand(String command){
		switch(command){
			case ",":{
				if (_displayed.contains(","))
					return;
				else
					_displayed += command;
			}
			break;

			case "Clear":{
				wipeCache();
			}
			break;

			case "<-":{
				if (_displayed == "0")
					return;

				_displayed = _displayed.length != 1 ? _displayed.substring(0, _displayed.length - 1): "0";
			}
			break;
			default:{
				if (operations.contains(command)){
					if (_cache1 == null){
						_cache1 = double.parse(_displayed);
						_operation = command;
					}else{
						_cache2 = double.parse(_displayed);
						_cache1 = getResult();
						_cache2 = null;
						if (_cache1.isInfinite){
							_cache1 = null;
							return;
						}
						_displayed = _cache1.toString();
					}
					return;
				}
				if ((_displayed == "0") || (_operation.isNotEmpty)){
					_displayed = "";
				}

				_displayed += command;
			}
		}
	}
	void wipeCache(){
		_operation = "";
		_cache1 = null;
		_cache2 = null;
		_displayed = "0";
	}

	double getResult(){
		switch (_operation) {
			case "-" :
				return _cache1 - _cache2;
			break;
			case "+" :
				return _cache1 + _cache2;
			break;
			case "/" :{
				if (_cache2 == 0){
					_displayed = "ñ da pra dividir por zero porra";
				}
				return _cache1 / _cache2;
			}

				
			break;
			case "x" :
				return _cache1 * _cache2;
			break;
			default: return 0;
		}
	}

	String get value{
		return _displayed;
	}
}