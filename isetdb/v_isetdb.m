% v_isetdb
%
% Validation tests for the isetdb connection
%

thisDB = isetdb;

collectionName = 'PBRTResources';

if ~ismember(collectionName,thisDB.connection.CollectionNames)
    error("Collection %s not found/n", collectionName);
end

%% Find available categories

% TODO

%% For this collection (PBRTResources) find buses and cars


assets = thisDB.contentFind(collectionName, 'category','bus','type','asset', 'show',true);
fprintf('Found %d bus assets.\n',numel(assets));

assets = thisDB.contentFind(collectionName, 'category','car','type','asset');
fprintf('Found %d car assets.\n',numel(assets));

assets = thisDB.contentFind(collectionName, 'category','car','type','scene', 'show',true);
fprintf('Found %d car scenes.\n',numel(assets));

assets = thisDB.contentFind(collectionName, 'category','car','type','asset');
fprintf('Found %d cars\n',numel(assets));

%%
