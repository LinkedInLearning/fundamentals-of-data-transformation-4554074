CREATE SCHEMA nps_public_data;



CREATE TABLE nps_public_data.webcams(longitude DOUBLE, url VARCHAR, tags VARCHAR[], status VARCHAR, relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], credit VARCHAR, images STRUCT(crops STRUCT(url VARCHAR, aspectRatio DOUBLE)[], caption VARCHAR, description VARCHAR, title VARCHAR, altText VARCHAR, credit VARCHAR, url VARCHAR)[], geometryPoiId VARCHAR, isStreaming BOOLEAN, description VARCHAR, title VARCHAR, latitude DOUBLE, statusMessage VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.visitorcenters(lastIndexedDate VARCHAR, relevanceScore DOUBLE, multimedia STRUCT("type" VARCHAR, url VARCHAR, id VARCHAR, title VARCHAR)[], addresses STRUCT("type" VARCHAR, line2 VARCHAR, line1 VARCHAR, stateCode VARCHAR, countryCode VARCHAR, line3 VARCHAR, city VARCHAR, provinceTerritoryCode VARCHAR, postalCode VARCHAR)[], images STRUCT(url VARCHAR, caption VARCHAR, altText VARCHAR, title VARCHAR, crops VARCHAR[], credit VARCHAR)[], directionsInfo VARCHAR, amenities VARCHAR[], passportStampLocationDescription VARCHAR, directionsUrl VARCHAR, geometryPoiId VARCHAR, "name" VARCHAR, description VARCHAR, isPassportStampLocation BIGINT, operatingHours STRUCT("name" VARCHAR, standardHours STRUCT(friday VARCHAR, sunday VARCHAR, thursday VARCHAR, tuesday VARCHAR, saturday VARCHAR, monday VARCHAR, wednesday VARCHAR), description VARCHAR, exceptions STRUCT(endDate DATE, "name" VARCHAR, startDate DATE, exceptionHours STRUCT(friday VARCHAR, sunday VARCHAR, thursday VARCHAR, tuesday VARCHAR, saturday VARCHAR, monday VARCHAR, wednesday VARCHAR))[])[], audioDescription VARCHAR, parkCode VARCHAR, latLong VARCHAR, passportStampImages STRUCT(url VARCHAR, caption VARCHAR, title VARCHAR, altText VARCHAR, crops STRUCT(url VARCHAR, aspectRatio DOUBLE)[], description VARCHAR, credit VARCHAR)[], latitude DOUBLE, url VARCHAR, longitude DOUBLE, contacts STRUCT(emailAddresses STRUCT(emailAddress VARCHAR, description VARCHAR)[], phoneNumbers STRUCT("extension" VARCHAR, "type" VARCHAR, description VARCHAR, phoneNumber VARCHAR)[]), id VARCHAR);
CREATE TABLE nps_public_data.tours(relevanceScore DOUBLE, durationUnit VARCHAR, durationMax BIGINT, topics STRUCT("name" VARCHAR, id VARCHAR)[], stops STRUCT(audioFileUrl VARCHAR, ordinal BIGINT, assetName VARCHAR, audioTranscript VARCHAR, assetType VARCHAR, directionsToNextStop VARCHAR, assetId VARCHAR, id VARCHAR, significance VARCHAR)[], park STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR), activities STRUCT("name" VARCHAR, id VARCHAR)[], tags VARCHAR[], images STRUCT(url VARCHAR, caption VARCHAR, altText VARCHAR, title VARCHAR, crops STRUCT(url VARCHAR, aspectRatio DOUBLE)[], credit VARCHAR)[], durationMin BIGINT, description VARCHAR, title VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.topics__parks(parks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], "name" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.topics("name" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.thingstodo(duration VARCHAR, timeOfDay VARCHAR[], reservationDescription VARCHAR, longDescription VARCHAR, doFeesApply BOOLEAN, activities STRUCT("name" VARCHAR, id VARCHAR)[], arePetsPermittedWithRestrictions BOOLEAN, activityDescription VARCHAR, feeDescription VARCHAR, isReservationRequired BOOLEAN, longitude DOUBLE, timeOfDayDescription VARCHAR, arePetsPermitted BOOLEAN, relatedOrganizations STRUCT("name" VARCHAR, url VARCHAR, id VARCHAR)[], accessibilityInformation VARCHAR, relevanceScore BIGINT, petsDescription VARCHAR, durationDescription VARCHAR, seasonDescription VARCHAR, season VARCHAR[], geometryPoiId VARCHAR, url VARCHAR, tags VARCHAR[], relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], "location" VARCHAR, age VARCHAR, credit VARCHAR, images STRUCT(crops STRUCT(url VARCHAR, aspectRatio DOUBLE)[], caption VARCHAR, description VARCHAR, title VARCHAR, altText VARCHAR, credit VARCHAR, url VARCHAR)[], amenities VARCHAR[], topics STRUCT("name" VARCHAR, id VARCHAR)[], shortDescription VARCHAR, title VARCHAR, locationDescription VARCHAR, ageDescription VARCHAR, latitude DOUBLE, id VARCHAR);
CREATE TABLE nps_public_data.places(relevanceScore DOUBLE, multimedia STRUCT("type" VARCHAR, url VARCHAR, id VARCHAR, title VARCHAR)[], "location" VARCHAR, managedByOrg VARCHAR, locationDescription VARCHAR, quickFacts STRUCT("value" VARCHAR, "name" VARCHAR, id VARCHAR)[], isManagedByNps BIGINT, geometryPoiId VARCHAR, isOpenToPublic BIGINT, bodyText VARCHAR, passportStampLocationDescription VARCHAR, audioDescription VARCHAR, longitude DOUBLE, url VARCHAR, relatedOrganizations STRUCT("name" VARCHAR, url VARCHAR, id VARCHAR)[], tags VARCHAR[], isPassportStampLocation BIGINT, relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], npmapId VARCHAR, latLong VARCHAR, isMapPinHidden BIGINT, credit VARCHAR, images STRUCT(crops STRUCT(url VARCHAR, aspectRatio DOUBLE)[], caption VARCHAR, description VARCHAR, title VARCHAR, altText VARCHAR, credit VARCHAR, url VARCHAR)[], listingDescription VARCHAR, amenities VARCHAR[], title VARCHAR, passportStampImages STRUCT(url VARCHAR, caption VARCHAR, title VARCHAR, altText VARCHAR, crops STRUCT(url VARCHAR, aspectRatio DOUBLE)[], description VARCHAR, credit VARCHAR)[], latitude DOUBLE, managedByUrl VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.people(relevanceScore BIGINT, multimedia STRUCT("type" VARCHAR, url VARCHAR, id VARCHAR, title VARCHAR)[], "location" VARCHAR, managedByOrg VARCHAR, locationDescription VARCHAR, quickFacts STRUCT("value" VARCHAR, "name" VARCHAR, id VARCHAR)[], isManagedByNps BIGINT, geometryPoiId VARCHAR, isOpenToPublic BIGINT, bodyText VARCHAR, passportStampLocationDescription VARCHAR, audioDescription VARCHAR, longitude DOUBLE, url VARCHAR, relatedOrganizations STRUCT("name" VARCHAR, url VARCHAR, id VARCHAR)[], tags VARCHAR[], isPassportStampLocation BIGINT, relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], npmapId VARCHAR, latLong VARCHAR, isMapPinHidden BIGINT, credit VARCHAR, images STRUCT(crops STRUCT(url VARCHAR, aspectRatio DOUBLE)[], caption VARCHAR, description VARCHAR, title VARCHAR, altText VARCHAR, credit VARCHAR, url VARCHAR)[], listingDescription VARCHAR, amenities VARCHAR[], title VARCHAR, passportStampImages STRUCT(url VARCHAR, caption VARCHAR, title VARCHAR, altText VARCHAR, crops STRUCT(url VARCHAR, aspectRatio BIGINT)[], description VARCHAR, credit VARCHAR)[], latitude DOUBLE, managedByUrl VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.passportstamplocations(parks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], "type" VARCHAR, "label" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.parks(relevanceScore BIGINT, designation VARCHAR, weatherInfo VARCHAR, addresses STRUCT("type" VARCHAR, line2 VARCHAR, line1 VARCHAR, stateCode VARCHAR, countryCode VARCHAR, line3 VARCHAR, city VARCHAR, provinceTerritoryCode VARCHAR, postalCode VARCHAR)[], operatingHours STRUCT("name" VARCHAR, standardHours STRUCT(friday VARCHAR, sunday VARCHAR, thursday VARCHAR, tuesday VARCHAR, saturday VARCHAR, monday VARCHAR, wednesday VARCHAR), description VARCHAR, exceptions STRUCT(endDate DATE, "name" VARCHAR, startDate DATE, exceptionHours STRUCT(friday VARCHAR, sunday VARCHAR, thursday VARCHAR, tuesday VARCHAR, saturday VARCHAR, monday VARCHAR, wednesday VARCHAR))[])[], entrancePasses STRUCT(description VARCHAR, title VARCHAR, "cost" DOUBLE)[], "name" VARCHAR, description VARCHAR, directionsUrl VARCHAR, fees VARCHAR[], topics STRUCT("name" VARCHAR, id VARCHAR)[], states VARCHAR, entranceFees STRUCT(description VARCHAR, title VARCHAR, "cost" DOUBLE)[], contacts STRUCT(emailAddresses STRUCT(emailAddress VARCHAR, description VARCHAR)[], phoneNumbers STRUCT("extension" BIGINT, "type" VARCHAR, description VARCHAR, phoneNumber VARCHAR)[]), activities STRUCT("name" VARCHAR, id VARCHAR)[], url VARCHAR, longitude DOUBLE, id VARCHAR, images STRUCT(url VARCHAR, caption VARCHAR, altText VARCHAR, title VARCHAR, credit VARCHAR)[], directionsInfo VARCHAR, fullName VARCHAR, parkCode VARCHAR, latLong VARCHAR, latitude DOUBLE);
CREATE TABLE nps_public_data.parkinglots(liveStatus STRUCT(expirationDate TIMESTAMP WITH TIME ZONE, description VARCHAR, estimatedWaitTimeInMinutes BIGINT, occupancy VARCHAR, isActive BOOLEAN), accessibility STRUCT(adaFacilitiesDescription VARCHAR, numberofAdaStepFreeSpaces BIGINT, numberofAdaVanAccessbileSpaces BIGINT, numberofAdaSpaces BIGINT, totalSpaces BIGINT, numberOfOversizeVehicleSpaces BIGINT, isLotAccessibleToDisabled BOOLEAN), images STRUCT(url VARCHAR, caption VARCHAR, altText VARCHAR, title VARCHAR, credit VARCHAR)[], operatingHours STRUCT("name" VARCHAR, standardHours STRUCT(friday VARCHAR, sunday VARCHAR, thursday VARCHAR, tuesday VARCHAR, saturday VARCHAR, monday VARCHAR, wednesday VARCHAR), description VARCHAR, exceptions STRUCT(endDate DATE, "name" VARCHAR, startDate DATE, exceptionHours STRUCT(friday VARCHAR, sunday VARCHAR, thursday VARCHAR, tuesday VARCHAR, saturday VARCHAR, monday VARCHAR, wednesday VARCHAR))[])[], fees STRUCT(description VARCHAR, title VARCHAR, "cost" DOUBLE)[], "name" VARCHAR, geometryPoiId VARCHAR, webcamUrl VARCHAR, managedByOrganization VARCHAR, latitude DOUBLE, description VARCHAR, altName VARCHAR, timeZone VARCHAR, relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], longitude DOUBLE, contacts STRUCT(emailAddresses STRUCT(emailAddress VARCHAR, description VARCHAR)[], phoneNumbers STRUCT("extension" VARCHAR, "type" VARCHAR, description VARCHAR, phoneNumber VARCHAR)[]), id VARCHAR);
CREATE TABLE nps_public_data.newsreleases(lastIndexedDate TIMESTAMP WITH TIME ZONE, credit VARCHAR, geometryPoiId VARCHAR, longitude VARCHAR, url VARCHAR, relatedOrganizations STRUCT("name" VARCHAR, url VARCHAR, id VARCHAR)[], relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], image STRUCT(caption VARCHAR, description VARCHAR, title VARCHAR, altText VARCHAR, credit VARCHAR, url VARCHAR), latitude VARCHAR, abstract VARCHAR, releaseDate TIMESTAMP WITH TIME ZONE, title VARCHAR, parkCode VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.multimedia__videos(versions STRUCT(fileType VARCHAR, url VARCHAR, aspectRatio DOUBLE, heightPixels BIGINT, widthPixels BIGINT, fileSizeKb DOUBLE)[], hasOpenCaptions BOOLEAN, audioDescribedBuiltIn BOOLEAN, callToActionUrl VARCHAR, callToAction VARCHAR, transcript VARCHAR, isBRoll BOOLEAN, credit VARCHAR, durationMs BIGINT, geometryPoiId VARCHAR, audioDescriptionUrl VARCHAR, audioDescription VARCHAR, latitude DOUBLE, captionFiles STRUCT(fileType VARCHAR, url VARCHAR, "language" VARCHAR)[], longitude DOUBLE, tags VARCHAR[], permalinkUrl VARCHAR, relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], description VARCHAR, splashImage STRUCT(url VARCHAR), title VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.multimedia__galleries__assets(tags VARCHAR[], copyright VARCHAR, constraintsInfo STRUCT(grantingRights VARCHAR, "constraint" VARCHAR), permalinkUrl VARCHAR, relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], description VARCHAR, altText VARCHAR, ordinal BIGINT, title VARCHAR, credit VARCHAR, fileInfo STRUCT(fileSizeKb BIGINT, heightPixels BIGINT, widthPixels BIGINT, fileType VARCHAR, url VARCHAR), id VARCHAR);
CREATE TABLE nps_public_data.multimedia__galleries(tags VARCHAR[], assetCount BIGINT, relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], copyright VARCHAR, images STRUCT(description VARCHAR, title VARCHAR, altText VARCHAR, url VARCHAR)[], description VARCHAR, title VARCHAR, constraintsInfo STRUCT(grantingRights VARCHAR, "constraint" VARCHAR), url VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.multimedia__audio(versions STRUCT(url VARCHAR, fileType VARCHAR, fileSize BIGINT)[], callToActionUrl VARCHAR, callToAction VARCHAR, transcript VARCHAR, credit VARCHAR, latitude DOUBLE, longitude DOUBLE, tags VARCHAR[], durationMs BIGINT, permalinkUrl VARCHAR, relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], description VARCHAR, splashImage STRUCT(url VARCHAR), title VARCHAR, geometryPoiId VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.meta(ts VARCHAR, endpoint VARCHAR, total BIGINT, "start" BIGINT, "limit" BIGINT, "table" VARCHAR, pagesize BIGINT, pagenumber BIGINT, json_size BIGINT, jsonl_size BIGINT, dates VARCHAR);
CREATE TABLE nps_public_data.lessonplans(duration VARCHAR, subject VARCHAR[], parks VARCHAR[], questionObjective VARCHAR, title VARCHAR, gradeLevel VARCHAR, url VARCHAR, commonCore STRUCT(elaStandards VARCHAR[], mathStandards VARCHAR[], additionalStandards VARCHAR, stateStandards VARCHAR), id VARCHAR);
CREATE TABLE nps_public_data.feespasses(fees STRUCT(npsGovPurchaseUrl VARCHAR, description VARCHAR, exceptions VARCHAR, id VARCHAR, "cost" DOUBLE, entranceFeeType VARCHAR, timedEntryLocation VARCHAR, timedEntryShortDescription VARCHAR, endDate STRUCT("day" BIGINT, holiday VARCHAR, "month" BIGINT), informationUrl VARCHAR, recGovPurchaseUrl VARCHAR, payGovPurchaseUrl VARCHAR, paymentDescription VARCHAR, startDate STRUCT("day" BIGINT, holiday VARCHAR, "month" BIGINT))[], isParkingFeePossible BOOLEAN, entranceFeeDescription VARCHAR, passes STRUCT(npsGovPurchaseUrl VARCHAR, id VARCHAR, recGovPurchaseUrl VARCHAR, informationUrl VARCHAR, category VARCHAR, image STRUCT(url VARCHAR, caption VARCHAR, altText VARCHAR, title VARCHAR, credit VARCHAR)[], "cost" DOUBLE, description VARCHAR, paymentDescription VARCHAR, payGovPurchaseUrl VARCHAR, exceptions VARCHAR)[], cashless VARCHAR, entrancePassDescription VARCHAR, isInteragencyPassAccepted BOOLEAN, parkingDetailsUrl VARCHAR, isFeeFreePark BOOLEAN, feesAtWorkUrl VARCHAR, parkCode VARCHAR);
CREATE TABLE nps_public_data.events(tags VARCHAR[], subjectname VARCHAR, recurrencerule VARCHAR, sitetype VARCHAR, date DATE, parkfullname VARCHAR, timeinfo VARCHAR, regresinfo VARCHAR, sitecode VARCHAR, times STRUCT(sunsetend BOOLEAN, timeend VARCHAR, sunrisestart BOOLEAN, timestart VARCHAR)[], id VARCHAR, categoryid BIGINT, isregresrequired BOOLEAN, latitude DOUBLE, imageidlist VARCHAR, category VARCHAR, recurrencedatestart DATE, isfree BOOLEAN, images STRUCT(url VARCHAR, caption VARCHAR, ordinal BIGINT, title VARCHAR, altText VARCHAR, imageId BIGINT, credit VARCHAR, path VARCHAR)[], datestart DATE, regresurl VARCHAR, organizationname VARCHAR, contacttelephonenumber VARCHAR, description VARCHAR, infourl VARCHAR, contactemailaddress VARCHAR, datetimecreated VARCHAR, eventid BIGINT, updateuser VARCHAR, "types" VARCHAR[], portalname VARCHAR, dates DATE[], longitude DOUBLE, createuser VARCHAR, recurrencedateend DATE, "location" VARCHAR, title VARCHAR, feeinfo VARCHAR, isrecurring BOOLEAN, contactname VARCHAR, isallday BOOLEAN, dateend DATE, datetimeupdated VARCHAR);
CREATE TABLE nps_public_data.campgrounds(lastIndexedDate VARCHAR, relevanceScore DOUBLE, accessibility STRUCT(classifications VARCHAR[], accessRoads VARCHAR[], fireStovePolicy VARCHAR, trailerAllowed BIGINT, adaInfo VARCHAR, trailerMaxLength BIGINT, cellPhoneInfo VARCHAR, rvInfo VARCHAR, additionalInfo VARCHAR, rvAllowed BIGINT, rvMaxLength BIGINT, wheelchairAccess VARCHAR, internetInfo VARCHAR), numberOfSitesFirstComeFirstServe BIGINT, numberOfSitesReservable BIGINT, multimedia STRUCT("type" VARCHAR, url VARCHAR, id VARCHAR, title VARCHAR)[], weatherOverview VARCHAR, images STRUCT(url VARCHAR, caption VARCHAR, altText VARCHAR, title VARCHAR, crops VARCHAR[], credit VARCHAR)[], addresses STRUCT("type" VARCHAR, line2 VARCHAR, line1 VARCHAR, stateCode VARCHAR, countryCode VARCHAR, line3 VARCHAR, city VARCHAR, provinceTerritoryCode VARCHAR, postalCode VARCHAR)[], campsites STRUCT(walkBoatTo BIGINT, tentOnly BIGINT, horse BIGINT, rvOnly BIGINT, electricalHookups BIGINT, "group" BIGINT, other BIGINT, totalSites BIGINT), fees STRUCT(description VARCHAR, title VARCHAR, "cost" DOUBLE)[], amenities STRUCT(foodStorageLockers VARCHAR, potableWater VARCHAR[], trashRecyclingCollection VARCHAR, staffOrVolunteerHostOnsite VARCHAR, iceAvailableForSale VARCHAR, amphitheater VARCHAR, firewoodForSale VARCHAR, dumpStation VARCHAR, campStore VARCHAR, cellPhoneReception VARCHAR, showers VARCHAR[], internetConnectivity VARCHAR, laundry VARCHAR, toilets VARCHAR[]), isPassportStampLocation BIGINT, regulationsurl VARCHAR, directionsOverview VARCHAR, reservationInfo VARCHAR, passportStampLocationDescription VARCHAR, description VARCHAR, directionsUrl VARCHAR, geometryPoiId VARCHAR, "name" VARCHAR, operatingHours STRUCT("name" VARCHAR, standardHours STRUCT(friday VARCHAR, sunday VARCHAR, thursday VARCHAR, tuesday VARCHAR, saturday VARCHAR, monday VARCHAR, wednesday VARCHAR), description VARCHAR, exceptions STRUCT(endDate DATE, "name" VARCHAR, startDate DATE, exceptionHours STRUCT(friday VARCHAR, sunday VARCHAR, thursday VARCHAR, tuesday VARCHAR, saturday VARCHAR, monday VARCHAR, wednesday VARCHAR))[])[], reservationUrl VARCHAR, audioDescription VARCHAR, parkCode VARCHAR, latLong VARCHAR, regulationsOverview VARCHAR, passportStampImages STRUCT(url VARCHAR, caption VARCHAR, title VARCHAR, altText VARCHAR, crops STRUCT(url VARCHAR, aspectRatio DOUBLE)[], description VARCHAR, credit VARCHAR)[], latitude DOUBLE, url VARCHAR, longitude DOUBLE, contacts STRUCT(emailAddresses STRUCT(emailAddress VARCHAR, description VARCHAR)[], phoneNumbers STRUCT("extension" BIGINT, "type" VARCHAR, description VARCHAR, phoneNumber VARCHAR)[]), id VARCHAR);
CREATE TABLE nps_public_data.articles(credit VARCHAR, geometryPoiId VARCHAR, longitude DOUBLE, url VARCHAR, tags VARCHAR[], relatedParks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], listingImage STRUCT(caption VARCHAR, description VARCHAR, title VARCHAR, altText VARCHAR, credit VARCHAR, url VARCHAR), listingDescription VARCHAR, title VARCHAR, latLong VARCHAR, latitude DOUBLE, id VARCHAR);
CREATE TABLE nps_public_data.amenities__parkvisitorcenters(parks STRUCT("name" VARCHAR, url VARCHAR, fullName VARCHAR, parkCode VARCHAR, visitorcenters STRUCT("name" VARCHAR, url VARCHAR, id VARCHAR)[], designation VARCHAR, states VARCHAR)[], "name" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.amenities__parksvisitorcenters(parks STRUCT("name" VARCHAR, url VARCHAR, fullName VARCHAR, parkCode VARCHAR, visitorcenters STRUCT("name" VARCHAR, url VARCHAR, id VARCHAR)[], designation VARCHAR, states VARCHAR)[], "name" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.amenities__parksplaces(parks STRUCT("name" VARCHAR, url VARCHAR, fullName VARCHAR, designation VARCHAR, parkCode VARCHAR, places STRUCT(url VARCHAR, id VARCHAR, title VARCHAR)[], states VARCHAR)[], "name" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.amenities__parks(parks STRUCT("name" VARCHAR, url VARCHAR, fullName VARCHAR, designation VARCHAR, parkCode VARCHAR, places STRUCT(url VARCHAR, id VARCHAR, title VARCHAR)[], states VARCHAR)[], "name" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.amenities(categories VARCHAR[], "name" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.alerts(relatedRoadEvents STRUCT("type" VARCHAR, url VARCHAR, id VARCHAR, title VARCHAR)[], category VARCHAR, description VARCHAR, title VARCHAR, parkCode VARCHAR, lastIndexedDate TIMESTAMP WITH TIME ZONE, url VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.activities__parks(parks STRUCT("name" VARCHAR, fullName VARCHAR, parkCode VARCHAR, designation VARCHAR, url VARCHAR, states VARCHAR)[], "name" VARCHAR, id VARCHAR);
CREATE TABLE nps_public_data.activities("name" VARCHAR, id VARCHAR);