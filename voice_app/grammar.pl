#!/usr/bin/perl

use strict qw(subs vars);

sub print_item
{
	# todo: fix the field name #.
	my $field_name = "FIELD_NAME";


	my $count = shift;
	my $utterance = shift;

	print "<item> $utterance <tag> <![CDATA[  <$field_name $count> ]]> </tag></item>\n";
}

main:
{
	my $count = 30;
	my $word;
	my $utterance;
	while ($count < 301) {
		if ($count < 100) {
			$word = get_tens_word($count);
			$utterance = $word;
			$utterance =~ s/ +/ /g;
			print_item ($count, $utterance);
			#print "$count = \"$utterance\"\n";
		} elsif (($count >= 100) && ($count < 200)){
			$word = get_tens_word($count - 100);

			if (($count >= 110)) {
				# produce "one eighty" format.
				$utterance = "one " . ($word ?" $word":"");
				$utterance =~ s/ +/ /g;
				print_item ($count, $utterance);
				#print "$count = \"$utterance\"\n";
			}

			# produce "a hundred and eighty" format.
			$utterance = "a hundred" . ($word ? " and $word": "");
			$utterance =~ s/ +/ /g;
			print_item ($count, $utterance);
			#print "$count = \"$utterance\"\n";


			# produce "one hundred and eighty" format.
			$utterance = "one hundred" . ($word ?" and $word":"");
			$utterance =~ s/ +/ /g;
			print_item ($count, $utterance);
			#print "$count = \"$utterance\"\n";



		} elsif (($count >= 200) && ($count < 300)){
			$word = get_tens_word($count - 200);
			$utterance = "two hundred".($word ? " and $word" : "");
			$utterance =~ s/ +/ /g;
			print_item ($count, $utterance);
			#print "$count = \"$utterance\"\n";

			# produce "two eighty" format.
			if ($count >= 210) {
				$utterance = "two " . ($word ?" $word":"");
				$utterance =~ s/ +/ /g;
				print_item ($count, $utterance);
				#print "$count = \"$utterance\"\n";
			}
		} else {
			$utterance = "three hundred";
			$utterance =~ s/ +/ /g;
			print_item($count, $utterance);
			#print "$count = \"$utterance\"\n";
		}
		$count++;
	}
}



sub get_tens_word
{
	my $count = shift;
	my $word;
	if ("$count" =~ m/^0$/) {
		return $word;
	}
	if ("$count" =~ m/^1$/) {
		return $word = " one";
	}
	if ("$count" =~ m/^2$/) {
		return $word = " two";
	}
	if ("$count" =~ m/^3$/) {
		return $word = " three";
	}
	if ("$count" =~ m/^4$/) {
		return $word = " four";
	}
	if ("$count" =~ m/^5$/) {
		return $word = " five";
	}
	if ("$count" =~ m/^6$/) {
		return $word = " six";
	}
	if ("$count" =~ m/^7$/) {
		return $word = " seven";
	}
	if ("$count" =~ m/^8$/) {
		return $word = " eight";
	}
	if ("$count" =~ m/^9$/) {
		return $word = " nine";
	}
	if ("$count" =~ m/^10$/) {
		return $word = "ten";
	}
	if ("$count" =~ m/^11$/) {
		return $word = " eleven";
	}
	if ("$count" =~ m/^12$/) {
		return $word = " twelve";
	}
	if ("$count" =~ m/^13$/) {
		return $word = " thirteen";
	}
	if ("$count" =~ m/^14$/) {
		return $word = " fourteen";
	}
	if ("$count" =~ m/^15$/) {
		return $word = " fifteen";
	}
	if ("$count" =~ m/^16$/) {
		return $word = " sixteen";
	}
	if ("$count" =~ m/^17$/) {
		return $word = " seventeen";
	}
	if ("$count" =~ m/^18$/) {
		return $word = " eighteen";
	}
	if ("$count" =~ m/^19$/) {
		return $word = " nineteen";
	}
	if ("$count" =~ m#2.#) {
		$word = "twenty";
	}
	if ("$count" =~ m#3.#) {
		$word = "thirty";
	}
	if ("$count" =~ m#4.#) {
		$word = "forty";
	}
	if ("$count" =~ m#5.#) {
		$word = "fifty";
	}
	if ("$count" =~ m#6.#) {
		$word = "sixty";
	}
	if ("$count" =~ m#7.#) {
		$word = "seventy";
	}
	if ("$count" =~ m#8.#) {
		$word = "eighty";
	}
	if ("$count" =~ m#9.#) {
		$word = "ninety";
	}
	if ("$count" =~ m#.0#) {
	}
	if ("$count" =~ m#.1#) {
		$word .= " one";
	}
	if ("$count" =~ m#.2#) {
		$word .= " two";
	}
	if ("$count" =~ m#.3#) {
		$word .= " three";
	}
	if ("$count" =~ m#.4#) {
		$word .= " four";
	}
	if ("$count" =~ m#.5#) {
		$word .= " five";
	}
	if ("$count" =~ m#.6#) {
		$word .= " six";
	}
	if ("$count" =~ m#.7#) {
		$word .= " seven";
	}
	if ("$count" =~ m#.8#) {
		$word .= " eight";
	}
	if ("$count" =~ m#.9#) {
		$word .= " nine";
	}
	return $word;
}
