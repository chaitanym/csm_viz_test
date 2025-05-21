view: chat_history {
  sql_table_name: `explore_assistant.chat_history` ;;

  dimension: actor {
    type: string
    sql: ${TABLE}.actor ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  dimension: message_type {
    type: string
    sql: ${TABLE}.message_type ;;
  }
  dimension: thread_id {
    type: string
    sql: ${TABLE}.thread_id ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}
