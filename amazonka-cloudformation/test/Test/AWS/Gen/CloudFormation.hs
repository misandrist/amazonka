{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-orphans        #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.CloudFormation
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Test.AWS.Gen.CloudFormation where

import Data.Proxy
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty
import Network.AWS.CloudFormation
import Test.AWS.CloudFormation.Internal

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ testDeleteStack $
--             deleteStack
--
--         , testUpdateStack $
--             updateStack
--
--         , testGetTemplateSummary $
--             getTemplateSummary
--
--         , testListStackResources $
--             listStackResources
--
--         , testGetStackPolicy $
--             getStackPolicy
--
--         , testDescribeStacks $
--             describeStacks
--
--         , testContinueUpdateRollback $
--             continueUpdateRollback
--
--         , testValidateTemplate $
--             validateTemplate
--
--         , testCancelUpdateStack $
--             cancelUpdateStack
--
--         , testDescribeStackEvents $
--             describeStackEvents
--
--         , testSignalResource $
--             signalResource
--
--         , testSetStackPolicy $
--             setStackPolicy
--
--         , testListStacks $
--             listStacks
--
--         , testDescribeAccountLimits $
--             describeAccountLimits
--
--         , testDescribeStackResources $
--             describeStackResources
--
--         , testCreateStack $
--             createStack
--
--         , testEstimateTemplateCost $
--             estimateTemplateCost
--
--         , testGetTemplate $
--             getTemplate
--
--         , testDescribeStackResource $
--             describeStackResource
--
--           ]

--     , testGroup "response"
--         [ testDeleteStackResponse $
--             deleteStackResponse
--
--         , testUpdateStackResponse $
--             updateStackResponse
--
--         , testGetTemplateSummaryResponse $
--             getTemplateSummaryResponse
--
--         , testListStackResourcesResponse $
--             listStackResourcesResponse
--
--         , testGetStackPolicyResponse $
--             getStackPolicyResponse
--
--         , testDescribeStacksResponse $
--             describeStacksResponse
--
--         , testContinueUpdateRollbackResponse $
--             continueUpdateRollbackResponse
--
--         , testValidateTemplateResponse $
--             validateTemplateResponse
--
--         , testCancelUpdateStackResponse $
--             cancelUpdateStackResponse
--
--         , testDescribeStackEventsResponse $
--             describeStackEventsResponse
--
--         , testSignalResourceResponse $
--             signalResourceResponse
--
--         , testSetStackPolicyResponse $
--             setStackPolicyResponse
--
--         , testListStacksResponse $
--             listStacksResponse
--
--         , testDescribeAccountLimitsResponse $
--             describeAccountLimitsResponse
--
--         , testDescribeStackResourcesResponse $
--             describeStackResourcesResponse
--
--         , testCreateStackResponse $
--             createStackResponse
--
--         , testEstimateTemplateCostResponse $
--             estimateTemplateCostResponse
--
--         , testGetTemplateResponse $
--             getTemplateResponse
--
--         , testDescribeStackResourceResponse $
--             describeStackResourceResponse
--
--           ]
--     ]

-- Requests

testDeleteStack :: DeleteStack -> TestTree
testDeleteStack = req
    "DeleteStack"
    "fixture/DeleteStack.yaml"

testUpdateStack :: UpdateStack -> TestTree
testUpdateStack = req
    "UpdateStack"
    "fixture/UpdateStack.yaml"

testGetTemplateSummary :: GetTemplateSummary -> TestTree
testGetTemplateSummary = req
    "GetTemplateSummary"
    "fixture/GetTemplateSummary.yaml"

testListStackResources :: ListStackResources -> TestTree
testListStackResources = req
    "ListStackResources"
    "fixture/ListStackResources.yaml"

testGetStackPolicy :: GetStackPolicy -> TestTree
testGetStackPolicy = req
    "GetStackPolicy"
    "fixture/GetStackPolicy.yaml"

testDescribeStacks :: DescribeStacks -> TestTree
testDescribeStacks = req
    "DescribeStacks"
    "fixture/DescribeStacks.yaml"

testContinueUpdateRollback :: ContinueUpdateRollback -> TestTree
testContinueUpdateRollback = req
    "ContinueUpdateRollback"
    "fixture/ContinueUpdateRollback.yaml"

testValidateTemplate :: ValidateTemplate -> TestTree
testValidateTemplate = req
    "ValidateTemplate"
    "fixture/ValidateTemplate.yaml"

testCancelUpdateStack :: CancelUpdateStack -> TestTree
testCancelUpdateStack = req
    "CancelUpdateStack"
    "fixture/CancelUpdateStack.yaml"

testDescribeStackEvents :: DescribeStackEvents -> TestTree
testDescribeStackEvents = req
    "DescribeStackEvents"
    "fixture/DescribeStackEvents.yaml"

testSignalResource :: SignalResource -> TestTree
testSignalResource = req
    "SignalResource"
    "fixture/SignalResource.yaml"

testSetStackPolicy :: SetStackPolicy -> TestTree
testSetStackPolicy = req
    "SetStackPolicy"
    "fixture/SetStackPolicy.yaml"

testListStacks :: ListStacks -> TestTree
testListStacks = req
    "ListStacks"
    "fixture/ListStacks.yaml"

testDescribeAccountLimits :: DescribeAccountLimits -> TestTree
testDescribeAccountLimits = req
    "DescribeAccountLimits"
    "fixture/DescribeAccountLimits.yaml"

testDescribeStackResources :: DescribeStackResources -> TestTree
testDescribeStackResources = req
    "DescribeStackResources"
    "fixture/DescribeStackResources.yaml"

testCreateStack :: CreateStack -> TestTree
testCreateStack = req
    "CreateStack"
    "fixture/CreateStack.yaml"

testEstimateTemplateCost :: EstimateTemplateCost -> TestTree
testEstimateTemplateCost = req
    "EstimateTemplateCost"
    "fixture/EstimateTemplateCost.yaml"

testGetTemplate :: GetTemplate -> TestTree
testGetTemplate = req
    "GetTemplate"
    "fixture/GetTemplate.yaml"

testDescribeStackResource :: DescribeStackResource -> TestTree
testDescribeStackResource = req
    "DescribeStackResource"
    "fixture/DescribeStackResource.yaml"

-- Responses

testDeleteStackResponse :: DeleteStackResponse -> TestTree
testDeleteStackResponse = res
    "DeleteStackResponse"
    "fixture/DeleteStackResponse.proto"
    cloudFormation
    (Proxy :: Proxy DeleteStack)

testUpdateStackResponse :: UpdateStackResponse -> TestTree
testUpdateStackResponse = res
    "UpdateStackResponse"
    "fixture/UpdateStackResponse.proto"
    cloudFormation
    (Proxy :: Proxy UpdateStack)

testGetTemplateSummaryResponse :: GetTemplateSummaryResponse -> TestTree
testGetTemplateSummaryResponse = res
    "GetTemplateSummaryResponse"
    "fixture/GetTemplateSummaryResponse.proto"
    cloudFormation
    (Proxy :: Proxy GetTemplateSummary)

testListStackResourcesResponse :: ListStackResourcesResponse -> TestTree
testListStackResourcesResponse = res
    "ListStackResourcesResponse"
    "fixture/ListStackResourcesResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListStackResources)

testGetStackPolicyResponse :: GetStackPolicyResponse -> TestTree
testGetStackPolicyResponse = res
    "GetStackPolicyResponse"
    "fixture/GetStackPolicyResponse.proto"
    cloudFormation
    (Proxy :: Proxy GetStackPolicy)

testDescribeStacksResponse :: DescribeStacksResponse -> TestTree
testDescribeStacksResponse = res
    "DescribeStacksResponse"
    "fixture/DescribeStacksResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStacks)

testContinueUpdateRollbackResponse :: ContinueUpdateRollbackResponse -> TestTree
testContinueUpdateRollbackResponse = res
    "ContinueUpdateRollbackResponse"
    "fixture/ContinueUpdateRollbackResponse.proto"
    cloudFormation
    (Proxy :: Proxy ContinueUpdateRollback)

testValidateTemplateResponse :: ValidateTemplateResponse -> TestTree
testValidateTemplateResponse = res
    "ValidateTemplateResponse"
    "fixture/ValidateTemplateResponse.proto"
    cloudFormation
    (Proxy :: Proxy ValidateTemplate)

testCancelUpdateStackResponse :: CancelUpdateStackResponse -> TestTree
testCancelUpdateStackResponse = res
    "CancelUpdateStackResponse"
    "fixture/CancelUpdateStackResponse.proto"
    cloudFormation
    (Proxy :: Proxy CancelUpdateStack)

testDescribeStackEventsResponse :: DescribeStackEventsResponse -> TestTree
testDescribeStackEventsResponse = res
    "DescribeStackEventsResponse"
    "fixture/DescribeStackEventsResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackEvents)

testSignalResourceResponse :: SignalResourceResponse -> TestTree
testSignalResourceResponse = res
    "SignalResourceResponse"
    "fixture/SignalResourceResponse.proto"
    cloudFormation
    (Proxy :: Proxy SignalResource)

testSetStackPolicyResponse :: SetStackPolicyResponse -> TestTree
testSetStackPolicyResponse = res
    "SetStackPolicyResponse"
    "fixture/SetStackPolicyResponse.proto"
    cloudFormation
    (Proxy :: Proxy SetStackPolicy)

testListStacksResponse :: ListStacksResponse -> TestTree
testListStacksResponse = res
    "ListStacksResponse"
    "fixture/ListStacksResponse.proto"
    cloudFormation
    (Proxy :: Proxy ListStacks)

testDescribeAccountLimitsResponse :: DescribeAccountLimitsResponse -> TestTree
testDescribeAccountLimitsResponse = res
    "DescribeAccountLimitsResponse"
    "fixture/DescribeAccountLimitsResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeAccountLimits)

testDescribeStackResourcesResponse :: DescribeStackResourcesResponse -> TestTree
testDescribeStackResourcesResponse = res
    "DescribeStackResourcesResponse"
    "fixture/DescribeStackResourcesResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackResources)

testCreateStackResponse :: CreateStackResponse -> TestTree
testCreateStackResponse = res
    "CreateStackResponse"
    "fixture/CreateStackResponse.proto"
    cloudFormation
    (Proxy :: Proxy CreateStack)

testEstimateTemplateCostResponse :: EstimateTemplateCostResponse -> TestTree
testEstimateTemplateCostResponse = res
    "EstimateTemplateCostResponse"
    "fixture/EstimateTemplateCostResponse.proto"
    cloudFormation
    (Proxy :: Proxy EstimateTemplateCost)

testGetTemplateResponse :: GetTemplateResponse -> TestTree
testGetTemplateResponse = res
    "GetTemplateResponse"
    "fixture/GetTemplateResponse.proto"
    cloudFormation
    (Proxy :: Proxy GetTemplate)

testDescribeStackResourceResponse :: DescribeStackResourceResponse -> TestTree
testDescribeStackResourceResponse = res
    "DescribeStackResourceResponse"
    "fixture/DescribeStackResourceResponse.proto"
    cloudFormation
    (Proxy :: Proxy DescribeStackResource)
