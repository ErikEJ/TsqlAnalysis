
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

```bash
cd CnugDemo
```

```bash
code .
```

Show contents in VS Code, and disable Analyis for now

```bash
dotnet new table -n Awesome
```

Show table in VS Code and delete it

Mention `dotnet publish` for dev workflow only!

```bash
sqlpackage /Action:Extract /Properties:ExtractTarget=Flat /SourceConnectionString:"Data Source=.\SQLEXPRESS;Database=Chinook;Trusted_Connection=true;Encrypt=false" /TargetFile:Tables
```

Run and show sample of content in the Tables folder

```bash
dotnet build
```

Explain what build does - checks integrity and syntax

Break build!

Unbreak build

Open and show .dacpac in 7-zip

Explain use of .dacpac: sqlpackage /Action:Publish

Enable Code Anlysis

Explain rules packages vs built in rules (OSS, versioned, NuGet)

```bash
dotnet build
```

Walk through the violations - groups of rules - some are odd.

Open docs for SRD0010

Ignore SRD0010:

```xml
<CodeAnalysisRules>-SqlServer.Rules.SRD0010</CodeAnalysisRules>
```

```xml
<CodeAnalysisRules>-SqlServer.Rules.SRD0003;-SqlServer.Rules.SRD0047;-SqlServer.Rules.SRD0046;-SqlServer.Rules.SRD0010;-SqlServer.Rules.SRD0001;+!SqlServer.Rules*;+!Microsoft.Rules*;+!Smells*;-SqlServer.Rules.SRD0063</CodeAnalysisRules>
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

Show slide with components

Open sample rule in Visual Studio, and walk through it.

Show code and .csproj

Build it and open resulting .nupkg

Show Analyze feature on AdventureWorks

```bash
dotnet add package SampleRules --source C:\Code\Github\DemoRepos\TsqlAnalysisDemo\sample\bin\Debug\
```

Show updated project file

```bash
dotnet build --no-incremental
```

Show that stored proc has rule violations.

Back to slides and CTA!
