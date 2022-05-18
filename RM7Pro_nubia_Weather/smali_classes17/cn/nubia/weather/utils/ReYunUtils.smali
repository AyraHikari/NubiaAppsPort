.class public Lcn/nubia/weather/utils/ReYunUtils;
.super Ljava/lang/Object;
.source "ReYunUtils.java"


# static fields
.field private static APP_NAME:Ljava/lang/String; = null

.field public static final LINK_TYPE_AIR:Ljava/lang/String; = "AIR"

.field public static final LINK_TYPE_ALERT:Ljava/lang/String; = "ALERT"

.field public static final LINK_TYPE_CURRENT_TEMP:Ljava/lang/String; = "CURRENT_TEMP"

.field public static final LINK_TYPE_DAILY:Ljava/lang/String; = "DAILY"

.field public static final LINK_TYPE_FIFTY_FORECAST:Ljava/lang/String; = "FIFTY_FORECAST"

.field public static final LINK_TYPE_HOURLY:Ljava/lang/String; = "HOURLY"

.field public static final LINK_TYPE_INDICES:Ljava/lang/String; = "INDEX"

.field public static final LINK_TYPE_LOGO:Ljava/lang/String; = "LOGO"

.field private static final TAG:Ljava/lang/String; = "ReYunUtils"

.field private static isOpen:Z

.field private static sessionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "cn.nubia.weather"

    sput-object v0, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    .line 21
    const-string v0, "HomeActivity"

    sput-object v0, Lcn/nubia/weather/utils/ReYunUtils;->sessionName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initReYun(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v0, "RY initReYun"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 43
    :try_start_0
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->isSupportReyun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/NubiaTrackManager;->init(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 50
    return-void

    .line 48
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public static onAddCity(Z)V
    .locals 4
    .param p0, "reach_limitation"    # Z

    .prologue
    .line 91
    sget-boolean v0, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    const-string v2, "city_add_city"

    const-string v3, "reach_limitation"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public static onChangeCityOrder(Ljava/lang/String;II)V
    .locals 3
    .param p0, "city"    # Ljava/lang/String;
    .param p1, "start_order"    # I
    .param p2, "end_order"    # I

    .prologue
    .line 124
    sget-boolean v1, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v1, :cond_0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const-string v1, "ReYunUtils"

    const-string v2, "onChangeCityOrder invalid input"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "event"

    const-string v2, "city_order"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "city"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "start_order"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v1, "end_order"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v1

    sget-object v2, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static onCloseLocation()V
    .locals 3

    .prologue
    .line 99
    sget-boolean v0, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    const-string v2, "city_close_location"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static onDeleteCity(ILjava/lang/String;Z)V
    .locals 3
    .param p0, "counts"    # I
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "delect_all"    # Z

    .prologue
    .line 107
    sget-boolean v1, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v1, :cond_0

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "ReYunUtils"

    const-string v2, "onDeleteCity invalid input"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "event"

    const-string v2, "city_delect_city"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "counts"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v1, "city"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "delect_all"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v1

    sget-object v2, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static onLaunchBrowser(Ljava/lang/String;)V
    .locals 4
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-boolean v0, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    const-string v2, "weather_launch_browser"

    const-string v3, "click"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onOpenLocation(Ljava/lang/String;)V
    .locals 4
    .param p0, "city"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-boolean v0, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "ReYunUtils"

    const-string v1, "onOpenLocation invalid input"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    const-string v2, "city_open_location"

    const-string v3, "city"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onUserGpsLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "province"    # Ljava/lang/String;
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "district"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-boolean v4, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v4, :cond_0

    .line 163
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {}, Lcn/nubia/weather/utils/CalendarUtil;->getTodayYearAndMonth()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "todayYearAndMonth":Ljava/lang/String;
    const-string v4, "locReported_date"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "report_local_data":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v2    # "report_local_data":Ljava/lang/String;
    .end local v3    # "todayYearAndMonth":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v0    # "ctx":Landroid/content/Context;
    .restart local v2    # "report_local_data":Ljava/lang/String;
    .restart local v3    # "todayYearAndMonth":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 171
    :cond_2
    const-string v4, "ReYunUtils"

    const-string v5, "onUserGpsLocation invalid input"

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "loc":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v4

    sget-object v5, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    const-string v6, "user_gps_location"

    const-string v7, "loc"

    invoke-virtual {v4, v5, v6, v7, v1}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v4, "locReported_date"

    invoke-static {v0, v4, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onWeatherOpen(Ljava/lang/String;)V
    .locals 11
    .param p0, "intentAction"    # Ljava/lang/String;

    .prologue
    .line 54
    sget-boolean v9, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v9, :cond_0

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 56
    const-string v9, "ReYunUtils"

    const-string v10, "onWeatherOpen invalid input"

    invoke-static {v9, v10}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    new-instance v3, Lcn/nubia/weather/model/DeviceInfo;

    invoke-direct {v3}, Lcn/nubia/weather/model/DeviceInfo;-><init>()V

    .line 60
    .local v3, "deviceInfo":Lcn/nubia/weather/model/DeviceInfo;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 61
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcn/nubia/weather/utils/NetUtil;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "net_info_access_type":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcn/nubia/weather/model/DeviceInfo;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "version_name":Ljava/lang/String;
    invoke-virtual {v3}, Lcn/nubia/weather/model/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "device_info_model":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 65
    .local v6, "device_info_ui_version":Ljava/lang/String;
    invoke-virtual {v3}, Lcn/nubia/weather/model/DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "device_info_rom_version":Ljava/lang/String;
    const/4 v0, 0x0

    .line 67
    .local v0, "access_type":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 68
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 69
    const-string v0, "ICON"

    .line 76
    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v9, "event"

    const-string v10, "weather_open"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v9, "net_info_access_type"

    invoke-virtual {v1, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v9, "version_name"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v9, "device_info_model"

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v9, "device_info_ui_version"

    invoke-virtual {v1, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v9, "device_info_rom_version"

    invoke-virtual {v1, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v9, "access_type"

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v9

    sget-object v10, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10, v1}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 70
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    const-string v9, "WIDGET_ACTION"

    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 71
    const-string v0, "WIDGET"

    goto :goto_1

    .line 73
    :cond_4
    const-string v0, "OTHERS"

    goto :goto_1
.end method

.method public static onWidgetClickEvent()V
    .locals 3

    .prologue
    .line 34
    sget-boolean v0, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/weather/utils/ReYunUtils;->APP_NAME:Ljava/lang/String;

    const-string v2, "click_widget_count"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/utils/NubiaTrackManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method

.method public static unbindReYun()V
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lcn/nubia/weather/utils/ReYunUtils;->isOpen:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-static {}, Lcn/nubia/weather/utils/NubiaTrackManager;->getInstance()Lcn/nubia/weather/utils/NubiaTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/utils/NubiaTrackManager;->unbindServiceInvoked()V

    .line 184
    :cond_0
    return-void
.end method
