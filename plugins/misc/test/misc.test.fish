
gtime -f '%U' fish -c '' 2>&1 | cut -d . -f 2 | read -l exec_time_decimals
test 'fish loads quickly enough'
    $exec_time_decimals -lt 10
end
