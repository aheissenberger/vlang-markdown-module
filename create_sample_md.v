module main
struct Testcase {
	input string
	expected string
}

fn main(){






	test_cases := [
		Testcase{"abc", "abc"},
		Testcase{"Abce", "abce"},
        Testcase{"a-c" "a-c"},
        Testcase{"a d", "a-d"},
        Testcase{"a_c", "a_c"},
        Testcase{"ac", "ac"},
        Testcase{"a,d", "ad"},
        Testcase{"a--", "a--"}, // Not Pandoc-equivalent: a--
        Testcase{"b__", "b__"}, // Not Pandoc-equivalent: a__
        Testcase{"d..", "d"}, // Not Pandoc-equivalent: a..
        Testcase{"e??", "e"},
        Testcase{"f  ", "f"},
        Testcase{"a--d", "a--d"},
        Testcase{"a__d", "a__d"},
        Testcase{"a??e", "ae"},
        Testcase{"a  e", "a--e"},
        Testcase{"a..g", "ag"},
        Testcase{"-bc", "-bc"},
        Testcase{"_bc", "_bc"},
        Testcase{" ec", "ec"},
        Testcase{"?bc", "bc"},
        Testcase{".bc", "bc"},
        Testcase{"b-.-", "b--"}, // Not Pandoc equivalent: a-.-
		Testcase{"a<>+!äz", "aäz"},
		Testcase{"bær", "bær"},
        Testcase{"bør", "bør"},
        Testcase{"bΘr", "bΘr"},
        Testcase{"四五", "四五"},
		 Testcase{"bár", "bár"},
         Testcase{"àrrivé", "àrrivé"},
	]
	for testcase in test_cases{
		println('[${testcase.input}](#${testcase.expected})')
		println('# $testcase.input ')
	}
}
