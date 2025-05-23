# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

class TestStringViewDataType < Test::Unit::TestCase
  def test_type
    data_type = Arrow::StringViewDataType.new
    assert_equal(Arrow::Type::STRING_VIEW, data_type.id)
  end

  def test_name
    data_type = Arrow::StringViewDataType.new
    assert_equal("utf8_view", data_type.name)
  end

  def test_to_s
    data_type = Arrow::StringViewDataType.new
    assert_equal("string_view", data_type.to_s)
  end

  def test_export
    data_type = Arrow::StringViewDataType.new
    c_abi_schema = data_type.export
    assert_equal(data_type,
                 Arrow::DataType.import(c_abi_schema))
  end
end
