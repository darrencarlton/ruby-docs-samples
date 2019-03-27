# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

def delete_job project_id, location_id, job_name
  # [START cloud_scheduler_create_job]
  require "google/cloud/scheduler"

  # Create a client.
  client = Google::Cloud::Scheduler.new

  # TODO(developer): Uncomment and set the following variables
  # project_id = "PROJECT_ID"
  # location_id = "LOCATION_ID"
  # service_id = "my-serivce"

  # Construct the fully qualified location path.
  job = client.job_path project_id, location_id, job_name

  # Use the client to send the job deletion request.
  client.delete_job job

  puts "Job deleted."
  # [END cloud_scheduler_create_job]
end