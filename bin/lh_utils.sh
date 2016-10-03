# Colors

ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"

# Disable colors for Windows
case "$(uname -s)" in
    CYGWIN*|MINGW*|MSYS*)
		ESC_SEQ=""
		COL_RESET=""
		COL_RED=""
		COL_GREEN=""
		COL_YELLOW=""
		COL_BLUE=""
		;;
esac

# Logs

function log ()
{
    case $1 in
        ERROR)  echo "${COL_RED}ERROR: $2${COL_RESET}"
                ;;
        WARN)   echo "${COL_YELLOW}WARN : $2${COL_RESET}"
                ;;
        INFO)   echo "${COL_GREEN}INFO : $2${COL_RESET}"
                ;;
        TRACE)  echo "${COL_BLUE}TRACE: $2${COL_RESET}"
                ;;
        START)  log TRACE "Start: $0"
                log TRACE "Cmd  : $2"
                ;;
        *)      
                echo $*
                ;;
    esac
}