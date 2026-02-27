# Book Genesis — Installer for Windows (PowerShell)
# Copies all 15 skills to ~/.claude/skills/

$ErrorActionPreference = "Stop"

$RepoDir = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $RepoDir) { $RepoDir = Get-Location }
$SkillsDir = Join-Path $RepoDir "skills"
$TargetDir = Join-Path $env:USERPROFILE ".claude\skills"

Write-Host ""
Write-Host "  ____              _      ____                      _     " -ForegroundColor Blue
Write-Host " | __ )  ___   ___ | | __ / ___| ___ _ __   ___  ___(_)___ " -ForegroundColor Blue
Write-Host " |  _ \ / _ \ / _ \| |/ /| |  _ / _ \ '_ \ / _ \/ __| / __|" -ForegroundColor Blue
Write-Host " | |_) | (_) | (_) |   < | |_| |  __/ | | |  __/\__ \ \__ \" -ForegroundColor Blue
Write-Host " |____/ \___/ \___/|_|\_\ \____|\___| |_| |_|\___||___/_|___/" -ForegroundColor Blue
Write-Host ""
Write-Host "Installing 15 skills to $TargetDir" -ForegroundColor Yellow
Write-Host ""

# Check that skills directory exists
if (-not (Test-Path $SkillsDir)) {
    Write-Host "Error: skills\ directory not found. Run this script from the book-genesis repository root." -ForegroundColor Red
    exit 1
}

# Create target directory
if (-not (Test-Path $TargetDir)) {
    New-Item -ItemType Directory -Path $TargetDir -Force | Out-Null
}

# Copy each skill
$count = 0
Get-ChildItem -Path $SkillsDir -Directory | ForEach-Object {
    $skillName = $_.Name
    $destDir = Join-Path $TargetDir $skillName
    if (-not (Test-Path $destDir)) {
        New-Item -ItemType Directory -Path $destDir -Force | Out-Null
    }
    Copy-Item (Join-Path $_.FullName "SKILL.md") (Join-Path $destDir "SKILL.md") -Force
    Write-Host "  + $skillName" -ForegroundColor Green
    $count++
}

Write-Host ""
Write-Host "Done! $count skills installed to $TargetDir" -ForegroundColor Green
Write-Host ""
Write-Host "Open Claude Code and type /book-genesis to start writing."
Write-Host ""
