module markdown


fn create_url(s string) string {
	mut last_char:=''
	mut result:=''
	for c in s {
		new_char:= match c {
			`a`...`z`,`0`...`9`{c.ascii_str()}
			`A`...`Z` {c.ascii_str().to_lower()}
			` `,`-` {if last_char=='-' {''} else {'-'}}
			`_` {if last_char=='_' {''} else {'_'}}
			`.` {if last_char=='.' {''} else {'.'}}
			else {''}
		}
		result+=new_char
		last_char=new_char
	}
	return result.trim('._-')
}
