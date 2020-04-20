@echo off
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (set "DEL=%%a")
:MAIN
mode con: cols=40 lines=10
CLS
echo ##############################
call :colorEcho a "    Lexington Traffic Cams"
echo.
echo ##############################
ECHO.
ECHO 01 - Pick a Route
ECHO 02 - List All Cameras
ECHO 03 - Exit						
ECHO.
set /p OPTION="Please Enter Option Number: "
IF %OPTION%==01 goto ROUTES
IF %OPTION%==02 goto ALLCAMERAS
IF %OPTION%==03 exit
goto MAIN

:ROUTES
mode con: cols=40 lines=10
CLS
echo ##############################
call :colorEcho a "    Lexington Traffic Cams"
echo.
echo ##############################
ECHO.
ECHO 01 - Broadway
ECHO 02 - Cooper
ECHO 03 - Harrodsburg
ECHO 04 - High
ECHO 05 - Leestown
ECHO 06 - Lime
ECHO 07 - Limestone
ECHO 08 - Main
ECHO 09 - MOW
ECHO 10 - New Circle
ECHO 11 - Newtown
ECHO 12 - Nicholasville
ECHO 13 - Richmond
ECHO 14 - Tates Creek
ECHO 15 - Versailles
ECHO 16 - Winchester					
ECHO.
set /p OPTION="Please Enter Option Number: "
IF %OPTION%==01 goto ROUTES
IF %OPTION%==02 goto ALLCAMERAS
IF %OPTION%==03 exit
IF %OPTION%==04 goto ROUTES
IF %OPTION%==05 goto ALLCAMERAS
IF %OPTION%==06 exit
IF %OPTION%==07 goto ROUTES
IF %OPTION%==08 goto ALLCAMERAS
IF %OPTION%==09 exit
IF %OPTION%==10 goto ROUTES
IF %OPTION%==11 goto ALLCAMERAS
IF %OPTION%==12 exit
IF %OPTION%==13 goto ROUTES
IF %OPTION%==14 goto ALLCAMERAS
IF %OPTION%==15 exit
IF %OPTION%==16 exit
goto MAIN

:ALLCAMERAS
mode con: cols=155 lines=28
CLS
echo								##############################
call :colorEcho a "                                                            Lexington Traffic Cams"
echo.
echo								##############################
ECHO.
ECHO 01 - 3rd/Midland			   23 - Limestone/Maxwell	44 - New Circle/Alumni (Outer)	 	 65 - Nicholasville/Rosemont
ECHO 02 - Alumni/Yellowstone		   	   24 - Limestone/Short		45 - New Circle/Boardwalk		 66 - Nicholasville/Southland
ECHO 03 - Broadway/Haggard		   	   25 - Limestone/UK PED	46 - New Circle/Broadway		 67 - Nicholasville/Southpoint
ECHO 04 - Broadway/Loudon		   	   26 - Limestone/Virginia	47 - New Circle/Bryan Station	 	 68 - Richmond Rd./Jacobson Park
ECHO 05 - Broadway/Red Mile		   	   27 - Main/Broadway		48 - New Circle/G-town (Outer)	 	 69 - Richmond/Eagle Creek
ECHO 06 - Cooper/Sports Center		   28 - Main/Limestone		49 - New Circle/Leestown		 70 - Richmond/Lakeshore
ECHO 07 - Cooper/University		   	   29 - Main/Newtown		50 - New Circle/Liberty		 	 71 - Richmond/Mt. Tabor
ECHO 08 - Euclid/High			   30 - MOW/Alumni		51 - New Circle/Meadow Lane		 72 - Rose/Euclid
ECHO 09 - G-town/Citation Blvd.		   31 - MOW/Armstrong Mill	52 - New Circle/Nicholasville (Outer)    73 - Sir Barton/Star Shoot
ECHO 10 - Harrodsburg/Corporate		   32 - MOW/Beaver Creek	53 - New Circle/Tates Creek (Outer)	 74 - Tates Creek/Albany
ECHO 11 - Harrodsburg/Lane Allen	   	   33 - MOW/Crosby		54 - New Circle/Winchester		 75 - Tates Creek/Alumni
ECHO 12 - Harrodsburg/Pasadena		   34 - MOW/Harrodsburg		55 - New Circle/Woodhill Dr.		 76 - Tates Creek/Cooper
ECHO 13 - Harrodsburg/Waller-Mason Headley 	   35 - MOW/Helmsdale		56 - Newtown/Citation		 	 77 - Tates Creek/Redding (Armstrong Mill)
ECHO 14 - High/Broadway			   36 - MOW/Maple Leaf		57 - Newtown/I75			 78 - Versailles/Alexandria
ECHO 15 - High/Oliver Lewis Way		   37 - MOW/Nicholasville Rd.	58 - Newtown/Marriot			 79 - Versailles/Forbes-Red Mile
ECHO 16 - I-75/I-64 Southern Split	   	   38 - MOW/Palumbo		59 - Newtown/Newtown Ct.		 80 - Versailles/Mason-Headley
ECHO 17 - Leestown/Citation		   	   39 - MOW/Pimlico Parkway	60 - Nicholasville/Alumni		 81 - Vine/Quality
ECHO 18 - Leestown/Forbes		   	   40 - MOW/Richmond		61 - Nicholasville/Cooper-Waller	 82 - Winchester/Fortune
ECHO 19 - Leestown/Trade Center-Taylor	   41 - MOW/Sir Barton		62 - Nicholasville/Pasadena		 83 - Winchester/Loudon
ECHO 20 - Lime/University		   	   42 - MOW/Tates Creek		63 - Nicholasville/Reynolds		 84 - Winchester/Sir Barton
ECHO 21 - Lime/Vine			   	   43 - MOW/Todds		64 - Nicholasville/Rojay		 85 - Woodland/Euclid
ECHO 22 - Limestone/Euclid						
ECHO.
set /p CAM="Please Enter Option Number: "
IF %CAM%==01 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-011.stream/playlist.m3u8" -window_title "3rd/Midland" -alwaysontop -fflags nobuffer
IF %CAM%==02 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-013.stream/playlist.m3u8" -window_title "Alumni/Yellowstone" -alwaysontop -fflags nobuffer
IF %CAM%==03 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-075.stream/playlist.m3u8" -window_title "Broadway/Haggard" -alwaysontop -fflags nobuffer
IF %CAM%==04 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-055.stream/playlist.m3u8" -window_title "Broadway/Loudon" -alwaysontop -fflags nobuffer
IF %CAM%==05 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-057.stream/playlist.m3u8" -window_title "Broadway/Red Mile" -alwaysontop -fflags nobuffer
IF %CAM%==06 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-048.stream/playlist.m3u8" -window_title "Cooper/Sports Center" -alwaysontop -fflags nobuffer
IF %CAM%==07 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-047.stream/playlist.m3u8" -window_title "Cooper/University" -alwaysontop -fflags nobuffer
IF %CAM%==08 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-035.stream/playlist.m3u8" -window_title "Euclid/High" -alwaysontop -fflags nobuffer
IF %CAM%==09 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-006.stream/playlist.m3u8" -window_title "G-town/Citation Blvd." -alwaysontop -fflags nobuffer
IF %CAM%==10 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-076.stream/playlist.m3u8" -window_title "Harrodsburg/Corporate" -alwaysontop -fflags nobuffer
IF %CAM%==11 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-059.stream/playlist.m3u8" -window_title "Harrodsburg/Lane Allen" -alwaysontop -fflags nobuffer
IF %CAM%==12 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-060.stream/playlist.m3u8" -window_title "Harrodsburg/Pasadena" -alwaysontop -fflags nobuffer
IF %CAM%==13 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-058.stream/playlist.m3u8" -window_title "Harrodsburg/Waller-Mason Headley" -alwaysontop -fflags nobuffer
IF %CAM%==14 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-077.stream/playlist.m3u8" -window_title "High/Broadway" -alwaysontop -fflags nobuffer
IF %CAM%==15 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-061.stream/playlist.m3u8" -window_title "High/Oliver Lewis Way" -alwaysontop -fflags nobuffer
IF %CAM%==16 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-010.stream/playlist.m3u8" -window_title "I-75/I-64 Southern Split" -alwaysontop -fflags nobuffer
IF %CAM%==17 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-079.stream/playlist.m3u8" -window_title "Leestown/Citation" -alwaysontop -fflags nobuffer
IF %CAM%==18 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-065.stream/playlist.m3u8" -window_title "Leestown/Forbes" -alwaysontop -fflags nobuffer
IF %CAM%==19 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-067.stream/playlist.m3u8" -window_title "Leestown/Trade Center-Taylor" -alwaysontop -fflags nobuffer
IF %CAM%==20 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-051.stream/playlist.m3u8" -window_title "Lime/University" -alwaysontop -fflags nobuffer
IF %CAM%==21 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-084.stream/playlist.m3u8" -window_title "Lime/Vine" -alwaysontop -fflags nobuffer
IF %CAM%==22 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-054.stream/playlist.m3u8" -window_title "Limestone/Euclid" -alwaysontop -fflags nobuffer
IF %CAM%==23 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-007.stream/playlist.m3u8" -window_title "Limestone/Maxwell" -alwaysontop -fflags nobuffer
IF %CAM%==24 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-080.stream/playlist.m3u8" -window_title "Limestone/Short" -alwaysontop -fflags nobuffer
IF %CAM%==25 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-049.stream/playlist.m3u8" -window_title "Limestone/UK PED" -alwaysontop -fflags nobuffer
IF %CAM%==26 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-050.stream/playlist.m3u8" -window_title "Limestone/Virginia" -alwaysontop -fflags nobuffer
IF %CAM%==27 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-008.stream/playlist.m3u8" -window_title "Main/Broadway" -alwaysontop -fflags nobuffer
IF %CAM%==28 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-028.stream/playlist.m3u8" -window_title "Main/Limestone" -alwaysontop -fflags nobuffer
IF %CAM%==29 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-064.stream/playlist.m3u8" -window_title "Main/Newtown" -alwaysontop -fflags nobuffer
IF %CAM%==30 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-024.stream/playlist.m3u8" -window_title "MOW/Alumni" -alwaysontop -fflags nobuffer
IF %CAM%==31 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-029.stream/playlist.m3u8" -window_title "MOW/Armstrong Mill" -alwaysontop -fflags nobuffer
IF %CAM%==32 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-022.stream/playlist.m3u8" -window_title "MOW/Beaver Creek" -alwaysontop -fflags nobuffer
IF %CAM%==33 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-030.stream/playlist.m3u8" -window_title "MOW/Crosby" -alwaysontop -fflags nobuffer
IF %CAM%==34 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-056.stream/playlist.m3u8" -window_title "MOW/Harrodsburg" -alwaysontop -fflags nobuffer
IF %CAM%==35 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-018.stream/playlist.m3u8" -window_title "MOW/Helmsdale" -alwaysontop -fflags nobuffer
IF %CAM%==36 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-020.stream/playlist.m3u8" -window_title "MOW/Maple Leaf" -alwaysontop -fflags nobuffer
IF %CAM%==37 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-034.stream/playlist.m3u8" -window_title "MOW/Nicholasville Rd." -alwaysontop -fflags nobuffer
IF %CAM%==38 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-021.stream/playlist.m3u8" -window_title "MOW/Palumbo" -alwaysontop -fflags nobuffer
IF %CAM%==39 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-015.stream/playlist.m3u8" -window_title "MOW/Pimlico Parkway" -alwaysontop -fflags nobuffer
IF %CAM%==40 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-023.stream/playlist.m3u8" -window_title "MOW/Richmond" -alwaysontop -fflags nobuffer
IF %CAM%==41 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-016.stream/playlist.m3u8" -window_title "MOW/Sir Barton" -alwaysontop -fflags nobuffer
IF %CAM%==42 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-039.stream/playlist.m3u8" -window_title "MOW/Tates Creek" -alwaysontop -fflags nobuffer
IF %CAM%==43 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-019.stream/playlist.m3u8" -window_title "MOW/Todds" -alwaysontop -fflags nobuffer
IF %CAM%==44 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-014.stream/playlist.m3u8" -window_title "New Circle/Alumni (Outer)" -alwaysontop -fflags nobuffer
IF %CAM%==45 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-073.stream/playlist.m3u8" -window_title "New Circle/Boardwalk" -alwaysontop -fflags nobuffer
IF %CAM%==46 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-074.stream/playlist.m3u8" -window_title "New Circle/Broadway" -alwaysontop -fflags nobuffer
IF %CAM%==47 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-071.stream/playlist.m3u8" -window_title "New Circle/Bryan Station" -alwaysontop -fflags nobuffer
IF %CAM%==48 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-005.stream/playlist.m3u8" -window_title "New Circle/G-town (Outer)" -alwaysontop -fflags nobuffer
IF %CAM%==49 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-066.stream/playlist.m3u8" -window_title "New Circle/Leestown" -alwaysontop -fflags nobuffer
IF %CAM%==50 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-070.stream/playlist.m3u8" -window_title "New Circle/Liberty" -alwaysontop -fflags nobuffer
IF %CAM%==51 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-072.stream/playlist.m3u8" -window_title "New Circle/Meadow Lane" -alwaysontop -fflags nobuffer
IF %CAM%==52 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-043.stream/playlist.m3u8" -window_title "New Circle/Nicholasville (Outer)" -alwaysontop -fflags nobuffer
IF %CAM%==53 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-037.stream/playlist.m3u8" -window_title "New Circle/Tates Creek (Outer)" -alwaysontop -fflags nobuffer
IF %CAM%==54 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-069.stream/playlist.m3u8" -window_title "New Circle/Winchester" -alwaysontop -fflags nobuffer
IF %CAM%==55 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-081.stream/playlist.m3u8" -window_title "New Circle/Woodhill Dr." -alwaysontop -fflags nobuffer
IF %CAM%==56 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-002.stream/playlist.m3u8" -window_title "Newtown/Citation" -alwaysontop -fflags nobuffer
IF %CAM%==57 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-004.stream/playlist.m3u8" -window_title "Newtown/I75" -alwaysontop -fflags nobuffer
IF %CAM%==58 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-003.stream/playlist.m3u8" -window_title "Newtown/Marriot" -alwaysontop -fflags nobuffer
IF %CAM%==59 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-001.stream/playlist.m3u8" -window_title "Newtown/Newtown Ct." -alwaysontop -fflags nobuffer
IF %CAM%==60 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-053.stream/playlist.m3u8" -window_title "Nicholasville/Alumni" -alwaysontop -fflags nobuffer
IF %CAM%==61 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-052.stream/playlist.m3u8" -window_title "Nicholasville/Cooper-Waller" -alwaysontop -fflags nobuffer
IF %CAM%==62 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-042.stream/playlist.m3u8" -window_title "Nicholasville/Pasadena" -alwaysontop -fflags nobuffer
IF %CAM%==63 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-044.stream/playlist.m3u8" -window_title "Nicholasville/Reynolds" -alwaysontop -fflags nobuffer
IF %CAM%==64 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-045.stream/playlist.m3u8" -window_title "Nicholasville/Rojay" -alwaysontop -fflags nobuffer
IF %CAM%==65 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-040.stream/playlist.m3u8" -window_title "Nicholasville/Rosemont" -alwaysontop -fflags nobuffer
IF %CAM%==66 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-041.stream/playlist.m3u8" -window_title "Nicholasville/Southland" -alwaysontop -fflags nobuffer
IF %CAM%==67 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-046.stream/playlist.m3u8" -window_title "Nicholasville/Southpoint" -alwaysontop -fflags nobuffer
IF %CAM%==68 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-085.stream/playlist.m3u8" -window_title "Richmond Rd./Jacobson Park" -alwaysontop -fflags nobuffer
IF %CAM%==69 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-026.stream/playlist.m3u8" -window_title "Richmond/Eagle Creek" -alwaysontop -fflags nobuffer
IF %CAM%==70 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-027.stream/playlist.m3u8" -window_title "Richmond/Lakeshore" -alwaysontop -fflags nobuffer
IF %CAM%==71 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-025.stream/playlist.m3u8" -window_title "Richmond/Mt. Tabor" -alwaysontop -fflags nobuffer
IF %CAM%==72 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-038.stream/playlist.m3u8" -window_title "Rose/Euclid" -alwaysontop -fflags nobuffer
IF %CAM%==73 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-017.stream/playlist.m3u8" -window_title "Sir Barton/Star Shoot" -alwaysontop -fflags nobuffer
IF %CAM%==74 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-033.stream/playlist.m3u8" -window_title "Tates Creek/Albany" -alwaysontop -fflags nobuffer
IF %CAM%==75 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-032.stream/playlist.m3u8" -window_title "Tates Creek/Alumni" -alwaysontop -fflags nobuffer
IF %CAM%==76 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-031.stream/playlist.m3u8" -window_title "Tates Creek/Cooper" -alwaysontop -fflags nobuffer
IF %CAM%==77 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-082.stream/playlist.m3u8" -window_title "Tates Creek/Redding (Armstrong Mill)" -alwaysontop -fflags nobuffer
IF %CAM%==78 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-063.stream/playlist.m3u8" -window_title "Versailles/Alexandria" -alwaysontop -fflags nobuffer
IF %CAM%==79 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-068.stream/playlist.m3u8" -window_title "Versailles/Forbes-Red Mile" -alwaysontop -fflags nobuffer
IF %CAM%==80 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-062.stream/playlist.m3u8" -window_title "Versailles/Mason-Headley" -alwaysontop -fflags nobuffer
IF %CAM%==81 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-083.stream/playlist.m3u8" -window_title "Vine/Quality" -alwaysontop -fflags nobuffer
IF %CAM%==82 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-078.stream/playlist.m3u8" -window_title "Winchester/Fortune" -alwaysontop -fflags nobuffer
IF %CAM%==83 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-012.stream/playlist.m3u8" -window_title "Winchester/Loudon" -alwaysontop -fflags nobuffer
IF %CAM%==84 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-009.stream/playlist.m3u8" -window_title "Winchester/Sir Barton" -alwaysontop -fflags nobuffer
IF %CAM%==85 start "" "ffplay.exe" -i "https://5723acd20ffa9.streamlock.net:1935/lexington-live/lex-cam-036.stream/playlist.m3u8" -window_title "Woodland/Euclid" -alwaysontop -fflags nobuffer
goto MAIN
exit

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i