{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupStatementThree where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupByteMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupGeoMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupIPSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupRegexPatternSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupSizeConstraintStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupSqliMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupXssMatchStatement

-- | Full data type definition for WAFv2RuleGroupStatementThree. See
-- 'waFv2RuleGroupStatementThree' for a more convenient constructor.
data WAFv2RuleGroupStatementThree =
  WAFv2RuleGroupStatementThree
  { _wAFv2RuleGroupStatementThreeByteMatchStatement :: Maybe WAFv2RuleGroupByteMatchStatement
  , _wAFv2RuleGroupStatementThreeGeoMatchStatement :: Maybe WAFv2RuleGroupGeoMatchStatement
  , _wAFv2RuleGroupStatementThreeIPSetReferenceStatement :: Maybe WAFv2RuleGroupIPSetReferenceStatement
  , _wAFv2RuleGroupStatementThreeRegexPatternSetReferenceStatement :: Maybe WAFv2RuleGroupRegexPatternSetReferenceStatement
  , _wAFv2RuleGroupStatementThreeSizeConstraintStatement :: Maybe WAFv2RuleGroupSizeConstraintStatement
  , _wAFv2RuleGroupStatementThreeSqliMatchStatement :: Maybe WAFv2RuleGroupSqliMatchStatement
  , _wAFv2RuleGroupStatementThreeXssMatchStatement :: Maybe WAFv2RuleGroupXssMatchStatement
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupStatementThree where
  toJSON WAFv2RuleGroupStatementThree{..} =
    object $
    catMaybes
    [ fmap (("ByteMatchStatement",) . toJSON) _wAFv2RuleGroupStatementThreeByteMatchStatement
    , fmap (("GeoMatchStatement",) . toJSON) _wAFv2RuleGroupStatementThreeGeoMatchStatement
    , fmap (("IPSetReferenceStatement",) . toJSON) _wAFv2RuleGroupStatementThreeIPSetReferenceStatement
    , fmap (("RegexPatternSetReferenceStatement",) . toJSON) _wAFv2RuleGroupStatementThreeRegexPatternSetReferenceStatement
    , fmap (("SizeConstraintStatement",) . toJSON) _wAFv2RuleGroupStatementThreeSizeConstraintStatement
    , fmap (("SqliMatchStatement",) . toJSON) _wAFv2RuleGroupStatementThreeSqliMatchStatement
    , fmap (("XssMatchStatement",) . toJSON) _wAFv2RuleGroupStatementThreeXssMatchStatement
    ]

-- | Constructor for 'WAFv2RuleGroupStatementThree' containing required fields
-- as arguments.
waFv2RuleGroupStatementThree
  :: WAFv2RuleGroupStatementThree
waFv2RuleGroupStatementThree  =
  WAFv2RuleGroupStatementThree
  { _wAFv2RuleGroupStatementThreeByteMatchStatement = Nothing
  , _wAFv2RuleGroupStatementThreeGeoMatchStatement = Nothing
  , _wAFv2RuleGroupStatementThreeIPSetReferenceStatement = Nothing
  , _wAFv2RuleGroupStatementThreeRegexPatternSetReferenceStatement = Nothing
  , _wAFv2RuleGroupStatementThreeSizeConstraintStatement = Nothing
  , _wAFv2RuleGroupStatementThreeSqliMatchStatement = Nothing
  , _wAFv2RuleGroupStatementThreeXssMatchStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-bytematchstatement
wafrgstByteMatchStatement :: Lens' WAFv2RuleGroupStatementThree (Maybe WAFv2RuleGroupByteMatchStatement)
wafrgstByteMatchStatement = lens _wAFv2RuleGroupStatementThreeByteMatchStatement (\s a -> s { _wAFv2RuleGroupStatementThreeByteMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-geomatchstatement
wafrgstGeoMatchStatement :: Lens' WAFv2RuleGroupStatementThree (Maybe WAFv2RuleGroupGeoMatchStatement)
wafrgstGeoMatchStatement = lens _wAFv2RuleGroupStatementThreeGeoMatchStatement (\s a -> s { _wAFv2RuleGroupStatementThreeGeoMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-ipsetreferencestatement
wafrgstIPSetReferenceStatement :: Lens' WAFv2RuleGroupStatementThree (Maybe WAFv2RuleGroupIPSetReferenceStatement)
wafrgstIPSetReferenceStatement = lens _wAFv2RuleGroupStatementThreeIPSetReferenceStatement (\s a -> s { _wAFv2RuleGroupStatementThreeIPSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-regexpatternsetreferencestatement
wafrgstRegexPatternSetReferenceStatement :: Lens' WAFv2RuleGroupStatementThree (Maybe WAFv2RuleGroupRegexPatternSetReferenceStatement)
wafrgstRegexPatternSetReferenceStatement = lens _wAFv2RuleGroupStatementThreeRegexPatternSetReferenceStatement (\s a -> s { _wAFv2RuleGroupStatementThreeRegexPatternSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-sizeconstraintstatement
wafrgstSizeConstraintStatement :: Lens' WAFv2RuleGroupStatementThree (Maybe WAFv2RuleGroupSizeConstraintStatement)
wafrgstSizeConstraintStatement = lens _wAFv2RuleGroupStatementThreeSizeConstraintStatement (\s a -> s { _wAFv2RuleGroupStatementThreeSizeConstraintStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-sqlimatchstatement
wafrgstSqliMatchStatement :: Lens' WAFv2RuleGroupStatementThree (Maybe WAFv2RuleGroupSqliMatchStatement)
wafrgstSqliMatchStatement = lens _wAFv2RuleGroupStatementThreeSqliMatchStatement (\s a -> s { _wAFv2RuleGroupStatementThreeSqliMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementthree.html#cfn-wafv2-rulegroup-statementthree-xssmatchstatement
wafrgstXssMatchStatement :: Lens' WAFv2RuleGroupStatementThree (Maybe WAFv2RuleGroupXssMatchStatement)
wafrgstXssMatchStatement = lens _wAFv2RuleGroupStatementThreeXssMatchStatement (\s a -> s { _wAFv2RuleGroupStatementThreeXssMatchStatement = a })
