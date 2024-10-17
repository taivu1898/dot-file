Set-Alias nvim neovide

Import-Module -Name Terminal-Icons

Invoke-Expression (&starship init powershell)

function touch {
    param(
        [string]$path
    )
    
    if (Test-Path $path) {
        (Get-Item $path).LastWriteTime = Get-Date
    } else {
        New-Item -ItemType File -Path $path
    }
}

function RunCode {
    clang++ .\main.cpp -o main.exe

    if (Test-Path .\main.exe) {
        Start-Process -FilePath ".\main.exe" -ArgumentList "< input.txt"
    } else {
        Write-Host "Biên dịch thất bại, không tìm thấy tệp thực thi."
    }
}
