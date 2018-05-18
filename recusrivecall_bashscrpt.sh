#!/user/bin/env
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
script_name=$(basename "$0")
path_to_script=$script_dir/$script_name
 
new_indent="$indent    "
new_start_dir="$start_dir/$directoryname"
$("$path_to_script" "$new_start_dir" "$new_indent" "$outfile")
