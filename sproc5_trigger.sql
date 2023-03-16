

-- This is a dbt script to execute a Snowflake task named "my_task"

-- Define a macro to run the task

{% macro run_task(task_name) %}
    {{ execute('EXECUTE TASK ' ~ task_name ~ ) }}
{% endmacro %}

-- Call the macro to run the task

{{ run_task('enrichment_db.tasks.sproc5_trigger') }}
