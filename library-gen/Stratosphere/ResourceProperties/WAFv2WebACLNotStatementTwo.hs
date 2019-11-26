{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementtwo.html

module Stratosphere.ResourceProperties.WAFv2WebACLNotStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementThree

-- | Full data type definition for WAFv2WebACLNotStatementTwo. See
-- 'waFv2WebACLNotStatementTwo' for a more convenient constructor.
data WAFv2WebACLNotStatementTwo =
  WAFv2WebACLNotStatementTwo
  { _wAFv2WebACLNotStatementTwoStatement :: Maybe WAFv2WebACLStatementThree
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLNotStatementTwo where
  toJSON WAFv2WebACLNotStatementTwo{..} =
    object $
    catMaybes
    [ fmap (("Statement",) . toJSON) _wAFv2WebACLNotStatementTwoStatement
    ]

-- | Constructor for 'WAFv2WebACLNotStatementTwo' containing required fields
-- as arguments.
waFv2WebACLNotStatementTwo
  :: WAFv2WebACLNotStatementTwo
waFv2WebACLNotStatementTwo  =
  WAFv2WebACLNotStatementTwo
  { _wAFv2WebACLNotStatementTwoStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-notstatementtwo.html#cfn-wafv2-webacl-notstatementtwo-statement
wafwaclnstStatement :: Lens' WAFv2WebACLNotStatementTwo (Maybe WAFv2WebACLStatementThree)
wafwaclnstStatement = lens _wAFv2WebACLNotStatementTwoStatement (\s a -> s { _wAFv2WebACLNotStatementTwoStatement = a })
