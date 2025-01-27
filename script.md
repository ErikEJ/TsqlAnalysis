
# Demo script

Explain requirements: .NET 9 SDK

Everything is xplat, demoing on Terminal with VS Code as file viewer

```bash
dotnet tool install Microsoft.SqlPackage -g
```

Explain what it is (Extract, Publish)

```bash
dotnet new install MSBuild.Sdk.SqlProj.Templates
```

```bash
dotnet new sqlproj -n CnugDemo
```

Show contents in VS Code, and disable Analyis for now and update to 1.2.0

```bash
dotnet new table -n Awesome
```

Show table in VS Code and delete it

```bash
sqlpackage /Action:Extract /Properties:ExtractTarget=Flat /SourceConnectionString:"Data Source=.\SQLEXPRESS;Database=Chinook;Trusted_Connection=true;Encrypt=false" /TargetFile:Tables
```

Run and show sample of content in the Tables folder

```bash
dotnet build
```

Explain what build does - checks integrity and syntax

Show .dacpac in 7-zip and open model.xml

Explain use of .dacpac: sqlpackage /Action:Publish

Enable Code Anlysis

Explain rules packages vs built in rules

```bash
dotnet build
```

Walk through the violations - groups of rules - some are odd.

Ignore SRD0010:

```xml
<CodeAnalysisRules>-SqlServer.Rules.SRD0010</CodeAnalysisRules>
```

```bash
dotnet build --no-incremental
```

Ignore a rule for a single file:

```bash
dotnet build --no-incremental
```

(Track, SRN0007)

Create StaticCodeAnalysis.SuppressMessages.xml in root of project

```xml
<?xml version="1.0" encoding="utf-8" ?>
<StaticCodeAnalysis version="2" xmlns="urn:Microsoft.Data.Tools.Schema.StaticCodeAnalysis">
  <SuppressedFile FilePath="Tables\Track.sql">
  <SuppressedRule Category="SqlServer.Rules" RuleId="SRN0007" />
  </SuppressedFile>
</StaticCodeAnalysis>
```

Add script:

```bash
dotnet new sproc
```

Open and add:

```sql
WAITFOR DELAY '00:10'
```

```bash
dotnet build --no-incremental
```

Open sample rule in Visual Studio, and walk through it.

Show code and .csproj

Show slide with components

Build it and open resulting .nupkg

```bash
dotnet add package SampleRules --source C:\Code\Github\DemoRepos\TsqlAnalysisDemo\sample\bin\Debug\
```

Show updated project file

```bash
dotnet build --no-incremental
```

Show that stored proc has rule violations.

Back to slides and CTA!
