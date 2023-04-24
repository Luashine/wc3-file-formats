### ACE Parameter Count

*ACE: Action-Condition-Event like in WE*

Check out `UI\TriggerData.txt` from the game data.
This is a regular .ini file.
It is simple to parse, in our case you just need to find out the number of parameters:

- If the key starts with `_`, then it is ignored.
- Number of parameters is the number of key values separated by commas
- The parameter is ignored if:
	1. Empty
	2. Number
	3. `nothing`
- Keys cannot be overridden (redefined)

**Examples:**

- `DoNothing` will have 0 parameters
- `PolledWait` will have 1 parameter
- `GetSpellAbilityId` will have 1 parameter


**C++ Code Example:**

*Note:* For the "TriggerCalls" section, the number of parameters of all keys is decremented

```cpp
class CFuncParam
{
private:
	map<string, size_t> funcParams;
public:
	static const size_t ERR = (size_t)-1;
	size_t operator[](string s)
	{
		if( funcParams.find(s) == funcParams.end() )
			return ERR;
		else
			return funcParams[s];
	}

	CFuncParam(ifstream& file)
	{
		string line;
		string section;
		while(getline(file, line))
		{
			if( line[0] == '/' || line.empty() || line[0] == ';' )
				continue;
			if( line[0] == '[' )
				section = line.substr(1, line.find(']')-1);
			else
			{
				size_t find = line.find('=');
				string key = line.substr(0, find);
				istringstream values( (line.substr(find+1)) );

				if( key[0] == '_' ) continue;

				int i = 0;
				string value;
				while( getline(values, value, ',') )
				{
					if( !value.empty() && !(value[0] >= '0' && value[0] <= '9') && value != "nothing" )
						i++;
				}

				if( i > 0 && section == "TriggerCalls" )
					i--;
				if( funcParams.find(key) == funcParams.end() )
					funcParams[key] = i;
			}
		}
	}
};
```
