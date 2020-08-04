{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html

module Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamBufferingHints
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHttpEndpointConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamProcessingConfiguration
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamRetryOptions
import Stratosphere.ResourceProperties.KinesisFirehoseDeliveryStreamS3DestinationConfiguration

-- | Full data type definition for
-- KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration. See
-- 'kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration' for a
-- more convenient constructor.
data KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration =
  KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationBufferingHints :: Maybe KinesisFirehoseDeliveryStreamBufferingHints
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationCloudWatchLoggingOptions :: Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationEndpointConfiguration :: KinesisFirehoseDeliveryStreamHttpEndpointConfiguration
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationProcessingConfiguration :: Maybe KinesisFirehoseDeliveryStreamProcessingConfiguration
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRequestConfiguration :: Maybe KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRetryOptions :: Maybe KinesisFirehoseDeliveryStreamRetryOptions
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRoleARN :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3BackupMode :: Maybe (Val Text)
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3Configuration :: KinesisFirehoseDeliveryStreamS3DestinationConfiguration
  } deriving (Show, Eq)

instance ToJSON KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration where
  toJSON KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration{..} =
    object $
    catMaybes
    [ fmap (("BufferingHints",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationBufferingHints
    , fmap (("CloudWatchLoggingOptions",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationCloudWatchLoggingOptions
    , (Just . ("EndpointConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationEndpointConfiguration
    , fmap (("ProcessingConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationProcessingConfiguration
    , fmap (("RequestConfiguration",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRequestConfiguration
    , fmap (("RetryOptions",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRetryOptions
    , fmap (("RoleARN",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRoleARN
    , fmap (("S3BackupMode",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3BackupMode
    , (Just . ("S3Configuration",) . toJSON) _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3Configuration
    ]

-- | Constructor for
-- 'KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration'
-- containing required fields as arguments.
kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration
  :: KinesisFirehoseDeliveryStreamHttpEndpointConfiguration -- ^ 'kfdshedcEndpointConfiguration'
  -> KinesisFirehoseDeliveryStreamS3DestinationConfiguration -- ^ 'kfdshedcS3Configuration'
  -> KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration
kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration endpointConfigurationarg s3Configurationarg =
  KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration
  { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationBufferingHints = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationCloudWatchLoggingOptions = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationEndpointConfiguration = endpointConfigurationarg
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationProcessingConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRequestConfiguration = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRetryOptions = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRoleARN = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3BackupMode = Nothing
  , _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3Configuration = s3Configurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-bufferinghints
kfdshedcBufferingHints :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamBufferingHints)
kfdshedcBufferingHints = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationBufferingHints (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationBufferingHints = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-cloudwatchloggingoptions
kfdshedcCloudWatchLoggingOptions :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamCloudWatchLoggingOptions)
kfdshedcCloudWatchLoggingOptions = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationCloudWatchLoggingOptions (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationCloudWatchLoggingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-endpointconfiguration
kfdshedcEndpointConfiguration :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration KinesisFirehoseDeliveryStreamHttpEndpointConfiguration
kfdshedcEndpointConfiguration = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationEndpointConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationEndpointConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-processingconfiguration
kfdshedcProcessingConfiguration :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamProcessingConfiguration)
kfdshedcProcessingConfiguration = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationProcessingConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationProcessingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-requestconfiguration
kfdshedcRequestConfiguration :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamHttpEndpointRequestConfiguration)
kfdshedcRequestConfiguration = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRequestConfiguration (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRequestConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-retryoptions
kfdshedcRetryOptions :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration (Maybe KinesisFirehoseDeliveryStreamRetryOptions)
kfdshedcRetryOptions = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRetryOptions (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRetryOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-rolearn
kfdshedcRoleARN :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration (Maybe (Val Text))
kfdshedcRoleARN = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRoleARN (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-s3backupmode
kfdshedcS3BackupMode :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration (Maybe (Val Text))
kfdshedcS3BackupMode = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3BackupMode (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3BackupMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration-s3configuration
kfdshedcS3Configuration :: Lens' KinesisFirehoseDeliveryStreamHttpEndpointDestinationConfiguration KinesisFirehoseDeliveryStreamS3DestinationConfiguration
kfdshedcS3Configuration = lens _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3Configuration (\s a -> s { _kinesisFirehoseDeliveryStreamHttpEndpointDestinationConfigurationS3Configuration = a })
