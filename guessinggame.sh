#!/usr/bin/env bash

main() {
    declare number_of_files=""; number_of_files="$(find . -maxdepth 1 -type f | wc -l)"
    declare number_of_guessed_files="-1"

    until [ "${number_of_files}" -eq "${number_of_guessed_files}" ]; do
        read -p "How many files do you think are in the current directory? " number_of_guessed_files

        if [ "${number_of_files}" != "${number_of_guessed_files}" ]; then
            hint="Your guess was too low."
            if [ "${number_of_guessed_files}" -gt "${number_of_files}" ]; then
                hint="Your guess was too high."
            fi
            echo "WRONG! Please try again! ${hint}"
        fi
    done

	if ["${number_of_files}" = "${number_of_guessed_files}" ];
	then 
		 echo "Correct! There is/are ${number_of_guessed_files} file(s) in the current directory!"
     fi
}
main
    
