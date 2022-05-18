.class public Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;
.super Ljava/lang/Object;
.source "CalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/util/CalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeZoneUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;
    }
.end annotation


# static fields
.field public static final CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

.field public static final KEY_HOME_DEFAULT_VALUE:Ljava/lang/String; = "preferences_home_default_tz"

.field public static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field public static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled_1"

.field private static final TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

.field private static final TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

.field private static mF:Ljava/util/Formatter;

.field private static volatile mFirstTZRequest:Z

.field private static mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

.field private static volatile mHomeTZ:Ljava/lang/String;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static mTZCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mTZQueryInProgress:Z

.field private static mToken:I

.field private static volatile mUseHomeTZ:Z


# instance fields
.field private final mPrefsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneType"

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    .line 79
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "timezoneInstances"

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    .line 84
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    .line 85
    sput-boolean v4, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 86
    sput-boolean v3, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 88
    sput-boolean v3, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 89
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    .line 92
    sput v4, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefsName"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method static synthetic access$100()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 77
    sput-boolean p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 77
    sput-boolean p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 77
    sput-object p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public forceDBRequery(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 359
    sget-object v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v1

    .line 360
    :try_start_0
    sget-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 362
    monitor-exit v1

    .line 367
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 365
    invoke-virtual {p0, p1, p2}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 366
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
    .line 216
    move/from16 v0, p6

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_0

    .line 217
    const-string v9, "UTC"

    .line 222
    .local v9, "tz":Ljava/lang/String;
    :goto_0
    sget-object v11, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    monitor-enter v11

    .line 223
    :try_start_0
    sget-object v2, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 224
    sget-object v3, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mF:Ljava/util/Formatter;

    move-object v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, "date":Ljava/lang/String;
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    return-object v10

    .line 219
    .end local v9    # "tz":Ljava/lang/String;
    .end local v10    # "date":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 220
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "tz":Ljava/lang/String;
    goto :goto_0

    .line 226
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 316
    sget-object v9, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v9

    .line 317
    :try_start_0
    sget-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    if-eqz v0, :cond_1

    .line 318
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    .line 319
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mFirstTZRequest:Z

    .line 321
    iget-object v0, p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcn/nubia/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 323
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "preferences_home_tz_enabled_1"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    .line 324
    const-string v0, "preferences_home_tz"

    .line 325
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    .line 331
    sget-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 335
    :cond_0
    sget-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    sget-object v4, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->CALENDAR_CACHE_POJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    sget-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZQueryInProgress:Z

    if-eqz v0, :cond_2

    .line 340
    sget-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    sget-boolean v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 342
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 343
    :cond_3
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasDefaultHomeTimezoneValue(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    iget-object v2, p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcn/nubia/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 372
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "preferences_home_default_tz"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    .local v0, "hasDefaultHomeTimzoneValue":Z
    return v0
.end method

.method public setDefaultHomeTimezoneValue(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Z

    .prologue
    .line 380
    iget-object v1, p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcn/nubia/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_home_default_tz"

    invoke-static {v0, v1, p2}, Lcn/nubia/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 383
    return-void
.end method

.method public setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const/4 v14, 0x0

    .line 252
    .local v14, "updatePrefs":Z
    sget-object v2, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mTZCallbacks:Ljava/util/HashSet;

    monitor-enter v2

    .line 253
    :try_start_0
    const-string v1, "auto"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 254
    sget-boolean v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_2

    .line 255
    const/4 v14, 0x1

    .line 263
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-eqz v14, :cond_0

    .line 266
    iget-object v1, p0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mPrefsName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/CalendarUtils;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 269
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_home_tz"

    sget-object v2, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-static {v13, v1, v2}, Lcn/nubia/calendar/util/CalendarUtils;->setSharedPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 272
    .local v5, "values":Landroid/content/ContentValues;
    sget-object v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    if-eqz v1, :cond_3

    .line 273
    sget-object v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v2, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->cancelOperation(I)V

    .line 275
    :cond_3
    new-instance v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;-><init>(Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;Landroid/content/ContentResolver;)V

    sput-object v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    .line 277
    sget v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    if-nez v1, :cond_4

    .line 278
    const/4 v1, 0x1

    sput v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    .line 281
    :cond_4
    const-string v2, "value"

    sget-boolean v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_7

    const-string v1, "home"

    :goto_2
    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v2, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v6, "key=?"

    sget-object v7, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_TYPE_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 287
    sget-boolean v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mUseHomeTZ:Z

    if-eqz v1, :cond_0

    .line 288
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v10, "values2":Landroid/content/ContentValues;
    const-string v1, "value"

    sget-object v2, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object v6, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHandler:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;

    sget v7, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mToken:I

    const/4 v8, 0x0

    sget-object v9, Landroid/provider/CalendarContract$CalendarCache;->URI:Landroid/net/Uri;

    const-string v11, "key=?"

    sget-object v12, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->TIMEZONE_INSTANCES_ARGS:[Ljava/lang/String;

    invoke-virtual/range {v6 .. v12}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils$AsyncTZHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 258
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v10    # "values2":Landroid/content/ContentValues;
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_1
    sget-object v1, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 259
    const/4 v14, 0x1

    .line 261
    :cond_6
    sput-object p2, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->mHomeTZ:Ljava/lang/String;

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 281
    .restart local v5    # "values":Landroid/content/ContentValues;
    .restart local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_7
    const-string v1, "auto"

    goto :goto_2
.end method
