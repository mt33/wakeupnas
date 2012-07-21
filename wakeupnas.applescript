set question to display dialog "But it's sleeping! Are you sure you want to wake up the NAS?" buttons {"Yes", "No"} default button 1 with icon caution
set answer to button returned of question

if answer is equal to "Yes" then
	do shell script "/Users/emtee/bin/wakeupnas.py"
end if