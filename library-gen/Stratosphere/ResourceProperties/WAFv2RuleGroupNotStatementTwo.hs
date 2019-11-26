{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-notstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupNotStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThree

-- | Full data type definition for WAFv2RuleGroupNotStatementTwo. See
-- 'waFv2RuleGroupNotStatementTwo' for a more convenient constructor.
data WAFv2RuleGroupNotStatementTwo =
  WAFv2RuleGroupNotStatementTwo
  { _wAFv2RuleGroupNotStatementTwoStatement :: Maybe WAFv2RuleGroupStatementThree
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupNotStatementTwo where
  toJSON WAFv2RuleGroupNotStatementTwo{..} =
    object $
    catMaybes
    [ fmap (("Statement",) . toJSON) _wAFv2RuleGroupNotStatementTwoStatement
    ]

-- | Constructor for 'WAFv2RuleGroupNotStatementTwo' containing required
-- fields as arguments.
waFv2RuleGroupNotStatementTwo
  :: WAFv2RuleGroupNotStatementTwo
waFv2RuleGroupNotStatementTwo  =
  WAFv2RuleGroupNotStatementTwo
  { _wAFv2RuleGroupNotStatementTwoStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-notstatementtwo.html#cfn-wafv2-rulegroup-notstatementtwo-statement
wafrgnstStatement :: Lens' WAFv2RuleGroupNotStatementTwo (Maybe WAFv2RuleGroupStatementThree)
wafrgnstStatement = lens _wAFv2RuleGroupNotStatementTwoStatement (\s a -> s { _wAFv2RuleGroupNotStatementTwoStatement = a })
