# ===----------------------------------------------------------------------=== #
# Copyright (c) 2025, Modular Inc. All rights reserved.
#
# Licensed under the Apache License v2.0 with LLVM Exceptions:
# https://llvm.org/LICENSE.txt
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ===----------------------------------------------------------------------=== #
# REQUIRES: has_not
# RUN: not mojo %s 2>&1

from pathlib import Path
from sys import DLHandle


def check_invalid_dlhandle():
    _ = DLHandle("/an/invalid/library")


def check_invalid_dlhandle_path():
    _ = DLHandle(Path("/an/invalid/library"))


def main():
    check_invalid_dlhandle()
    check_invalid_dlhandle_path()
