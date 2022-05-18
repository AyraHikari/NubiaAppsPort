.class public Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;
.super Lcn/nubia/deftmachanism/DeftModel;
.source "TimeZoneModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;,
        Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;
    }
.end annotation


# static fields
.field private static final CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

.field private static final DEBUG:Z = false

.field private static final KEY_HOME_CITY:Ljava/lang/String; = "preferences_home_city"

.field public static final KEY_HOME_DEFAULT_VALUE:Ljava/lang/String; = "preferences_home_default_tz"

.field public static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field public static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled_1"

.field private static final TAG:Ljava/lang/String; = "Calendar"

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mF:Ljava/util/Formatter;

.field private volatile mFirstTZRequest:Z

.field private mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

.field private volatile mHomeTZ:Ljava/lang/String;

.field private mSB:Ljava/lang/StringBuilder;

.field private mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;

.field private mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

.field private mTZCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mTZQueryInProgress:Z

.field private mToken:I

.field private volatile mUseHomeTZ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "timezoneType"

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    .line 334
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "timezoneInstances"

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    .line 335
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftModel;-><init>()V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSB:Ljava/lang/StringBuilder;

    .line 339
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mF:Ljava/util/Formatter;

    .line 340
    iput-boolean v5, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mFirstTZRequest:Z

    .line 341
    iput-boolean v4, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZQueryInProgress:Z

    .line 342
    iput-boolean v4, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    .line 343
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    .line 345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZCallbacks:Ljava/util/HashSet;

    .line 346
    iput v5, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mToken:I

    .line 347
    iput-object v3, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    .line 355
    iput-object v3, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mContext:Landroid/content/Context;

    .line 356
    iput-object v3, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 357
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;

    invoke-direct {v0, p0, v3}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;-><init>(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$1;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZQueryInProgress:Z

    return p1
.end method

.method static synthetic access$202(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mFirstTZRequest:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;)Lcn/nubia/calendar/util/SharedPrefUtil;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;

    .prologue
    .line 25
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;

    .line 63
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/SharedPrefUtil;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 64
    return-void
.end method

.method public forceDBRequery(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 282
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZQueryInProgress:Z

    if-eqz v0, :cond_1

    .line 284
    if-eqz p2, :cond_0

    .line 285
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_0
    monitor-exit v1

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mFirstTZRequest:Z

    .line 290
    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 291
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I

    .prologue
    .line 143
    move/from16 v0, p6

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_0

    .line 144
    const-string v9, "UTC"

    .line 148
    .local v9, "tz":Ljava/lang/String;
    :goto_0
    iget-object v11, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v11

    .line 149
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 150
    iget-object v3, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mF:Ljava/util/Formatter;

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 152
    .local v10, "date":Ljava/lang/String;
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    return-object v10

    .line 146
    .end local v9    # "tz":Ljava/lang/String;
    .end local v10    # "date":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "tz":Ljava/lang/String;
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getHomeTZ()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_tz"

    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mContext:Landroid/content/Context;

    .line 317
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0263

    .line 318
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method public getHomeTZCity()Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_city"

    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c01e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 245
    iget-object v8, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v8

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mFirstTZRequest:Z

    if-eqz v0, :cond_1

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZQueryInProgress:Z

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mFirstTZRequest:Z

    .line 249
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_tz_enabled_1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    .line 251
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_tz"

    .line 252
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;-><init>(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    .line 257
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZQueryInProgress:Z

    if-eqz v0, :cond_2

    .line 262
    if-eqz p2, :cond_2

    .line 263
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 266
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 267
    :cond_3
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDefaultHomeTimezoneValue(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 295
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v2, "preferences_home_default_tz"

    const/4 v3, 0x0

    .line 296
    invoke-virtual {v1, v2, v3}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    .line 297
    .local v0, "hasDefaultHomeTimzoneValue":Z
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mContext:Landroid/content/Context;

    .line 54
    new-instance v0, Lcn/nubia/calendar/util/SharedPrefUtil;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 55
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$SharedPreferenceListener;

    .line 57
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/SharedPrefUtil;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setDefaultHomeTimezoneValue(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Z

    .prologue
    .line 301
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_default_tz"

    invoke-virtual {v0, v1, p2}, Lcn/nubia/calendar/util/SharedPrefUtil;->setSharedPreference(Ljava/lang/String;Z)V

    .line 302
    return-void
.end method

.method public setHomeTZCity(Ljava/lang/String;)V
    .locals 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_city"

    invoke-virtual {v0, v1, p1}, Lcn/nubia/calendar/util/SharedPrefUtil;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeZone"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/4 v12, 0x0

    .line 178
    .local v12, "updatePrefs":Z
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_tz_enabled_1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    .line 180
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_tz"

    .line 181
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v0, v1, v3}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    .line 183
    :try_start_0
    const-string v0, "auto"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 184
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    if-eqz v0, :cond_2

    .line 185
    const/4 v12, 0x1

    .line 193
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-eqz v12, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v1, "preferences_home_tz"

    iget-object v3, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/calendar/util/SharedPrefUtil;->setSharedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v4, "values":Landroid/content/ContentValues;
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    if-eqz v0, :cond_3

    .line 200
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    iget v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mToken:I

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->cancelOperation(I)V

    .line 203
    :cond_3
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;-><init>(Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    .line 206
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mToken:I

    if-nez v0, :cond_4

    .line 207
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mToken:I

    .line 211
    :cond_4
    const-string v1, "value"

    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    if-eqz v0, :cond_8

    const-string v0, "home"

    :goto_2
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    iget v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mToken:I

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v5, "key=?"

    sget-object v6, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 218
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    if-eqz v0, :cond_0

    .line 219
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v9, "values2":Landroid/content/ContentValues;
    const-string v0, "value"

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHandler:Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;

    iget v6, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mToken:I

    sget-object v8, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v10, "key=?"

    sget-object v11, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    move-object v7, v2

    invoke-virtual/range {v5 .. v11}, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v9    # "values2":Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    iget-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mUseHomeTZ:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 189
    :cond_6
    const/4 v12, 0x1

    .line 191
    :cond_7
    iput-object p2, p0, Lcn/nubia/calendar/model/deftmodel/TimeZoneModel;->mHomeTZ:Ljava/lang/String;

    goto :goto_1

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 211
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_8
    const-string v0, "auto"

    goto :goto_2
.end method
