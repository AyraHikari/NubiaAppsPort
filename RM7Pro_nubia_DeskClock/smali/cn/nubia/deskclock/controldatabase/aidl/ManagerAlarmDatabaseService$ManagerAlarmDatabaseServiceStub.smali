.class public Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService$ManagerAlarmDatabaseServiceStub;
.super Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;
.source "ManagerAlarmDatabaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagerAlarmDatabaseServiceStub"
.end annotation


# instance fields
.field mServiceRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)V
    .locals 2
    .param p1, "service"    # Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;

    .prologue
    .line 72
    invoke-direct {p0}, Lcn/nubia/deskclock/controldatabase/aidl/IManagerAlarmDatabaseControl$Stub;-><init>()V

    .line 73
    const-string v0, "ManagerAlarmDatabase"

    const-string v1, "new Bind!"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService$ManagerAlarmDatabaseServiceStub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    .line 75
    return-void
.end method


# virtual methods
.method public createCountDown(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "countDownTime"    # I
    .param p3, "isCreate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 161
    const-string v8, "ManagerAlarmDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [createCountDown] countDownTime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  ;; isCreate : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v5, ""

    .line 163
    .local v5, "result":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 164
    .local v4, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 165
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v8, "selected_tab"

    const/4 v9, 0x3

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 167
    const-string v8, "cn.nubia.assistant.NEW_COUNTDOWN"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    mul-int/lit16 v8, p2, 0x3e8

    int-to-long v2, v8

    .line 169
    .local v2, "deltaTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long v6, v8, v2

    .line 170
    .local v6, "mFinalTime":J
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    const-string v9, "time_pref"

    invoke-virtual {v8, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "countdown_finaltime"

    .line 171
    invoke-interface {v8, v9, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, p2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisTimeToPref(Landroid/content/Context;I)V

    .line 173
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11, v11, p2}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeCountDownTotalTimeToPref(Landroid/content/Context;III)V

    .line 174
    if-eqz p3, :cond_0

    .line 175
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisStatusToPref(Landroid/content/Context;I)V

    .line 179
    :goto_0
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 182
    const-string v5, "success"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_1
    return-object v5

    .line 177
    :cond_0
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v11}, Lcn/nubia/deskclock/database/CountDownSPUtils;->writeAssisStatusToPref(Landroid/content/Context;I)V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    const-string v5, "failed"

    goto :goto_1
.end method

.method public createStopWatch(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isCreate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    const-string v4, "ManagerAlarmDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [createStopWatch] isCreate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, ""

    .line 136
    .local v3, "result":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "selected_tab"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    const-string v4, "cn.nubia.assistant.NEW_STOPWATCH"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    if-eqz p2, :cond_0

    .line 142
    const-string v4, "stopwatch_sharedpref"

    const-string v5, "assistant_start_sw_status"

    const/4 v6, 0x1

    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 142
    invoke-static {v4, v5, v6}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :goto_0
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 150
    :try_start_0
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 151
    const-string v3, "success"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_1
    return-object v3

    .line 145
    :cond_0
    const-string v4, "stopwatch_sharedpref"

    const-string v5, "assistant_start_sw_status"

    const/4 v6, 0x0

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 145
    invoke-static {v4, v5, v6}, Lcn/nubia/deskclock/util/Utils;->writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    const-string v3, "failed"

    goto :goto_1
.end method

.method public createWorldTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 192
    const-string v8, "ManagerAlarmDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [createWorldTime] cityName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v7, ""

    .line 194
    .local v7, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 195
    .local v4, "cityList":[Ljava/lang/Object;
    iget-object v8, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService$ManagerAlarmDatabaseServiceStub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;

    .line 196
    .local v0, "alarmDatabaseService":Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    invoke-static {v0}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$300(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)V

    .line 197
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0, v8}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$400(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Landroid/content/Context;)V

    .line 198
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->loadCitiesToMap(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-static {v0, v8}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$502(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    .line 199
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v6, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v8, "selected_tab"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    invoke-virtual {v6, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    const-string v8, "cn.nubia.assistant.NEW_WORLDTIME"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/high16 v8, 0x10000000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    invoke-static {v0, p1}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$600(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Ljava/lang/String;)V

    .line 206
    invoke-static {v0}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$700(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cityList":[Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    .line 207
    .restart local v4    # "cityList":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 208
    .local v3, "city":Lcn/nubia/deskclock/model/City;
    const-string v10, "ManagerAlarmDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " [createWorldTime] cityList.length : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_0

    array-length v8, v4

    :goto_0
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-eqz v4, :cond_2

    array-length v8, v4

    if-lez v8, :cond_2

    .line 211
    aget-object v3, v4, v9

    .end local v3    # "city":Lcn/nubia/deskclock/model/City;
    check-cast v3, Lcn/nubia/deskclock/model/City;

    .line 212
    .restart local v3    # "city":Lcn/nubia/deskclock/model/City;
    invoke-static {v0, v3}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$800(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Lcn/nubia/deskclock/model/City;)Z

    move-result v5

    .line 213
    .local v5, "hasSelected":Z
    const-string v8, "ManagerAlarmDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [createWorldTime] hasSelected : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ;; city : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcn/nubia/deskclock/model/City;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v5, :cond_1

    .line 215
    const-string v8, "cityname:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v8, "timezone:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string v8, "timestyle:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/Utils;->buildTodayYestodayTomorrow(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/Utils;->buildMonthDayDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v8, "flag:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "has_selected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 241
    .end local v5    # "hasSelected":Z
    :goto_1
    return-object v7

    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    move v8, v9

    .line 208
    goto/16 :goto_0

    .line 222
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "hasSelected":Z
    :cond_1
    const-string v8, "cityname:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v8, "timezone:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v8, "timestyle:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/Utils;->buildTodayYestodayTomorrow(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v10

    iget-object v11, v3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    invoke-static {v10, v11}, Lcn/nubia/deskclock/util/Utils;->buildMonthDayDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v8, "flag:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "success"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {v0}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$500(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)Ljava/util/LinkedHashMap;

    move-result-object v8

    iget-object v9, v3, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v8, v9, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v8

    invoke-static {v0}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$500(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;)Ljava/util/LinkedHashMap;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->updateCitiesWithMap(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 231
    const-string v8, "ManagerAlarmDatabase"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " [createWorldTime] result : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 234
    .end local v5    # "hasSelected":Z
    :cond_2
    const-string v8, "cityname:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v8, "timezone:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string v8, "timestyle:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v8, "flag:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "no_city"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1
.end method

.method public getCountDownStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/deskclock/database/CountDownSPUtils;->readStatusFromPref(Landroid/content/Context;)I

    move-result v0

    .line 128
    .local v0, "status":I
    const-string v1, "ManagerAlarmDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [getCountDownStatus] status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return v0
.end method

.method public getStopWatchStatus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v1, "stopwatch_sharedpref"

    const-string v2, "sw_state"

    const/4 v3, 0x0

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    .line 119
    invoke-static {v1, v2, v3, v4}, Lcn/nubia/deskclock/util/Utils;->readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 121
    .local v0, "status":I
    const-string v1, "ManagerAlarmDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " [getStopWatchStatus] status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return v0
.end method

.method public insertAlarm(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 5
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    const-string v1, ""

    .line 80
    .local v1, "uri":Ljava/lang/String;
    const-string v3, "ManagerAlarmDatabase"

    const-string v4, " insertAlarm "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/util/Utils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string v1, "-1"

    .line 83
    const-string v3, "ManagerAlarmDatabase"

    const-string v4, " insertAlarm no_permission "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 98
    .end local v1    # "uri":Ljava/lang/String;
    .local v2, "uri":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 86
    .end local v2    # "uri":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "org.codeaurora.permission.POWER_OFF_ALARM"

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    const-string v1, "-1"

    .line 88
    const-string v3, "ManagerAlarmDatabase"

    const-string v4, " insertAlarm  no_poweroff_alarm_permission"

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 89
    .end local v1    # "uri":Ljava/lang/String;
    .restart local v2    # "uri":Ljava/lang/String;
    goto :goto_0

    .line 91
    .end local v2    # "uri":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService$ManagerAlarmDatabaseServiceStub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;

    .line 92
    .local v0, "alarmDatabaseService":Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3, p1}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$100(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    const-string v3, "ManagerAlarmDatabase"

    const-string v4, "insert fail "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v2, v1

    .line 98
    .end local v1    # "uri":Ljava/lang/String;
    .restart local v2    # "uri":Ljava/lang/String;
    goto :goto_0

    .line 96
    .end local v2    # "uri":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_2
    const-string v3, "ManagerAlarmDatabase"

    const-string v4, "insert success "

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateAlarm(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 6
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    const-string v1, "ManagerAlarmDatabase"

    const-string v4, " updateAlarm "

    invoke-static {v1, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-wide/16 v2, 0x0

    .line 106
    .local v2, "id":J
    iget-object v1, p0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService$ManagerAlarmDatabaseServiceStub;->mServiceRefs:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;

    .line 107
    .local v0, "alarmDatabaseService":Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;
    invoke-static {}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;->access$200(Lcn/nubia/deskclock/controldatabase/aidl/ManagerAlarmDatabaseService;Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 108
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 109
    const-string v1, "ManagerAlarmDatabase"

    const-string v4, " update fail "

    invoke-static {v1, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-wide v2

    .line 112
    :cond_0
    const-string v1, "ManagerAlarmDatabase"

    const-string v4, " update success "

    invoke-static {v1, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
