using Microsoft.SqlServer.TransactSql.ScriptDom;
using System.Collections.Generic;

namespace SampleRules
{
    internal class WaitForDelayVisitor : TSqlConcreteFragmentVisitor
    {
        public IList<WaitForStatement> WaitForDelayStatements { get; private set; }

        public WaitForDelayVisitor()
        {
            WaitForDelayStatements = new List<WaitForStatement>();
        }

        public override void ExplicitVisit(WaitForStatement node)
        {
            // We are only interested in WAITFOR DELAY occurrences  
            if (node.WaitForOption == WaitForOption.Delay)
                WaitForDelayStatements.Add(node);
        }
    }
}
