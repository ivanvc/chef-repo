
# Cookbook Name:: capistrano
# Recipe:: default
#
# Copyright 2011, Example Com
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
#

user node[:capistrano][:user] do
  action :create
  shell "/bin/bash"
  home "/home/" + node[:capistrano][:user]
  supports :manage_home => true
end

directory node[:capistrano][:dir] do
  owner node[:capistrano][:user]
  mode "0755"
  action :create
  recursive true
end
