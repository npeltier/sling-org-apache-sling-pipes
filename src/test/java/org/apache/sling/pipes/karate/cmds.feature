#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------
Feature: Basic test of an HTTP service provided running in an OSGi framework
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
  Background:
# ----------------------------------------------------------------------------
    * url baseURL

# ----------------------------------------------------------------------------
  Scenario: URL that requires credentials returns 401
# ----------------------------------------------------------------------------
    Given path "system/console"
    When method get
    Then status 401

# ----------------------------------------------------------------------------
  Scenario: non-existing URL, 404
# ----------------------------------------------------------------------------
    Given path "something/else"
    When method get
    Then status 404

    # Ok, ok, not the most sensible test to run
    Then match response contains "Powered by Jetty"
