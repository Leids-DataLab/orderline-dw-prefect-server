# Deze functie zet een environment variabele 
# en print een bericht daarover in de console (host).
function Set-EnvVarVerbose {
    param(
        [string]$Name,
        [string]$Value
    )
    # Stel de omgevingsvariabele in
    Set-Item -Path Env:$Name -Value $Value

    # Geef een bevestigingsbericht met de details
    Write-Host "Enviroment Variable '$Name' = $Value"
}

#
# Zet de environment variabelen voor de prefect server.
#
# De database die de prefect server gebruikt.
Set-EnvVarVerbose -Name "PREFECT_API_DATABASE_CONNECTION_URL" -Value "sqlite+aiosqlite:///C:/Data/Prefect/orderline-dw-prefect-server/prefect.db"
# De port waarop de prefect server luistert.
Set-EnvVarVerbose -Name "PREFECT_SERVER_API_PORT" -Value "4545"

#
# Start de poetry shell.
#
poetry shell
