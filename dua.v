// contoh soal wawancara teknis: FizzBuzz
fn main() {
	for i in 1 .. 51 {
		mut text := ''
		if i % 3 == 0 { text += 'Fizz' }
		if i % 5 == 0 { text += 'Buzz' }
		if text == '' { text += '-' } // bukan FizzBuzz
		println{'$i : $text'}
	}
}