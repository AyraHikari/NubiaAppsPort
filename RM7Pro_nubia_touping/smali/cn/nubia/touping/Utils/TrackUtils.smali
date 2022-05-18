.class public Lcn/nubia/touping/Utils/TrackUtils;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# static fields
.field private static APP_NAME:Ljava/lang/String; = null

.field private static final GETVIP_SUCCESS:Ljava/lang/String; = "screen_projection_received members"

.field private static final PRIVATE_MODE_USB:Ljava/lang/String; = "setting_usb_screen_projection_privacy_mode_status"

.field private static final PRIVATE_MODE_WIRE:Ljava/lang/String; = "setting_wired_screen_projection_privacy_mode_status"

.field private static final PRIVATE_MODE_WIRELESS:Ljava/lang/String; = "setting_wireless_screen_projection_privacy_mode_status"

.field private static final PROJECTION_DISPLAY_MODE_WIRELESS:Ljava/lang/String; = "setting_screen_projection_display_condition_status"

.field private static final SCREEN_PROJECTION_SUGGEST_POPUP_USED:Ljava/lang/String; = "screen_projection_suggest_popup_used"

.field private static final SCREEN_QUALITY:Ljava/lang/String; = "setting_screen_projection_screen_quality_option"

.field private static final SOUND_COMEBY:Ljava/lang/String; = "setting_screen_projection_sound_source_option"

.field private static final SOUND_COMEBY_USB:Ljava/lang/String; = "setting_screen_projection_usb_sound_source_option"

.field private static final SOUND_COMEBY_WIRE:Ljava/lang/String; = "setting_wired_screen_projection_receiver_output_status"

.field private static final SOUND_DTS_COMEBY:Ljava/lang/String; = "setting_screen_projection_sound_dts_source_option"

.field private static final TAG:Ljava/lang/String; = "TrackUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "com.android.settings"

    sput-object v0, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/touping/Utils/NubiaTrackManager;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static sendBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 259
    const-string v0, "event"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 261
    return-void
.end method

.method public static sendBundleForSuggestPop(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 267
    :cond_0
    const-string v2, ""

    .line 268
    .local v2, "option":Ljava/lang/String;
    const-string v3, ""

    .line 269
    .local v3, "quality":Ljava/lang/String;
    const-string v4, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 270
    .local v1, "mirrorQuality":I
    if-nez v1, :cond_1

    .line 271
    const-string v2, "cancel"

    .line 272
    const-string v3, "HD"

    .line 286
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "event"

    const-string v5, "screen_projection_suggest_popup_used"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v4, "option"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "quality"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v4

    sget-object v5, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 273
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 274
    const-string v2, "cancel"

    .line 275
    const-string v3, "SD"

    goto :goto_1

    .line 276
    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 277
    const-string v2, "cancel"

    .line 278
    const-string v3, "fluent"

    goto :goto_1

    .line 279
    :cond_3
    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    .line 280
    const-string v2, "cancel"

    .line 281
    const-string v3, "anchor"

    goto :goto_1

    .line 283
    :cond_4
    const-string v2, "use"

    .line 284
    const-string v3, "auto"

    goto :goto_1
.end method

.method public static sendDTSSoundBy(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 90
    if-nez p0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v1, "earthdts_dts"

    .line 92
    .local v1, "eventResult":Ljava/lang/String;
    const-string v3, "SOUND_DTS_WIREDLESS"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 93
    .local v2, "voiceBy":I
    if-nez v2, :cond_1

    .line 94
    const-string v1, "external_dts"

    .line 103
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v3, "event_name"

    const-string v4, "setting_screen_projection_sound_dts_source_option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "action_type"

    const-string v4, "option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v3, "report_interval"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 95
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    if-ne v2, v4, :cond_2

    .line 96
    const-string v1, "shotdts_dts"

    goto :goto_1

    .line 97
    :cond_2
    if-ne v2, v4, :cond_3

    .line 98
    const-string v1, "earthdts_dts"

    goto :goto_1

    .line 100
    :cond_3
    const-string v1, "null"

    goto :goto_1
.end method

.method public static sendGetLeBoVIPSuccessEvent()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    const-string v2, "screen_projection_received members"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static sendPrivateModeUSB(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 182
    if-nez p0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v1, ""

    .line 184
    .local v1, "eventValue":Ljava/lang/String;
    const-string v3, "PRIVATE_MODE_USB"

    invoke-static {p0, v3, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 185
    .local v2, "privateMode":Z
    if-eqz v2, :cond_1

    .line 186
    const-string v1, "on"

    .line 190
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v3, "event_name"

    const-string v4, "setting_usb_screen_projection_privacy_mode_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v3, "action_type"

    const-string v4, "switch_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v3, "report_interval"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 188
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "off"

    goto :goto_1
.end method

.method public static sendPrivateModeWire(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 201
    if-nez p0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v1, ""

    .line 203
    .local v1, "eventValue":Ljava/lang/String;
    const-string v3, "PRIVATE_MODE_WIRED"

    invoke-static {p0, v3, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 204
    .local v2, "privateMode":Z
    if-eqz v2, :cond_1

    .line 205
    const-string v1, "on"

    .line 209
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "event_name"

    const-string v4, "setting_wired_screen_projection_privacy_mode_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v3, "action_type"

    const-string v4, "switch_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v3, "report_interval"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 207
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "off"

    goto :goto_1
.end method

.method public static sendPrivateModeWireLess(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 163
    if-nez p0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, ""

    .line 165
    .local v1, "eventValue":Ljava/lang/String;
    const-string v3, "PRIVATE_MODE_WIRELESS"

    invoke-static {p0, v3, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 166
    .local v2, "privateMode":Z
    if-eqz v2, :cond_1

    .line 167
    const-string v1, "on"

    .line 171
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 172
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v3, "event_name"

    const-string v4, "setting_wireless_screen_projection_privacy_mode_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v3, "action_type"

    const-string v4, "switch_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "report_interval"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 169
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "off"

    goto :goto_1
.end method

.method public static sendProjectionDisplayModeWireLess(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 220
    if-nez p0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 221
    :cond_0
    const-string v1, ""

    .line 222
    .local v1, "eventValue":Ljava/lang/String;
    const-string v3, "FLOATING_WINDOW"

    invoke-static {p0, v3, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 223
    .local v2, "mirrorStatus":Z
    if-eqz v2, :cond_1

    .line 224
    const-string v1, "on"

    .line 228
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 229
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v3, "event_name"

    const-string v4, "setting_screen_projection_display_condition_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "action_type"

    const-string v4, "switch_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v3, "report_interval"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 226
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "off"

    goto :goto_1
.end method

.method public static sendScreenQuality(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 137
    if-nez p0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string v2, ""

    .line 139
    .local v2, "result":Ljava/lang/String;
    const-string v3, "SCREEN_PROJECTION_QUALITY_20210706"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 140
    .local v1, "mirrorQuality":I
    if-nez v1, :cond_1

    .line 141
    const-string v2, "HD"

    .line 152
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "event_name"

    const-string v4, "setting_screen_projection_screen_quality_option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v3, "action_type"

    const-string v4, "option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v3, "report_interval"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 142
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    if-ne v1, v5, :cond_2

    .line 143
    const-string v2, "SD"

    goto :goto_1

    .line 144
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 145
    const-string v2, "fluent"

    goto :goto_1

    .line 146
    :cond_3
    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    .line 147
    const-string v2, "anchor"

    goto :goto_1

    .line 149
    :cond_4
    const-string v2, "auto"

    goto :goto_1
.end method

.method public static sendSoundBy(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 43
    if-nez p0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 44
    :cond_0
    const-string v1, "device"

    .line 45
    .local v1, "eventResult":Ljava/lang/String;
    const-string v3, "SOUND_SOURCE"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 46
    .local v2, "voiceBy":I
    if-ne v2, v5, :cond_1

    .line 47
    const-string v1, "both"

    .line 56
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "event_name"

    const-string v4, "setting_screen_projection_sound_source_option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "action_type"

    const-string v4, "option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "report_interval"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 48
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    if-ne v2, v4, :cond_2

    .line 49
    const-string v1, "device"

    goto :goto_1

    .line 50
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 51
    const-string v1, "microphone"

    goto :goto_1

    .line 53
    :cond_3
    const-string v1, "null"

    goto :goto_1
.end method

.method public static sendSoundSiwtchWire(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 241
    if-nez p0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v1, ""

    .line 243
    .local v1, "eventValue":Ljava/lang/String;
    const-string v3, "WIRED_SOUND_OUTPUT"

    invoke-static {p0, v3, v5}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPreferencesBooleanByKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 244
    .local v2, "privateMode":Z
    if-eqz v2, :cond_1

    .line 245
    const-string v1, "on"

    .line 249
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "event_name"

    const-string v4, "setting_wired_screen_projection_receiver_output_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v3, "action_type"

    const-string v4, "switch_status"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v3, "report_interval"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 247
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v1, "off"

    goto :goto_1
.end method

.method public static sendUSBDTSSoundBy(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    .line 113
    if-nez p0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v1, "device"

    .line 115
    .local v1, "eventResult":Ljava/lang/String;
    const-string v3, "SOUND_DTS_WIRED"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 116
    .local v2, "voiceBy":I
    if-nez v2, :cond_1

    .line 117
    const-string v1, "earthdts_dts"

    .line 126
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v3, "event_name"

    const-string v4, "setting_screen_projection_sound_dts_source_option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v3, "action_type"

    const-string v4, "option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v3, "report_interval"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 118
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    if-ne v2, v4, :cond_2

    .line 119
    const-string v1, "shotdts_dts"

    goto :goto_1

    .line 120
    :cond_2
    if-ne v2, v4, :cond_3

    .line 121
    const-string v1, "earthdts_dts"

    goto :goto_1

    .line 123
    :cond_3
    const-string v1, "null"

    goto :goto_1
.end method

.method public static sendUSBSoundBy(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 66
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v1, "device"

    .line 68
    .local v1, "eventResult":Ljava/lang/String;
    const-string v3, "SOUND_SOURCE_USB"

    invoke-static {p0, v3, v4}, Lcn/nubia/touping/Utils/SharedPreferenceUtil;->getSharedPrefenrencesIntByKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 69
    .local v2, "voiceBy":I
    if-ne v2, v5, :cond_1

    .line 70
    const-string v1, "both"

    .line 79
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "package_name"

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "event_name"

    const-string v4, "setting_screen_projection_sound_source_option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v3, "action_type"

    const-string v4, "option"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "action_value"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "report_interval"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 85
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v3

    sget-object v4, Lcn/nubia/touping/Utils/TrackUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 71
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    if-ne v2, v4, :cond_2

    .line 72
    const-string v1, "device"

    goto :goto_1

    .line 73
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 74
    const-string v1, "microphone"

    goto :goto_1

    .line 76
    :cond_3
    const-string v1, "null"

    goto :goto_1
.end method

.method public static uninit()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcn/nubia/touping/Utils/NubiaTrackManager;->getInstance()Lcn/nubia/touping/Utils/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/touping/Utils/NubiaTrackManager;->unbindServiceInvoked()V

    .line 35
    return-void
.end method
