{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sns.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelSns where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelPayload

-- | Full data type definition for IoTEventsDetectorModelSns. See
-- 'ioTEventsDetectorModelSns' for a more convenient constructor.
data IoTEventsDetectorModelSns =
  IoTEventsDetectorModelSns
  { _ioTEventsDetectorModelSnsPayload :: Maybe IoTEventsDetectorModelPayload
  , _ioTEventsDetectorModelSnsTargetArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelSns where
  toJSON IoTEventsDetectorModelSns{..} =
    object $
    catMaybes
    [ fmap (("Payload",) . toJSON) _ioTEventsDetectorModelSnsPayload
    , fmap (("TargetArn",) . toJSON) _ioTEventsDetectorModelSnsTargetArn
    ]

-- | Constructor for 'IoTEventsDetectorModelSns' containing required fields as
-- arguments.
ioTEventsDetectorModelSns
  :: IoTEventsDetectorModelSns
ioTEventsDetectorModelSns  =
  IoTEventsDetectorModelSns
  { _ioTEventsDetectorModelSnsPayload = Nothing
  , _ioTEventsDetectorModelSnsTargetArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sns.html#cfn-iotevents-detectormodel-sns-payload
itedmsPayload :: Lens' IoTEventsDetectorModelSns (Maybe IoTEventsDetectorModelPayload)
itedmsPayload = lens _ioTEventsDetectorModelSnsPayload (\s a -> s { _ioTEventsDetectorModelSnsPayload = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-sns.html#cfn-iotevents-detectormodel-sns-targetarn
itedmsTargetArn :: Lens' IoTEventsDetectorModelSns (Maybe (Val Text))
itedmsTargetArn = lens _ioTEventsDetectorModelSnsTargetArn (\s a -> s { _ioTEventsDetectorModelSnsTargetArn = a })
