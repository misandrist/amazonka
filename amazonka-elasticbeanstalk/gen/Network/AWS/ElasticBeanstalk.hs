{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElasticBeanstalk
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- AWS Elastic Beanstalk
--
-- This is the AWS Elastic Beanstalk API Reference. This guide provides
-- detailed information about AWS Elastic Beanstalk actions, data types,
-- parameters, and errors.
--
-- AWS Elastic Beanstalk is a tool that makes it easy for you to create,
-- deploy, and manage scalable, fault-tolerant applications running on
-- Amazon Web Services cloud resources.
--
-- For more information about this product, go to the
-- <http://aws.amazon.com/elasticbeanstalk/ AWS Elastic Beanstalk> details
-- page. The location of the latest AWS Elastic Beanstalk WSDL is
-- <http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl>.
-- To install the Software Development Kits (SDKs), Integrated Development
-- Environment (IDE) Toolkits, and command line tools that enable you to
-- access the API, go to
-- <https://aws.amazon.com/tools/ Tools for Amazon Web Services>.
--
-- __Endpoints__
--
-- For a list of region-specific endpoints that AWS Elastic Beanstalk
-- supports, go to
-- <http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region Regions and Endpoints>
-- in the /Amazon Web Services Glossary/.
module Network.AWS.ElasticBeanstalk
    (
    -- * Service Configuration
      elasticBeanstalk

    -- * Errors
    -- $errors

    -- ** InvalidRequestException
    , _InvalidRequestException

    -- ** TooManyBucketsException
    , _TooManyBucketsException

    -- ** S3SubscriptionRequiredException
    , _S3SubscriptionRequiredException

    -- ** OperationInProgressException
    , _OperationInProgressException

    -- ** TooManyApplicationVersionsException
    , _TooManyApplicationVersionsException

    -- ** TooManyConfigurationTemplatesException
    , _TooManyConfigurationTemplatesException

    -- ** InsufficientPrivilegesException
    , _InsufficientPrivilegesException

    -- ** ElasticBeanstalkServiceException
    , _ElasticBeanstalkServiceException

    -- ** TooManyApplicationsException
    , _TooManyApplicationsException

    -- ** SourceBundleDeletionException
    , _SourceBundleDeletionException

    -- ** S3LocationNotInServiceRegionException
    , _S3LocationNotInServiceRegionException

    -- ** TooManyEnvironmentsException
    , _TooManyEnvironmentsException

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DescribeApplications
    , module Network.AWS.ElasticBeanstalk.DescribeApplications

    -- ** UpdateEnvironment
    , module Network.AWS.ElasticBeanstalk.UpdateEnvironment

    -- ** TerminateEnvironment
    , module Network.AWS.ElasticBeanstalk.TerminateEnvironment

    -- ** CreateApplicationVersion
    , module Network.AWS.ElasticBeanstalk.CreateApplicationVersion

    -- ** DescribeEvents (Paginated)
    , module Network.AWS.ElasticBeanstalk.DescribeEvents

    -- ** RequestEnvironmentInfo
    , module Network.AWS.ElasticBeanstalk.RequestEnvironmentInfo

    -- ** RetrieveEnvironmentInfo
    , module Network.AWS.ElasticBeanstalk.RetrieveEnvironmentInfo

    -- ** DeleteApplication
    , module Network.AWS.ElasticBeanstalk.DeleteApplication

    -- ** UpdateApplication
    , module Network.AWS.ElasticBeanstalk.UpdateApplication

    -- ** DescribeInstancesHealth
    , module Network.AWS.ElasticBeanstalk.DescribeInstancesHealth

    -- ** CreateApplication
    , module Network.AWS.ElasticBeanstalk.CreateApplication

    -- ** ComposeEnvironments
    , module Network.AWS.ElasticBeanstalk.ComposeEnvironments

    -- ** AbortEnvironmentUpdate
    , module Network.AWS.ElasticBeanstalk.AbortEnvironmentUpdate

    -- ** DeleteConfigurationTemplate
    , module Network.AWS.ElasticBeanstalk.DeleteConfigurationTemplate

    -- ** UpdateConfigurationTemplate
    , module Network.AWS.ElasticBeanstalk.UpdateConfigurationTemplate

    -- ** DescribeEnvironmentResources
    , module Network.AWS.ElasticBeanstalk.DescribeEnvironmentResources

    -- ** DeleteApplicationVersion
    , module Network.AWS.ElasticBeanstalk.DeleteApplicationVersion

    -- ** UpdateApplicationVersion
    , module Network.AWS.ElasticBeanstalk.UpdateApplicationVersion

    -- ** CreateConfigurationTemplate
    , module Network.AWS.ElasticBeanstalk.CreateConfigurationTemplate

    -- ** DescribeEnvironmentHealth
    , module Network.AWS.ElasticBeanstalk.DescribeEnvironmentHealth

    -- ** RebuildEnvironment
    , module Network.AWS.ElasticBeanstalk.RebuildEnvironment

    -- ** DeleteEnvironmentConfiguration
    , module Network.AWS.ElasticBeanstalk.DeleteEnvironmentConfiguration

    -- ** SwapEnvironmentCNAMEs
    , module Network.AWS.ElasticBeanstalk.SwapEnvironmentCNAMEs

    -- ** ListAvailableSolutionStacks
    , module Network.AWS.ElasticBeanstalk.ListAvailableSolutionStacks

    -- ** DescribeConfigurationOptions
    , module Network.AWS.ElasticBeanstalk.DescribeConfigurationOptions

    -- ** CreateStorageLocation
    , module Network.AWS.ElasticBeanstalk.CreateStorageLocation

    -- ** DescribeConfigurationSettings
    , module Network.AWS.ElasticBeanstalk.DescribeConfigurationSettings

    -- ** ValidateConfigurationSettings
    , module Network.AWS.ElasticBeanstalk.ValidateConfigurationSettings

    -- ** RestartAppServer
    , module Network.AWS.ElasticBeanstalk.RestartAppServer

    -- ** DescribeEnvironments
    , module Network.AWS.ElasticBeanstalk.DescribeEnvironments

    -- ** CheckDNSAvailability
    , module Network.AWS.ElasticBeanstalk.CheckDNSAvailability

    -- ** DescribeApplicationVersions
    , module Network.AWS.ElasticBeanstalk.DescribeApplicationVersions

    -- ** CreateEnvironment
    , module Network.AWS.ElasticBeanstalk.CreateEnvironment

    -- * Types

    -- ** ApplicationVersionStatus
    , ApplicationVersionStatus (..)

    -- ** ConfigurationDeploymentStatus
    , ConfigurationDeploymentStatus (..)

    -- ** ConfigurationOptionValueType
    , ConfigurationOptionValueType (..)

    -- ** EnvironmentHealth
    , EnvironmentHealth (..)

    -- ** EnvironmentHealthAttribute
    , EnvironmentHealthAttribute (..)

    -- ** EnvironmentHealthStatus
    , EnvironmentHealthStatus (..)

    -- ** EnvironmentInfoType
    , EnvironmentInfoType (..)

    -- ** EnvironmentStatus
    , EnvironmentStatus (..)

    -- ** EventSeverity
    , EventSeverity (..)

    -- ** InstancesHealthAttribute
    , InstancesHealthAttribute (..)

    -- ** ValidationSeverity
    , ValidationSeverity (..)

    -- ** ApplicationDescription
    , ApplicationDescription
    , applicationDescription
    , adVersions
    , adDateUpdated
    , adDateCreated
    , adApplicationName
    , adConfigurationTemplates
    , adDescription

    -- ** ApplicationDescriptionMessage
    , ApplicationDescriptionMessage
    , applicationDescriptionMessage
    , admApplication

    -- ** ApplicationMetrics
    , ApplicationMetrics
    , applicationMetrics
    , amRequestCount
    , amLatency
    , amStatusCodes
    , amDuration

    -- ** ApplicationVersionDescription
    , ApplicationVersionDescription
    , applicationVersionDescription
    , avdStatus
    , avdSourceBundle
    , avdDateUpdated
    , avdDateCreated
    , avdVersionLabel
    , avdApplicationName
    , avdDescription

    -- ** ApplicationVersionDescriptionMessage
    , ApplicationVersionDescriptionMessage
    , applicationVersionDescriptionMessage
    , avdmApplicationVersion

    -- ** AutoScalingGroup
    , AutoScalingGroup
    , autoScalingGroup
    , asgName

    -- ** CPUUtilization
    , CPUUtilization
    , cpuUtilization
    , cuSoftIRQ
    , cuIdle
    , cuIRQ
    , cuSystem
    , cuUser
    , cuIOWait
    , cuNice

    -- ** ConfigurationOptionDescription
    , ConfigurationOptionDescription
    , configurationOptionDescription
    , codMaxValue
    , codRegex
    , codMaxLength
    , codUserDefined
    , codNamespace
    , codValueOptions
    , codName
    , codChangeSeverity
    , codDefaultValue
    , codValueType
    , codMinValue

    -- ** ConfigurationOptionSetting
    , ConfigurationOptionSetting
    , configurationOptionSetting
    , cosOptionName
    , cosResourceName
    , cosNamespace
    , cosValue

    -- ** ConfigurationSettingsDescription
    , ConfigurationSettingsDescription
    , configurationSettingsDescription
    , csdTemplateName
    , csdOptionSettings
    , csdDateUpdated
    , csdDateCreated
    , csdEnvironmentName
    , csdApplicationName
    , csdDeploymentStatus
    , csdSolutionStackName
    , csdDescription

    -- ** EnvironmentDescription
    , EnvironmentDescription
    , environmentDescription
    , eStatus
    , eCNAME
    , eTemplateName
    , eAbortableOperationInProgress
    , eEndpointURL
    , eResources
    , eDateUpdated
    , eDateCreated
    , eHealth
    , eVersionLabel
    , eTier
    , eEnvironmentName
    , eApplicationName
    , eSolutionStackName
    , eEnvironmentId
    , eHealthStatus
    , eEnvironmentLinks
    , eDescription

    -- ** EnvironmentDescriptionsMessage
    , EnvironmentDescriptionsMessage
    , environmentDescriptionsMessage
    , edmEnvironments

    -- ** EnvironmentInfoDescription
    , EnvironmentInfoDescription
    , environmentInfoDescription
    , eidSampleTimestamp
    , eidEC2InstanceId
    , eidInfoType
    , eidMessage

    -- ** EnvironmentLink
    , EnvironmentLink
    , environmentLink
    , elLinkName
    , elEnvironmentName

    -- ** EnvironmentResourceDescription
    , EnvironmentResourceDescription
    , environmentResourceDescription
    , erdQueues
    , erdTriggers
    , erdLoadBalancers
    , erdEnvironmentName
    , erdInstances
    , erdLaunchConfigurations
    , erdAutoScalingGroups

    -- ** EnvironmentResourcesDescription
    , EnvironmentResourcesDescription
    , environmentResourcesDescription
    , erdLoadBalancer

    -- ** EnvironmentTier
    , EnvironmentTier
    , environmentTier
    , etName
    , etVersion
    , etType

    -- ** EventDescription
    , EventDescription
    , eventDescription
    , edRequestId
    , edTemplateName
    , edSeverity
    , edVersionLabel
    , edEnvironmentName
    , edApplicationName
    , edEventDate
    , edMessage

    -- ** Instance
    , Instance
    , instance'
    , iId

    -- ** InstanceHealthSummary
    , InstanceHealthSummary
    , instanceHealthSummary
    , ihsOK
    , ihsPending
    , ihsSevere
    , ihsUnknown
    , ihsNoData
    , ihsWarning
    , ihsDegraded
    , ihsInfo

    -- ** Latency
    , Latency
    , latency
    , lP75
    , lP50
    , lP85
    , lP999
    , lP90
    , lP95
    , lP99
    , lP10

    -- ** LaunchConfiguration
    , LaunchConfiguration
    , launchConfiguration
    , lcName

    -- ** Listener
    , Listener
    , listener
    , lProtocol
    , lPort

    -- ** LoadBalancer
    , LoadBalancer
    , loadBalancer
    , lbName

    -- ** LoadBalancerDescription
    , LoadBalancerDescription
    , loadBalancerDescription
    , lbdLoadBalancerName
    , lbdDomain
    , lbdListeners

    -- ** OptionRestrictionRegex
    , OptionRestrictionRegex
    , optionRestrictionRegex
    , orrPattern
    , orrLabel

    -- ** OptionSpecification
    , OptionSpecification
    , optionSpecification
    , osOptionName
    , osResourceName
    , osNamespace

    -- ** Queue
    , Queue
    , queue
    , qURL
    , qName

    -- ** S3Location
    , S3Location
    , s3Location
    , slS3Key
    , slS3Bucket

    -- ** SingleInstanceHealth
    , SingleInstanceHealth
    , singleInstanceHealth
    , sihInstanceId
    , sihCauses
    , sihSystem
    , sihApplicationMetrics
    , sihColor
    , sihHealthStatus
    , sihLaunchedAt

    -- ** SolutionStackDescription
    , SolutionStackDescription
    , solutionStackDescription
    , ssdPermittedFileTypes
    , ssdSolutionStackName

    -- ** SourceConfiguration
    , SourceConfiguration
    , sourceConfiguration
    , scTemplateName
    , scApplicationName

    -- ** StatusCodes
    , StatusCodes
    , statusCodes
    , scStatus2xx
    , scStatus3xx
    , scStatus4xx
    , scStatus5xx

    -- ** SystemStatus
    , SystemStatus
    , systemStatus
    , ssCPUUtilization
    , ssLoadAverage

    -- ** Tag
    , Tag
    , tag
    , tagValue
    , tagKey

    -- ** Trigger
    , Trigger
    , trigger
    , tName

    -- ** ValidationMessage
    , ValidationMessage
    , validationMessage
    , vmOptionName
    , vmSeverity
    , vmNamespace
    , vmMessage
    ) where

import           Network.AWS.ElasticBeanstalk.AbortEnvironmentUpdate
import           Network.AWS.ElasticBeanstalk.CheckDNSAvailability
import           Network.AWS.ElasticBeanstalk.ComposeEnvironments
import           Network.AWS.ElasticBeanstalk.CreateApplication
import           Network.AWS.ElasticBeanstalk.CreateApplicationVersion
import           Network.AWS.ElasticBeanstalk.CreateConfigurationTemplate
import           Network.AWS.ElasticBeanstalk.CreateEnvironment
import           Network.AWS.ElasticBeanstalk.CreateStorageLocation
import           Network.AWS.ElasticBeanstalk.DeleteApplication
import           Network.AWS.ElasticBeanstalk.DeleteApplicationVersion
import           Network.AWS.ElasticBeanstalk.DeleteConfigurationTemplate
import           Network.AWS.ElasticBeanstalk.DeleteEnvironmentConfiguration
import           Network.AWS.ElasticBeanstalk.DescribeApplications
import           Network.AWS.ElasticBeanstalk.DescribeApplicationVersions
import           Network.AWS.ElasticBeanstalk.DescribeConfigurationOptions
import           Network.AWS.ElasticBeanstalk.DescribeConfigurationSettings
import           Network.AWS.ElasticBeanstalk.DescribeEnvironmentHealth
import           Network.AWS.ElasticBeanstalk.DescribeEnvironmentResources
import           Network.AWS.ElasticBeanstalk.DescribeEnvironments
import           Network.AWS.ElasticBeanstalk.DescribeEvents
import           Network.AWS.ElasticBeanstalk.DescribeInstancesHealth
import           Network.AWS.ElasticBeanstalk.ListAvailableSolutionStacks
import           Network.AWS.ElasticBeanstalk.RebuildEnvironment
import           Network.AWS.ElasticBeanstalk.RequestEnvironmentInfo
import           Network.AWS.ElasticBeanstalk.RestartAppServer
import           Network.AWS.ElasticBeanstalk.RetrieveEnvironmentInfo
import           Network.AWS.ElasticBeanstalk.SwapEnvironmentCNAMEs
import           Network.AWS.ElasticBeanstalk.TerminateEnvironment
import           Network.AWS.ElasticBeanstalk.Types
import           Network.AWS.ElasticBeanstalk.UpdateApplication
import           Network.AWS.ElasticBeanstalk.UpdateApplicationVersion
import           Network.AWS.ElasticBeanstalk.UpdateConfigurationTemplate
import           Network.AWS.ElasticBeanstalk.UpdateEnvironment
import           Network.AWS.ElasticBeanstalk.ValidateConfigurationSettings
import           Network.AWS.ElasticBeanstalk.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'ElasticBeanstalk'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
