# Demo script

Demo inside VS - explain VS Community license rules.

Explain how to get the template.

Show dotnet new install or install EF Core Power Tools.

Create new MsBuild.Sdk.SqlProj project in VS.

Explain why I do not just use a standard .sqlproj.

- Cross platform (and VS + VS Code), rules as NuGet packages, databases as NuGet packages

Add new table.

Import using sqlpackage in VS Terminal - import Northwind

Explain what build does - checks integrity and syntax

Break build!

Unbreak build

Open and show .dacpac in 7-zip

Explain use of .dacpac: sqlpackage /Action:Publish

Enable Code Anlysis

Explain rules packages vs built in rules (OSS, versioned, NuGet)

Walk through the violations - groups of rules - some are odd.

Show collected docs,and walk through the categories.

Open docs link for SRD0010!

Ignore SRD0010:

```xml
<CodeAnalysisRules>-SqlServer.Rules.SRD0010</CodeAnalysisRules>
```

Suggested exceptions:

```xml
<CodeAnalysisRules>-SqlServer.Rules.SRD0003;-SqlServer.Rules.SRD0047;-SqlServer.Rules.SRD0046;-SqlServer.Rules.SRD0010;-SqlServer.Rules.SRD0001;-SqlServer.Rules.SRD0063</CodeAnalysisRules>
```

Ignore a rule for a single file:

(TBD, SRN0007)

Create StaticCodeAnalysis.SuppressMessages.xml in root of project

```xml
<?xml version="1.0" encoding="utf-8" ?>
<StaticCodeAnalysis version="2" xmlns="urn:Microsoft.Data.Tools.Schema.StaticCodeAnalysis">
  <SuppressedFile FilePath="Tables\Track.sql">
    <SuppressedRule Category="SqlServer.Rules" RuleId="SRN0007" />
    <SuppressedRule Category="SqlServer.Rules" RuleId="SRD0010" />
  </SuppressedFile>
</StaticCodeAnalysis>
```

Add stored procedure

Open and add:

```sql
WAITFOR DELAY '00:10'
```

Show slide with components! Explain open source vs closed source.

Open sample rule in Visual Studio, and walk through it.

Show code and .csproj

Build it and open resulting .nupkg

From VS terminal:

```bash
dotnet add package SampleRules --source C:\Code\Github\DemoRepos\TsqlAnalysisDemo\sample\bin\Debug\
```

Show updated project file

Build and show rule works.

How about ad hoc single file analysis?

Install SQL Analyzer for terminal.

Run ad hoc analysis with TSqlAnalyzer from menu item, mention plan to improve.

Show Copilot with MCP Server.

Back to slides and CTA!
