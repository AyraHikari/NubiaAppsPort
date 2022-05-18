.class public Lcn/nubia/weather/data/NotifyCenter;
.super Ljava/lang/Object;
.source "NotifyCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;,
        Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;
    }
.end annotation


# static fields
.field private static final MESSAGE_NOTIFY_BROADCAST:I = 0x1300001

.field private static final MESSAGE_NOTIFY_FORCE_TOUCH:I = 0x1300002

.field private static final TAG:Ljava/lang/String; = "NotifyCenter"

.field private static mInstance:Lcn/nubia/weather/data/NotifyCenter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

.field private mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mLock:Ljava/lang/Object;

    .line 51
    new-instance v0, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;

    invoke-direct {v0, p0, v2}, Lcn/nubia/weather/data/NotifyCenter$NotifyHanlder;-><init>(Lcn/nubia/weather/data/NotifyCenter;Lcn/nubia/weather/data/NotifyCenter$1;)V

    iput-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {v0}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    .line 56
    iput-object p1, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcn/nubia/weather/data/NotifyCenter;->initFirstData()V

    .line 58
    invoke-static {p1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    new-instance v1, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;

    invoke-direct {v1, p0, v2}, Lcn/nubia/weather/data/NotifyCenter$NotifyCenterObserver;-><init>(Lcn/nubia/weather/data/NotifyCenter;Lcn/nubia/weather/data/NotifyCenter$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->addObserver(Ljava/util/Observer;)V

    .line 59
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/weather/data/NotifyCenter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/data/NotifyCenter;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/data/NotifyCenter;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/data/NotifyCenter;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/weather/data/NotifyCenter;->sendForceTouchBroadCast(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/weather/data/NotifyCenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/data/NotifyCenter;

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/data/NotifyCenter;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/data/NotifyCenter;

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/weather/data/NotifyCenter;->showNotification()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/NotifyCenter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-class v1, Lcn/nubia/weather/data/NotifyCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/data/NotifyCenter;->mInstance:Lcn/nubia/weather/data/NotifyCenter;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcn/nubia/weather/data/NotifyCenter;

    invoke-direct {v0, p0}, Lcn/nubia/weather/data/NotifyCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/weather/data/NotifyCenter;->mInstance:Lcn/nubia/weather/data/NotifyCenter;

    .line 73
    :cond_0
    sget-object v0, Lcn/nubia/weather/data/NotifyCenter;->mInstance:Lcn/nubia/weather/data/NotifyCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initFirstData()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    iget-object v1, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->copyModelV3(Lcn/nubia/weather/model/WeatherModel;)V

    .line 67
    :cond_0
    return-void
.end method

.method private sendForceTouchBroadCast(Ljava/lang/Object;)V
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const v3, 0x1300002

    .line 185
    move-object v0, p1

    check-cast v0, Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .line 186
    .local v0, "o":Lcn/nubia/weather/data/DataCenter$ObserverObject;
    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmOperationType()Lcn/nubia/weather/data/DataCenter$OperationType;

    move-result-object v1

    .line 187
    .local v1, "operationType":Lcn/nubia/weather/data/DataCenter$OperationType;
    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->ADD:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->REMOVE:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->SWTICH:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->CLEAR:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE_LOCATION:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcn/nubia/weather/data/DataCenter$OperationType;->UPDATE:Lcn/nubia/weather/data/DataCenter$OperationType;

    if-ne v1, v2, :cond_1

    .line 193
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/data/NotifyCenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p0, Lcn/nubia/weather/data/NotifyCenter;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 197
    :cond_1
    return-void
.end method

.method private setCityInfo(Lcn/nubia/weather/model/WeatherModel;I)V
    .locals 12
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "cityIndex"    # I

    .prologue
    .line 279
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 284
    .local v8, "timeMillis":J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 287
    .local v6, "currentDate":Ljava/util/Date;
    invoke-static {v6, p1}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v7

    .line 289
    .local v7, "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    const/4 v1, 0x0

    .line 290
    .local v1, "iconResName":Ljava/lang/String;
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "lableResName":Ljava/lang/String;
    const/4 v4, -0x1

    .line 292
    .local v4, "rank":I
    const/4 v0, 0x0

    .line 293
    .local v0, "id":Ljava/lang/String;
    const/4 v5, 0x0

    .line 296
    .local v5, "temp":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v3, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.action.opencity"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v10, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v11, Lcn/nubia/weather/ui/activity/HomeActivity;

    .line 299
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 298
    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string v10, "CITY_INDEX"

    add-int/lit8 v11, p2, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string v1, "location_black"

    .line 302
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 318
    :goto_2
    invoke-virtual {v7}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-static {p1}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 319
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u00b0"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    :cond_2
    invoke-static/range {v0 .. v5}, Lcn/nubia/weather/utils/ForceTouchUtils;->addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_3
    const-string v1, "dot"

    goto :goto_1

    .line 304
    :pswitch_0
    const/4 v4, 0x4

    .line 305
    const-string v0, "id_city_3"

    .line 306
    goto :goto_2

    .line 308
    :pswitch_1
    const/4 v4, 0x3

    .line 309
    const-string v0, "id_city_2"

    .line 310
    goto :goto_2

    .line 312
    :pswitch_2
    const/4 v4, 0x2

    .line 313
    const-string v0, "id_city_1"

    .line 314
    goto :goto_2

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, "weather":Lcn/nubia/weather/model/WeatherModel;
    new-instance v0, Lcn/nubia/weather/ui/notification/NotificationController;

    .line 202
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcn/nubia/weather/ui/notification/NotificationController;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "mNotificationController":Lcn/nubia/weather/ui/notification/NotificationController;
    iget-object v2, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, v1, v3}, Lcn/nubia/weather/ui/notification/NotificationController;->updateNotification(Lcn/nubia/weather/model/WeatherModel;I)V

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/ui/notification/NotificationController;->updateNotification(Lcn/nubia/weather/model/WeatherModel;I)V

    .line 211
    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/ui/notification/NotificationController;->updateNotification(Lcn/nubia/weather/model/WeatherModel;I)V

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public isNeedNotify()Z
    .locals 8

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "result":Z
    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 79
    .local v1, "newModel":Lcn/nubia/weather/model/WeatherModel;
    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 80
    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 81
    const/4 v2, 0x1

    .line 97
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 98
    if-nez v1, :cond_6

    .line 99
    const/4 v3, 0x0

    iput-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    .line 107
    :cond_1
    :goto_1
    return v2

    .line 84
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    .line 85
    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 86
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    .line 93
    const/4 v2, 0x1

    goto :goto_0

    .line 94
    :cond_5
    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v3, :cond_0

    if-nez v1, :cond_0

    .line 95
    const/4 v2, 0x1

    goto :goto_0

    .line 101
    :cond_6
    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    if-nez v3, :cond_7

    .line 102
    new-instance v3, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {v3}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    iput-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    .line 104
    :cond_7
    iget-object v3, p0, Lcn/nubia/weather/data/NotifyCenter;->mLastWeatherModel:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3, v1}, Lcn/nubia/weather/model/WeatherModel;->copyModelV3(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_1
.end method

.method public notifyByBroadcast()V
    .locals 2

    .prologue
    .line 223
    const-string v0, "NotifyCenter"

    const-string v1, "notifyByBroadcast"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 225
    return-void
.end method

.method public setForceTouchInfo()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 228
    const-string v8, "NotifyCenter"

    const-string v9, "setForceTouchInfo: "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v6, 0x0

    .line 230
    .local v6, "weather":Lcn/nubia/weather/model/WeatherModel;
    const/16 v3, 0x9

    .line 231
    .local v3, "maxSize":I
    iget-object v8, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/data/DataCenter;->getWeatherList()Ljava/util/List;

    move-result-object v7

    .line 232
    .local v7, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    if-nez v7, :cond_0

    .line 276
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 236
    .local v5, "size":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v1, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.action.AddCity"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v8, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcn/nubia/weather/ui/activity/CityAddActivity;

    .line 239
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 238
    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v0, "add"

    .line 241
    .local v0, "iconResName":Ljava/lang/String;
    iget-object v8, p0, Lcn/nubia/weather/data/NotifyCenter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090051

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "lableResName":Ljava/lang/String;
    const-string v8, "id_city_1"

    invoke-static {v8}, Lcn/nubia/weather/utils/ForceTouchUtils;->removeShortcut(Ljava/lang/String;)V

    .line 244
    const-string v8, "id_city_2"

    invoke-static {v8}, Lcn/nubia/weather/utils/ForceTouchUtils;->removeShortcut(Ljava/lang/String;)V

    .line 245
    const-string v8, "id_city_3"

    invoke-static {v8}, Lcn/nubia/weather/utils/ForceTouchUtils;->removeShortcut(Ljava/lang/String;)V

    .line 246
    const-string v8, "weather_add_city"

    invoke-static {v8}, Lcn/nubia/weather/utils/ForceTouchUtils;->removeShortcut(Ljava/lang/String;)V

    .line 247
    if-nez v5, :cond_1

    .line 248
    const-string v8, "weather_add_city"

    invoke-static {v8, v0, v2, v1, v10}, Lcn/nubia/weather/utils/ForceTouchUtils;->addNormalShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 252
    :cond_1
    const/4 v8, 0x4

    if-lt v5, v8, :cond_5

    .line 253
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {p0, v8, v12}, Lcn/nubia/weather/data/NotifyCenter;->setCityInfo(Lcn/nubia/weather/model/WeatherModel;I)V

    .line 254
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {p0, v8, v11}, Lcn/nubia/weather/data/NotifyCenter;->setCityInfo(Lcn/nubia/weather/model/WeatherModel;I)V

    .line 255
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {p0, v8, v10}, Lcn/nubia/weather/data/NotifyCenter;->setCityInfo(Lcn/nubia/weather/model/WeatherModel;I)V

    .line 267
    :cond_2
    :goto_1
    if-lez v5, :cond_3

    .line 268
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "weather":Lcn/nubia/weather/model/WeatherModel;
    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    .line 269
    .restart local v6    # "weather":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v8

    add-int/2addr v3, v8

    .line 271
    :cond_3
    if-ge v5, v3, :cond_4

    .line 272
    const-string v8, "weather_add_city"

    invoke-static {v8, v0, v2, v1, v10}, Lcn/nubia/weather/utils/ForceTouchUtils;->addNormalShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 275
    :cond_4
    const-string v8, "NotifyCenter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setForceTouchInfo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 256
    :cond_5
    if-ne v5, v13, :cond_6

    .line 257
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {p0, v8, v11}, Lcn/nubia/weather/data/NotifyCenter;->setCityInfo(Lcn/nubia/weather/model/WeatherModel;I)V

    .line 258
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {p0, v8, v10}, Lcn/nubia/weather/data/NotifyCenter;->setCityInfo(Lcn/nubia/weather/model/WeatherModel;I)V

    goto :goto_1

    .line 259
    :cond_6
    if-ne v5, v12, :cond_2

    .line 260
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lt v8, v12, :cond_2

    .line 261
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 262
    .local v4, "model":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v4, :cond_2

    .line 263
    invoke-direct {p0, v4, v10}, Lcn/nubia/weather/data/NotifyCenter;->setCityInfo(Lcn/nubia/weather/model/WeatherModel;I)V

    goto :goto_1
.end method
