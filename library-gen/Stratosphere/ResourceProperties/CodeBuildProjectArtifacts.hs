{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html

module Stratosphere.ResourceProperties.CodeBuildProjectArtifacts where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectArtifacts. See
-- 'codeBuildProjectArtifacts' for a more convenient constructor.
data CodeBuildProjectArtifacts =
  CodeBuildProjectArtifacts
  { _codeBuildProjectArtifactsEncryptionDisabled :: Maybe (Val Bool)
  , _codeBuildProjectArtifactsLocation :: Maybe (Val Text)
  , _codeBuildProjectArtifactsName :: Maybe (Val Text)
  , _codeBuildProjectArtifactsNamespaceType :: Maybe (Val Text)
  , _codeBuildProjectArtifactsOverrideArtifactName :: Maybe (Val Bool)
  , _codeBuildProjectArtifactsPackaging :: Maybe (Val Text)
  , _codeBuildProjectArtifactsPath :: Maybe (Val Text)
  , _codeBuildProjectArtifactsType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectArtifacts where
  toJSON CodeBuildProjectArtifacts{..} =
    object $
    catMaybes
    [ fmap (("EncryptionDisabled",) . toJSON . fmap Bool') _codeBuildProjectArtifactsEncryptionDisabled
    , fmap (("Location",) . toJSON) _codeBuildProjectArtifactsLocation
    , fmap (("Name",) . toJSON) _codeBuildProjectArtifactsName
    , fmap (("NamespaceType",) . toJSON) _codeBuildProjectArtifactsNamespaceType
    , fmap (("OverrideArtifactName",) . toJSON . fmap Bool') _codeBuildProjectArtifactsOverrideArtifactName
    , fmap (("Packaging",) . toJSON) _codeBuildProjectArtifactsPackaging
    , fmap (("Path",) . toJSON) _codeBuildProjectArtifactsPath
    , (Just . ("Type",) . toJSON) _codeBuildProjectArtifactsType
    ]

instance FromJSON CodeBuildProjectArtifacts where
  parseJSON (Object obj) =
    CodeBuildProjectArtifacts <$>
      fmap (fmap (fmap unBool')) (obj .:? "EncryptionDisabled") <*>
      (obj .:? "Location") <*>
      (obj .:? "Name") <*>
      (obj .:? "NamespaceType") <*>
      fmap (fmap (fmap unBool')) (obj .:? "OverrideArtifactName") <*>
      (obj .:? "Packaging") <*>
      (obj .:? "Path") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProjectArtifacts' containing required fields as
-- arguments.
codeBuildProjectArtifacts
  :: Val Text -- ^ 'cbpaType'
  -> CodeBuildProjectArtifacts
codeBuildProjectArtifacts typearg =
  CodeBuildProjectArtifacts
  { _codeBuildProjectArtifactsEncryptionDisabled = Nothing
  , _codeBuildProjectArtifactsLocation = Nothing
  , _codeBuildProjectArtifactsName = Nothing
  , _codeBuildProjectArtifactsNamespaceType = Nothing
  , _codeBuildProjectArtifactsOverrideArtifactName = Nothing
  , _codeBuildProjectArtifactsPackaging = Nothing
  , _codeBuildProjectArtifactsPath = Nothing
  , _codeBuildProjectArtifactsType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-encryptiondisabled
cbpaEncryptionDisabled :: Lens' CodeBuildProjectArtifacts (Maybe (Val Bool))
cbpaEncryptionDisabled = lens _codeBuildProjectArtifactsEncryptionDisabled (\s a -> s { _codeBuildProjectArtifactsEncryptionDisabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-location
cbpaLocation :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaLocation = lens _codeBuildProjectArtifactsLocation (\s a -> s { _codeBuildProjectArtifactsLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-name
cbpaName :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaName = lens _codeBuildProjectArtifactsName (\s a -> s { _codeBuildProjectArtifactsName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-namespacetype
cbpaNamespaceType :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaNamespaceType = lens _codeBuildProjectArtifactsNamespaceType (\s a -> s { _codeBuildProjectArtifactsNamespaceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-overrideartifactname
cbpaOverrideArtifactName :: Lens' CodeBuildProjectArtifacts (Maybe (Val Bool))
cbpaOverrideArtifactName = lens _codeBuildProjectArtifactsOverrideArtifactName (\s a -> s { _codeBuildProjectArtifactsOverrideArtifactName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-packaging
cbpaPackaging :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaPackaging = lens _codeBuildProjectArtifactsPackaging (\s a -> s { _codeBuildProjectArtifactsPackaging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-path
cbpaPath :: Lens' CodeBuildProjectArtifacts (Maybe (Val Text))
cbpaPath = lens _codeBuildProjectArtifactsPath (\s a -> s { _codeBuildProjectArtifactsPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-artifacts.html#cfn-codebuild-project-artifacts-type
cbpaType :: Lens' CodeBuildProjectArtifacts (Val Text)
cbpaType = lens _codeBuildProjectArtifactsType (\s a -> s { _codeBuildProjectArtifactsType = a })
