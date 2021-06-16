module main
struct Testcase {
	input string
	expected string
}

fn main(){






	test_cases := [
		Testcase{"abc", "abc"},
		Testcase{"Abc", "abc"},
        Testcase{"a-c" "a-c"},
        Testcase{"a c", "a-c"},
        Testcase{"a_c", "a_c"},
        Testcase{"a.c", "a.c"},
        Testcase{"a,c", "ac"},
        Testcase{"a--", "a"}, // Not Pandoc-equivalent: a--
        Testcase{"a__", "a"}, // Not Pandoc-equivalent: a__
        Testcase{"a..", "a"}, // Not Pandoc-equivalent: a..
        Testcase{"a??", "a"},
        Testcase{"a  ", "a"},
        Testcase{"a--d", "a-d"},
        Testcase{"a__d", "a_d"},
        Testcase{"a??d", "ad"},
        Testcase{"a  d", "a-d"},
        Testcase{"a..d", "a.d"},
        Testcase{"-bc", "bc"},
        Testcase{"_bc", "bc"},
        Testcase{" bc", "bc"},
        Testcase{"?bc", "bc"},
        Testcase{".bc", "bc"},
        Testcase{"a-.-", "a"}, // Not Pandoc equivalent: a-.-
		Testcase{"bær", "br"},
        Testcase{"bør", "br"},
        Testcase{"bΘr", "br"},
        Testcase{"四五", ""},
		// Testcase{"bár", "bar"},
        // Testcase{"àrrivé", "arrive"},
	]
	for testcase in test_cases{
		println('[${testcase.input}](${testcase.expected})')
		println('# $testcase.input ')
	}
}
