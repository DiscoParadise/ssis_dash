DECLARE @executionId BIGINT = ?;

SELECT  FORMAT(SWITCHOFFSET(message_time, '-00:00'), 'yyyy-MM-dd HH:mm:ss') AS message_time ,
        [message] ,
        package_name ,
        package_path ,
        subcomponent_name ,
        execution_path ,
        event_name
FROM    [catalog].event_messages
WHERE   operation_id = @executionId
