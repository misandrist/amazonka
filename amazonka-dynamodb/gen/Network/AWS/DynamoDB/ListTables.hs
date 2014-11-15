{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE NoImplicitPrelude          #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}

{-# OPTIONS_GHC -w                      #-}

-- Module      : Network.AWS.DynamoDB.ListTables
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Returns an array of table names associated with the current account and
-- endpoint. The output from ListTables is paginated, with each page returning
-- a maximum of 100 table names.
module Network.AWS.DynamoDB.ListTables
    (
    -- * Request
      ListTables
    -- ** Request constructor
    , listTables
    -- ** Request lenses
    , ltExclusiveStartTableName
    , ltLimit

    -- * Response
    , ListTablesResponse
    -- ** Response constructor
    , listTablesResponse
    -- ** Response lenses
    , ltrLastEvaluatedTableName
    , ltrTableNames
    ) where

import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.DynamoDB.Types
import qualified GHC.Exts

data ListTables = ListTables
    { _ltExclusiveStartTableName :: Maybe Text
    , _ltLimit                   :: Maybe Nat
    } deriving (Eq, Ord, Show, Generic)

-- | 'ListTables' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'ltExclusiveStartTableName' @::@ 'Maybe' 'Text'
--
-- * 'ltLimit' @::@ 'Maybe' 'Natural'
--
listTables :: ListTables
listTables = ListTables
    { _ltExclusiveStartTableName = Nothing
    , _ltLimit                   = Nothing
    }

-- | The first table name that this operation will evaluate. Use the value
-- that was returned for LastEvaluatedTableName in a previous operation, so
-- that you can obtain the next page of results.
ltExclusiveStartTableName :: Lens' ListTables (Maybe Text)
ltExclusiveStartTableName =
    lens _ltExclusiveStartTableName
        (\s a -> s { _ltExclusiveStartTableName = a })

-- | A maximum number of table names to return. If this parameter is not
-- specified, the limit is 100.
ltLimit :: Lens' ListTables (Maybe Natural)
ltLimit = lens _ltLimit (\s a -> s { _ltLimit = a })
    . mapping _Nat

instance ToPath ListTables where
    toPath = const "/"

instance ToQuery ListTables where
    toQuery = const mempty

instance ToHeaders ListTables

instance ToBody ListTables where
    toBody = toBody . encode . _ltExclusiveStartTableName

data ListTablesResponse = ListTablesResponse
    { _ltrLastEvaluatedTableName :: Maybe Text
    , _ltrTableNames             :: [Text]
    } deriving (Eq, Ord, Show, Generic)

-- | 'ListTablesResponse' constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'ltrLastEvaluatedTableName' @::@ 'Maybe' 'Text'
--
-- * 'ltrTableNames' @::@ ['Text']
--
listTablesResponse :: ListTablesResponse
listTablesResponse = ListTablesResponse
    { _ltrTableNames             = mempty
    , _ltrLastEvaluatedTableName = Nothing
    }

-- | The name of the last table in the current page of results. Use this value
-- as the ExclusiveStartTableName in a new request to obtain the next page
-- of results, until all the table names are returned. If you do not receive
-- a LastEvaluatedTableName value in the response, this means that there are
-- no more table names to be retrieved.
ltrLastEvaluatedTableName :: Lens' ListTablesResponse (Maybe Text)
ltrLastEvaluatedTableName =
    lens _ltrLastEvaluatedTableName
        (\s a -> s { _ltrLastEvaluatedTableName = a })

-- | The names of the tables associated with the current account at the
-- current endpoint. The maximum size of this array is 100. If
-- LastEvaluatedTableName also appears in the output, you can use this value
-- as the ExclusiveStartTableName parameter in a subsequent ListTables
-- request and obtain the next page of results.
ltrTableNames :: Lens' ListTablesResponse [Text]
ltrTableNames = lens _ltrTableNames (\s a -> s { _ltrTableNames = a })

instance AWSRequest ListTables where
    type Sv ListTables = DynamoDB
    type Rs ListTables = ListTablesResponse

    request  = post
    response = jsonResponse $ \h o -> ListTablesResponse
        <$> o .: "LastEvaluatedTableName"
        <*> o .: "TableNames"
