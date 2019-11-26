{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupStatementTwo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupAndStatementTwo
import Stratosphere.ResourceProperties.WAFv2RuleGroupByteMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupGeoMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupIPSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupNotStatementTwo
import Stratosphere.ResourceProperties.WAFv2RuleGroupOrStatementTwo
import Stratosphere.ResourceProperties.WAFv2RuleGroupRateBasedStatementTwo
import Stratosphere.ResourceProperties.WAFv2RuleGroupRegexPatternSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupSizeConstraintStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupSqliMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupXssMatchStatement

-- | Full data type definition for WAFv2RuleGroupStatementTwo. See
-- 'waFv2RuleGroupStatementTwo' for a more convenient constructor.
data WAFv2RuleGroupStatementTwo =
  WAFv2RuleGroupStatementTwo
  { _wAFv2RuleGroupStatementTwoAndStatement :: Maybe WAFv2RuleGroupAndStatementTwo
  , _wAFv2RuleGroupStatementTwoByteMatchStatement :: Maybe WAFv2RuleGroupByteMatchStatement
  , _wAFv2RuleGroupStatementTwoGeoMatchStatement :: Maybe WAFv2RuleGroupGeoMatchStatement
  , _wAFv2RuleGroupStatementTwoIPSetReferenceStatement :: Maybe WAFv2RuleGroupIPSetReferenceStatement
  , _wAFv2RuleGroupStatementTwoNotStatement :: Maybe WAFv2RuleGroupNotStatementTwo
  , _wAFv2RuleGroupStatementTwoOrStatement :: Maybe WAFv2RuleGroupOrStatementTwo
  , _wAFv2RuleGroupStatementTwoRateBasedStatement :: Maybe WAFv2RuleGroupRateBasedStatementTwo
  , _wAFv2RuleGroupStatementTwoRegexPatternSetReferenceStatement :: Maybe WAFv2RuleGroupRegexPatternSetReferenceStatement
  , _wAFv2RuleGroupStatementTwoSizeConstraintStatement :: Maybe WAFv2RuleGroupSizeConstraintStatement
  , _wAFv2RuleGroupStatementTwoSqliMatchStatement :: Maybe WAFv2RuleGroupSqliMatchStatement
  , _wAFv2RuleGroupStatementTwoXssMatchStatement :: Maybe WAFv2RuleGroupXssMatchStatement
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupStatementTwo where
  toJSON WAFv2RuleGroupStatementTwo{..} =
    object $
    catMaybes
    [ fmap (("AndStatement",) . toJSON) _wAFv2RuleGroupStatementTwoAndStatement
    , fmap (("ByteMatchStatement",) . toJSON) _wAFv2RuleGroupStatementTwoByteMatchStatement
    , fmap (("GeoMatchStatement",) . toJSON) _wAFv2RuleGroupStatementTwoGeoMatchStatement
    , fmap (("IPSetReferenceStatement",) . toJSON) _wAFv2RuleGroupStatementTwoIPSetReferenceStatement
    , fmap (("NotStatement",) . toJSON) _wAFv2RuleGroupStatementTwoNotStatement
    , fmap (("OrStatement",) . toJSON) _wAFv2RuleGroupStatementTwoOrStatement
    , fmap (("RateBasedStatement",) . toJSON) _wAFv2RuleGroupStatementTwoRateBasedStatement
    , fmap (("RegexPatternSetReferenceStatement",) . toJSON) _wAFv2RuleGroupStatementTwoRegexPatternSetReferenceStatement
    , fmap (("SizeConstraintStatement",) . toJSON) _wAFv2RuleGroupStatementTwoSizeConstraintStatement
    , fmap (("SqliMatchStatement",) . toJSON) _wAFv2RuleGroupStatementTwoSqliMatchStatement
    , fmap (("XssMatchStatement",) . toJSON) _wAFv2RuleGroupStatementTwoXssMatchStatement
    ]

-- | Constructor for 'WAFv2RuleGroupStatementTwo' containing required fields
-- as arguments.
waFv2RuleGroupStatementTwo
  :: WAFv2RuleGroupStatementTwo
waFv2RuleGroupStatementTwo  =
  WAFv2RuleGroupStatementTwo
  { _wAFv2RuleGroupStatementTwoAndStatement = Nothing
  , _wAFv2RuleGroupStatementTwoByteMatchStatement = Nothing
  , _wAFv2RuleGroupStatementTwoGeoMatchStatement = Nothing
  , _wAFv2RuleGroupStatementTwoIPSetReferenceStatement = Nothing
  , _wAFv2RuleGroupStatementTwoNotStatement = Nothing
  , _wAFv2RuleGroupStatementTwoOrStatement = Nothing
  , _wAFv2RuleGroupStatementTwoRateBasedStatement = Nothing
  , _wAFv2RuleGroupStatementTwoRegexPatternSetReferenceStatement = Nothing
  , _wAFv2RuleGroupStatementTwoSizeConstraintStatement = Nothing
  , _wAFv2RuleGroupStatementTwoSqliMatchStatement = Nothing
  , _wAFv2RuleGroupStatementTwoXssMatchStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-andstatement
wafrgstAndStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupAndStatementTwo)
wafrgstAndStatement = lens _wAFv2RuleGroupStatementTwoAndStatement (\s a -> s { _wAFv2RuleGroupStatementTwoAndStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-bytematchstatement
wafrgstByteMatchStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupByteMatchStatement)
wafrgstByteMatchStatement = lens _wAFv2RuleGroupStatementTwoByteMatchStatement (\s a -> s { _wAFv2RuleGroupStatementTwoByteMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-geomatchstatement
wafrgstGeoMatchStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupGeoMatchStatement)
wafrgstGeoMatchStatement = lens _wAFv2RuleGroupStatementTwoGeoMatchStatement (\s a -> s { _wAFv2RuleGroupStatementTwoGeoMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-ipsetreferencestatement
wafrgstIPSetReferenceStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupIPSetReferenceStatement)
wafrgstIPSetReferenceStatement = lens _wAFv2RuleGroupStatementTwoIPSetReferenceStatement (\s a -> s { _wAFv2RuleGroupStatementTwoIPSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-notstatement
wafrgstNotStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupNotStatementTwo)
wafrgstNotStatement = lens _wAFv2RuleGroupStatementTwoNotStatement (\s a -> s { _wAFv2RuleGroupStatementTwoNotStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-orstatement
wafrgstOrStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupOrStatementTwo)
wafrgstOrStatement = lens _wAFv2RuleGroupStatementTwoOrStatement (\s a -> s { _wAFv2RuleGroupStatementTwoOrStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-ratebasedstatement
wafrgstRateBasedStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupRateBasedStatementTwo)
wafrgstRateBasedStatement = lens _wAFv2RuleGroupStatementTwoRateBasedStatement (\s a -> s { _wAFv2RuleGroupStatementTwoRateBasedStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-regexpatternsetreferencestatement
wafrgstRegexPatternSetReferenceStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupRegexPatternSetReferenceStatement)
wafrgstRegexPatternSetReferenceStatement = lens _wAFv2RuleGroupStatementTwoRegexPatternSetReferenceStatement (\s a -> s { _wAFv2RuleGroupStatementTwoRegexPatternSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-sizeconstraintstatement
wafrgstSizeConstraintStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupSizeConstraintStatement)
wafrgstSizeConstraintStatement = lens _wAFv2RuleGroupStatementTwoSizeConstraintStatement (\s a -> s { _wAFv2RuleGroupStatementTwoSizeConstraintStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-sqlimatchstatement
wafrgstSqliMatchStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupSqliMatchStatement)
wafrgstSqliMatchStatement = lens _wAFv2RuleGroupStatementTwoSqliMatchStatement (\s a -> s { _wAFv2RuleGroupStatementTwoSqliMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementtwo.html#cfn-wafv2-rulegroup-statementtwo-xssmatchstatement
wafrgstXssMatchStatement :: Lens' WAFv2RuleGroupStatementTwo (Maybe WAFv2RuleGroupXssMatchStatement)
wafrgstXssMatchStatement = lens _wAFv2RuleGroupStatementTwoXssMatchStatement (\s a -> s { _wAFv2RuleGroupStatementTwoXssMatchStatement = a })
