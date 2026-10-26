@echo off
echo Updating CIO Dashboard...
echo.

REM Convert Excel to JSON
python -c "import pandas as pd; import json; df = pd.read_excel('ISG CIO Software Approvals Summary.xlsx'); df.to_json('cio_dashboard_data.json', orient='records', indent=2); print('Data converted to JSON')"

echo.
echo Committing changes...
git add cio_dashboard_data.json
git commit -m "Update dashboard data"
git push

echo.
echo Dashboard updated successfully!
echo GitHub Pages will update in 1-2 minutes.
pause
