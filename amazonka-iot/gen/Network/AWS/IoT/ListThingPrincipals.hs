{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.ListThingPrincipals
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the principals associated with the specified thing.
module Network.AWS.IoT.ListThingPrincipals
    (
    -- * Creating a Request
      listThingPrincipals
    , ListThingPrincipals
    -- * Request Lenses
    , ltpThingName

    -- * Destructuring the Response
    , listThingPrincipalsResponse
    , ListThingPrincipalsResponse
    -- * Response Lenses
    , ltprsPrincipals
    , ltprsResponseStatus
    ) where

import           Network.AWS.IoT.Types
import           Network.AWS.IoT.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The input for the ListThingPrincipal operation.
--
-- /See:/ 'listThingPrincipals' smart constructor.
newtype ListThingPrincipals = ListThingPrincipals'
    { _ltpThingName :: Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListThingPrincipals' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltpThingName'
listThingPrincipals
    :: Text -- ^ 'ltpThingName'
    -> ListThingPrincipals
listThingPrincipals pThingName_ =
    ListThingPrincipals'
    { _ltpThingName = pThingName_
    }

-- | The name of the thing.
ltpThingName :: Lens' ListThingPrincipals Text
ltpThingName = lens _ltpThingName (\ s a -> s{_ltpThingName = a});

instance AWSRequest ListThingPrincipals where
        type Rs ListThingPrincipals =
             ListThingPrincipalsResponse
        request = get ioT
        response
          = receiveJSON
              (\ s h x ->
                 ListThingPrincipalsResponse' <$>
                   (x .?> "principals" .!@ mempty) <*>
                     (pure (fromEnum s)))

instance ToHeaders ListThingPrincipals where
        toHeaders = const mempty

instance ToPath ListThingPrincipals where
        toPath ListThingPrincipals'{..}
          = mconcat
              ["/things/", toBS _ltpThingName, "/principals"]

instance ToQuery ListThingPrincipals where
        toQuery = const mempty

-- | The output from the ListThingPrincipals operation.
--
-- /See:/ 'listThingPrincipalsResponse' smart constructor.
data ListThingPrincipalsResponse = ListThingPrincipalsResponse'
    { _ltprsPrincipals     :: !(Maybe [Text])
    , _ltprsResponseStatus :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListThingPrincipalsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ltprsPrincipals'
--
-- * 'ltprsResponseStatus'
listThingPrincipalsResponse
    :: Int -- ^ 'ltprsResponseStatus'
    -> ListThingPrincipalsResponse
listThingPrincipalsResponse pResponseStatus_ =
    ListThingPrincipalsResponse'
    { _ltprsPrincipals = Nothing
    , _ltprsResponseStatus = pResponseStatus_
    }

-- | The principals.
ltprsPrincipals :: Lens' ListThingPrincipalsResponse [Text]
ltprsPrincipals = lens _ltprsPrincipals (\ s a -> s{_ltprsPrincipals = a}) . _Default . _Coerce;

-- | The response status code.
ltprsResponseStatus :: Lens' ListThingPrincipalsResponse Int
ltprsResponseStatus = lens _ltprsResponseStatus (\ s a -> s{_ltprsResponseStatus = a});
