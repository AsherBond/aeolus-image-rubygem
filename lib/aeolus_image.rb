#   Copyright 2011 Red Hat, Inc.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

require 'optparse'
require 'logger'
require File.join(File.dirname(__FILE__), 'aeolus_image/model/warehouse', 'warehouse_client') # Not sure we need this
require File.join(File.dirname(__FILE__), 'aeolus_image/model/warehouse', 'warehouse_model')  # We may be able to factor this out?
require File.join(File.dirname(__FILE__), 'aeolus_image/model/warehouse', 'image')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/warehouse', 'image_build')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/warehouse', 'provider_image')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/warehouse', 'target_image')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/warehouse', 'template')

require File.join(File.dirname(__FILE__), 'aeolus_image/model/factory', 'base')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/factory', 'image')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/factory', 'build')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/factory', 'provider_image')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/factory', 'target_image')
require File.join(File.dirname(__FILE__), 'aeolus_image/model/factory', 'builder')
