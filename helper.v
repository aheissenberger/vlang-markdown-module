module markdown

fn create_url(s string) string {
	mut result := ''
	for c in s.trim_space() {
		result += match c {
			`a`...`z`, `0`...`9` {
				c.ascii_str()
			}
			`A`...`Z` {
				c.ascii_str().to_lower()
			}
			` `, `-` {
				'-'
			}
			`_` {
				'_'
			}
			else {
				if c > 127 { c.ascii_str() } else { '' }
			}
		}
	}
	return result
}
