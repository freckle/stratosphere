{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html

module Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType

-- | Full data type definition for
-- CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType.
-- See
-- 'cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType'
-- for a more convenient constructor.
data CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType =
  CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType
  { _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeActions :: CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType
  , _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeEventFilter :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType where
  toJSON CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType{..} =
    object $
    catMaybes
    [ (Just . ("Actions",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeActions
    , fmap (("EventFilter",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeEventFilter
    ]

-- | Constructor for
-- 'CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType'
-- containing required fields as arguments.
cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType
  :: CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType -- ^ 'cuprcaccrctActions'
  -> CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType
cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType actionsarg =
  CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType
  { _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeActions = actionsarg
  , _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeEventFilter = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype-actions
cuprcaccrctActions :: Lens' CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType
cuprcaccrctActions = lens _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeActions (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfigurationtype-eventfilter
cuprcaccrctEventFilter :: Lens' CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType (Maybe (ValList Text))
cuprcaccrctEventFilter = lens _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeEventFilter (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationTypeEventFilter = a })
