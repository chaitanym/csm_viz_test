connection: "polaris-ai"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: viz_test_model_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: viz_test_model_default_datagroup

explore: chat_history {}

explore: table_llm {}

explore: me_mql_funnel {}

explore: explore_assistant_refinement_examples {}

explore: explore_assistant_samples {}

explore: explore_assistant_examples {}

