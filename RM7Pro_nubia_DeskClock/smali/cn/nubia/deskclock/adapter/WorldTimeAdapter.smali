.class public Lcn/nubia/deskclock/adapter/WorldTimeAdapter;
.super Landroid/widget/BaseAdapter;
.source "WorldTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final KEY_CITIES:Ljava/lang/String; = "mCities"

.field private static final KEY_CITIESLIST:Ljava/lang/String; = "mCitiesList"

.field private static final LOAD_DATA:I = 0x1

.field private static final NOTIFY_DATA_SET_CHANGED:I = 0x3

.field private static final RELOAD_DATA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WorldTimeAdapter"

.field private static final WORLDTIME_LOAD_DATA:Ljava/lang/String; = "worldtime_load_data"

.field private static final WORLDTIME_RELOAD_DATA:Ljava/lang/String; = "worldtime_reload_data"

.field public static mHomeCityId:Ljava/lang/String;


# instance fields
.field lastIsup:Z

.field private mCities:[Lcn/nubia/deskclock/model/City;

.field private mCitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/City;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mInflater:Landroid/view/LayoutInflater;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInActionMode:Z

.field private mSelection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/deskclock/model/City;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mHomeCityId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCities:[Lcn/nubia/deskclock/model/City;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mUpdateFlag:Z

    .line 70
    new-instance v0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;-><init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$2;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$2;-><init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)V

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->lastIsup:Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->loadData(Landroid/content/Context;)V

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    invoke-direct {p0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->registerReceiver()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mUpdateFlag:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter;

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private buildMonthDayDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 307
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 308
    .local v0, "mCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 309
    .local v1, "mCalendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 311
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 313
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 314
    .local v6, "mZoneHour":I
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 316
    .local v4, "mNowHour":I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 317
    .local v5, "mZoneDAY":I
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 318
    .local v3, "mNowDAY":I
    if-ne v5, v3, :cond_1

    .line 326
    :cond_0
    :goto_0
    sub-int v2, v4, v6

    .line 327
    .local v2, "mCountHour":I
    if-lez v2, :cond_3

    .line 328
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00e0

    .line 329
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    .line 330
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 328
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 332
    :goto_1
    return-object v7

    .line 320
    .end local v2    # "mCountHour":I
    :cond_1
    if-le v5, v3, :cond_2

    .line 321
    add-int/lit8 v6, v6, 0x18

    goto :goto_0

    .line 322
    :cond_2
    if-ge v5, v3, :cond_0

    .line 323
    add-int/lit8 v4, v4, 0x18

    goto :goto_0

    .line 332
    .restart local v2    # "mCountHour":I
    :cond_3
    iget-object v7, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00df

    .line 333
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    .line 334
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 332
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private buildTodayYestodayTomorrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0d00e2

    const v9, 0x7f0d00da

    .line 339
    const-string v6, "WorldTimeAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timezone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "dd"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 341
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 342
    .local v2, "mCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 343
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 344
    const-string v6, "dd"

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 345
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 344
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 347
    .local v4, "zoneTime":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 348
    .local v3, "mCalendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 349
    const-string v6, "dd"

    invoke-static {v6, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 350
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 349
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 351
    .local v5, "zoneTimeNow":I
    sub-int v0, v5, v4

    .line 352
    .local v0, "countTime":I
    if-nez v0, :cond_0

    .line 353
    iget-object v6, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00d9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 363
    :goto_0
    return-object v6

    .line 354
    :cond_0
    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 355
    iget-object v6, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 356
    :cond_1
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 357
    iget-object v6, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 358
    :cond_2
    const/16 v6, 0x19

    if-le v0, v6, :cond_3

    .line 359
    iget-object v6, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 360
    :cond_3
    const/16 v6, -0x19

    if-ge v0, v6, :cond_4

    .line 361
    iget-object v6, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 363
    :cond_4
    const-string v6, ""

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-static {}, Lcn/nubia/deskclock/AsyncHandler;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 125
    return-void
.end method

.method private updateView(Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;Landroid/view/View;Lcn/nubia/deskclock/model/City;I)V
    .locals 11
    .param p1, "viewHolder"    # Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;
    .param p2, "clock"    # Landroid/view/View;
    .param p3, "cityObj"    # Lcn/nubia/deskclock/model/City;
    .param p4, "position"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x7f12017a

    const/4 v6, 0x0

    .line 257
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const v3, 0x7f120178

    .line 260
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    .line 262
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/deskclock/ui/DigitalTime;

    check-cast v3, Lcn/nubia/deskclock/ui/DigitalTime;

    iput-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->dclock:Lcn/nubia/deskclock/ui/DigitalTime;

    .line 263
    const v3, 0x7f120179

    .line 264
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->earlyLateTime:Landroid/widget/TextView;

    .line 265
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->dclock:Lcn/nubia/deskclock/ui/DigitalTime;

    iget-object v4, p3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/ui/DigitalTime;->setTimeZone(Ljava/lang/String;)V

    .line 266
    const-string v3, "WorldTimeAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dclock.isDayLight() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->dclock:Lcn/nubia/deskclock/ui/DigitalTime;

    invoke-virtual {v5}, Lcn/nubia/deskclock/ui/DigitalTime;->isDayLight()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->earlyLateTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->buildTodayYestodayTomorrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcn/nubia/deskclock/model/City;->mTimeZone:Ljava/lang/String;

    .line 268
    invoke-direct {p0, v5}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->buildMonthDayDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 272
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->dclock:Lcn/nubia/deskclock/ui/DigitalTime;

    invoke-virtual {v3}, Lcn/nubia/deskclock/ui/DigitalTime;->isDayLight()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    const v3, 0x7f0201be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 277
    .local v1, "dayOrNightDrawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 278
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->earlyLateTime:Landroid/widget/TextView;

    invoke-virtual {v3, v8, v8, v1, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->earlyLateTime:Landroid/widget/TextView;

    const/16 v4, 0x18

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 281
    iget v3, p3, Lcn/nubia/deskclock/model/City;->mCityNameIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v3, p3, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 283
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p3, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->getCurrentCity(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "cityName":Ljava/lang/String;
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    .end local v0    # "cityName":Ljava/lang/String;
    :goto_2
    iget-boolean v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mIsInActionMode:Z

    if-eqz v3, :cond_5

    .line 289
    const v3, 0x7f12017b

    .line 290
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->checkobx:Landroid/widget/CheckBox;

    .line 291
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->checkobx:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 292
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->checkobx:Landroid/widget/CheckBox;

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 275
    .end local v1    # "dayOrNightDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const v3, 0x7f0201c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "dayOrNightDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 286
    :cond_3
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->cityName:Landroid/widget/TextView;

    iget-object v4, p3, Lcn/nubia/deskclock/model/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 297
    :cond_4
    iget-object v3, p1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;->checkobx:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 300
    :cond_5
    const v3, 0x7f12017b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addDeletedCity(Lcn/nubia/deskclock/model/City;)V
    .locals 1
    .param p1, "city"    # Lcn/nubia/deskclock/model/City;

    .prologue
    .line 147
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clearParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    iput-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCities:[Lcn/nubia/deskclock/model/City;

    .line 425
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 427
    iput-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    .line 429
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 431
    iput-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    .line 433
    :cond_1
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public confirmToDeleteSelection()V
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 372
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 376
    .end local v0    # "city":Lcn/nubia/deskclock/model/City;
    :cond_3
    iget-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-static {v1, v2}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->updateCitiesWithList(Landroid/content/Context;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "p"    # I

    .prologue
    .line 210
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectCount()I
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 220
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v2

    .line 223
    :cond_1
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "viewHolder":Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 228
    new-instance v1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;

    .end local v1    # "viewHolder":Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;
    invoke-direct {v1, p0, v2}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;-><init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;Lcn/nubia/deskclock/adapter/WorldTimeAdapter$1;)V

    .line 229
    .restart local v1    # "viewHolder":Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040083

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 231
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00b2

    .line 233
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 231
    invoke-virtual {p2, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 234
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 239
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-virtual {p0}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/deskclock/model/City;

    invoke-direct {p0, v1, p2, v2, p1}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->updateView(Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;Landroid/view/View;Lcn/nubia/deskclock/model/City;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v2, p2

    .line 243
    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "viewHolder":Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;
    check-cast v1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcn/nubia/deskclock/adapter/WorldTimeAdapter$ViewHolder;
    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "p"    # I

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectAll()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    if-nez v3, :cond_1

    move v0, v2

    .line 387
    .local v0, "allCount":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    if-nez v3, :cond_2

    move v1, v2

    .line 388
    .local v1, "selectCount":I
    :goto_1
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 386
    .end local v0    # "allCount":I
    .end local v1    # "selectCount":I
    :cond_1
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 387
    .restart local v0    # "allCount":I
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1
.end method

.method public loadData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const-string v0, "WorldTimeAdapter"

    const-string v1, "loadData: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-nez p1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$4;-><init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public releaseHandle()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method public reloadData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const-string v0, "WorldTimeAdapter"

    const-string v1, "reloadData: "

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-nez p1, :cond_0

    .line 175
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/deskclock/adapter/WorldTimeAdapter$3;-><init>(Lcn/nubia/deskclock/adapter/WorldTimeAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 396
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mCitiesList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 398
    :cond_0
    return-void
.end method

.method public setInActionMode(Z)V
    .locals 0
    .param p1, "isInActionMode"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mIsInActionMode:Z

    .line 105
    return-void
.end method

.method public setUpdateFlag(Z)V
    .locals 3
    .param p1, "updateFlag"    # Z

    .prologue
    .line 409
    const-string v0, "WorldTimeAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [setUpdateFlag] updateFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iput-boolean p1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mUpdateFlag:Z

    .line 421
    return-void
.end method

.method public unRegisterReceiver()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    return-void
.end method

.method public unSelectall()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcn/nubia/deskclock/adapter/WorldTimeAdapter;->mSelection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 404
    :cond_0
    return-void
.end method
