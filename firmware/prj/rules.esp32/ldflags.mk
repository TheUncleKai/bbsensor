# Copyright (C) 2019, Kai Raphahn
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

LDFLAGS = \
    -nostdlib \
    -L$(ESP32_LIB) \
    -L$(ESP32_LD) \
    -T esp32_out.ld \
    -T esp32.common.ld \
    -T esp32.rom.ld \
    -T esp32.peripherals.ld \
    -T esp32.rom.libgcc.ld \
    -T esp32.rom.spiram_incompatible_fns.ld \
    -u ld_include_panic_highint_hdl \
    -u call_user_start_cpu0 \
    -Wl,--gc-sections \
    -Wl,-static \
    -Wl,--undefined=uxTopUsedPriority \
    -u __cxa_guard_dummy \
    -u __cxx_fatal_exception

LDLIBS = \
    -lgcc -lesp32 -lphy -lesp_http_client -lmbedtls -lrtc -lesp_http_server -lbtdm_app -lspiffs \
    -lbootloader_support -lmdns -lnvs_flash -lfatfs -lpp -lnet80211 -ljsmn -lface_detection -llibsodium \
    -lvfs -ldl_lib -llog -lfreertos -lcxx -lsmartconfig_ack -lxtensa-debug-module -lheap -ltcpip_adapter \
    -lmqtt -lulp -lfd -lfb_gfx -lnghttp -lprotocomm -lsmartconfig -lm -lethernet -limage_util -lc_nano \
    -lsoc -ltcp_transport -lc -lmicro-ecc -lface_recognition -ljson -lwpa_supplicant -lmesh -lesp_https_ota \
    -lwpa2 -lexpat -llwip -lwear_levelling -lapp_update -ldriver -lbt -lespnow -lcoap -lasio -lnewlib \
    -lconsole -lapp_trace -lesp32-camera -lhal -lprotobuf-c -lsdmmc -lcore -lpthread -lcoexist -lfreemodbus \
    -lspi_flash -lesp-tls -lwpa -lwifi_provisioning -lwps -lesp_adc_cal -lesp_event -lopenssl -lesp_ringbuf \
    -lfr -lstdc++
