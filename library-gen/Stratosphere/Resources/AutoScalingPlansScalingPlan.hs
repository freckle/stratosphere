{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscalingplans-scalingplan.html

module Stratosphere.Resources.AutoScalingPlansScalingPlan where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanApplicationSource
import Stratosphere.ResourceProperties.AutoScalingPlansScalingPlanScalingInstruction

-- | Full data type definition for AutoScalingPlansScalingPlan. See
-- 'autoScalingPlansScalingPlan' for a more convenient constructor.
data AutoScalingPlansScalingPlan =
  AutoScalingPlansScalingPlan
  { _autoScalingPlansScalingPlanApplicationSource :: AutoScalingPlansScalingPlanApplicationSource
  , _autoScalingPlansScalingPlanScalingInstructions :: [AutoScalingPlansScalingPlanScalingInstruction]
  } deriving (Show, Eq)

instance ToJSON AutoScalingPlansScalingPlan where
  toJSON AutoScalingPlansScalingPlan{..} =
    object $
    catMaybes
    [ (Just . ("ApplicationSource",) . toJSON) _autoScalingPlansScalingPlanApplicationSource
    , (Just . ("ScalingInstructions",) . toJSON) _autoScalingPlansScalingPlanScalingInstructions
    ]

instance FromJSON AutoScalingPlansScalingPlan where
  parseJSON (Object obj) =
    AutoScalingPlansScalingPlan <$>
      (obj .: "ApplicationSource") <*>
      (obj .: "ScalingInstructions")
  parseJSON _ = mempty

-- | Constructor for 'AutoScalingPlansScalingPlan' containing required fields
-- as arguments.
autoScalingPlansScalingPlan
  :: AutoScalingPlansScalingPlanApplicationSource -- ^ 'aspspApplicationSource'
  -> [AutoScalingPlansScalingPlanScalingInstruction] -- ^ 'aspspScalingInstructions'
  -> AutoScalingPlansScalingPlan
autoScalingPlansScalingPlan applicationSourcearg scalingInstructionsarg =
  AutoScalingPlansScalingPlan
  { _autoScalingPlansScalingPlanApplicationSource = applicationSourcearg
  , _autoScalingPlansScalingPlanScalingInstructions = scalingInstructionsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscalingplans-scalingplan.html#cfn-autoscalingplans-scalingplan-applicationsource
aspspApplicationSource :: Lens' AutoScalingPlansScalingPlan AutoScalingPlansScalingPlanApplicationSource
aspspApplicationSource = lens _autoScalingPlansScalingPlanApplicationSource (\s a -> s { _autoScalingPlansScalingPlanApplicationSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscalingplans-scalingplan.html#cfn-autoscalingplans-scalingplan-scalinginstructions
aspspScalingInstructions :: Lens' AutoScalingPlansScalingPlan [AutoScalingPlansScalingPlanScalingInstruction]
aspspScalingInstructions = lens _autoScalingPlansScalingPlanScalingInstructions (\s a -> s { _autoScalingPlansScalingPlanScalingInstructions = a })
