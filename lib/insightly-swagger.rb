# Common files
require 'insightly-swagger/api_client'
require 'insightly-swagger/api_error'
require 'insightly-swagger/version'
require 'insightly-swagger/configuration'

# Models
require 'insightly-swagger/models/api_activity_set'
require 'insightly-swagger/models/api_activity'
require 'insightly-swagger/models/api_comment'
require 'insightly-swagger/models/api_file_attachment'
require 'insightly-swagger/models/api_file'
require 'insightly-swagger/models/api_contact'
require 'insightly-swagger/models/api_custom_field'
require 'insightly-swagger/models/api_address'
require 'insightly-swagger/models/api_contact_info'
require 'insightly-swagger/models/api_contact_date'
require 'insightly-swagger/models/api_tag'
require 'insightly-swagger/models/api_link'
require 'insightly-swagger/models/api_contact_link'
require 'insightly-swagger/models/api_note'
require 'insightly-swagger/models/api_note_link'
require 'insightly-swagger/models/api_calendar_event'
require 'insightly-swagger/models/api_event_link'
require 'insightly-swagger/models/api_follow'
require 'insightly-swagger/models/api_task'
require 'insightly-swagger/models/api_task_link'
require 'insightly-swagger/models/api_email'
require 'insightly-swagger/models/api_email_link'
require 'insightly-swagger/models/api_activity_set_assignment'
require 'insightly-swagger/models/api_activity_assignment'
require 'insightly-swagger/models/api_country'
require 'insightly-swagger/models/api_currency'
require 'insightly-swagger/models/api_custom_field_group'
require 'insightly-swagger/models/api_custom_field_metadata'
require 'insightly-swagger/models/api_custom_field_option'
require 'insightly-swagger/models/api_category'
require 'insightly-swagger/models/api_user_follow'
require 'insightly-swagger/models/api_instance'
require 'insightly-swagger/models/api_lead'
require 'insightly-swagger/models/api_lead_source'
require 'insightly-swagger/models/api_lead_status'
require 'insightly-swagger/models/api_milestone'
require 'insightly-swagger/models/api_opportunity'
require 'insightly-swagger/models/api_opportunity_state'
require 'insightly-swagger/models/api_link_email_address'
require 'insightly-swagger/models/api_pipeline_change'
require 'insightly-swagger/models/api_pipeline_stage_change'
require 'insightly-swagger/models/api_organisation'
require 'insightly-swagger/models/api_organisation_date'
require 'insightly-swagger/models/api_organisation_link'
require 'insightly-swagger/models/api_pipeline'
require 'insightly-swagger/models/api_pipeline_stage'
require 'insightly-swagger/models/api_project'
require 'insightly-swagger/models/api_relationship'
require 'insightly-swagger/models/api_team_member'
require 'insightly-swagger/models/api_team'
require 'insightly-swagger/models/api_user'

# APIs
require 'insightly-swagger/api/activity_sets_api'
require 'insightly-swagger/api/follows_api'
require 'insightly-swagger/api/pipeline_stages_api'
require 'insightly-swagger/api/countries_api'
require 'insightly-swagger/api/file_attachments_api'
require 'insightly-swagger/api/instance_api'
require 'insightly-swagger/api/pipelines_api'
require 'insightly-swagger/api/team_members_api'
require 'insightly-swagger/api/custom_field_groups_api'
require 'insightly-swagger/api/lead_statuses_api'
require 'insightly-swagger/api/projects_api'
require 'insightly-swagger/api/task_categories_api'
require 'insightly-swagger/api/users_api'
require 'insightly-swagger/api/relationships_api'
require 'insightly-swagger/api/project_categories_api'
require 'insightly-swagger/api/events_api'
require 'insightly-swagger/api/organisations_api'
require 'insightly-swagger/api/opportunity_state_reasons_api'
require 'insightly-swagger/api/teams_api'
require 'insightly-swagger/api/emails_api'
require 'insightly-swagger/api/notes_api'
require 'insightly-swagger/api/tags_api'
require 'insightly-swagger/api/opportunity_categories_api'
require 'insightly-swagger/api/tasks_api'
require 'insightly-swagger/api/comments_api'
require 'insightly-swagger/api/leads_api'
require 'insightly-swagger/api/opportunities_api'
require 'insightly-swagger/api/lead_sources_api'
require 'insightly-swagger/api/currencies_api'
require 'insightly-swagger/api/file_categories_api'
require 'insightly-swagger/api/custom_fields_api'
require 'insightly-swagger/api/milestones_api'
require 'insightly-swagger/api/contacts_api'

module InsightlySwagger
  class << self
    # Customize default settings for the SDK using block.
    #   InsightlySwagger.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
