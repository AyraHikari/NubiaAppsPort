.class public Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
.super Lcn/nubia/deftmachanism/DeftModel;
.source "LocalWorkingModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;,
        Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    }
.end annotation


# static fields
.field public static final KEY_WEEK_START_DAY:Ljava/lang/String; = "preferences_week_start_day"

.field private static final TAG:Ljava/lang/String; = "LocalWorkingModel"

.field public static final WEEK_START_DEFAULT:Ljava/lang/String; = "-1"

.field public static final WORK_MODE_DAY_MODE:I = 0x1

.field public static final WORK_MODE_MONTH_MODE:I = 0x3

.field public static final WORK_MODE_UNKNOWN:I = 0x0

.field public static final WORK_MODE_WEEK_MODE:I = 0x2

.field public static final WORK_MODE_YEAR_MODE:I = 0x4


# instance fields
.field private mActivityReqId:I

.field private mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

.field private mContext:Landroid/content/Context;

.field private mCurViewJob:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;

.field private mCurWorkingMode:I

.field private mFirstDayOfWeek:I

.field private mGotoTime:J

.field private mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

.field private mInitViewType:I

.field private mNeedCheckForAccounts:Z

.field private mSelectedDay:Landroid/text/format/Time;

.field private mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;

.field private mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

.field private mYearForYearMode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftModel;-><init>()V

    .line 366
    iput-object v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mContext:Landroid/content/Context;

    .line 367
    iput v3, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurWorkingMode:I

    .line 368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mGotoTime:J

    .line 369
    iput-object v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSelectedDay:Landroid/text/format/Time;

    .line 371
    iput-boolean v3, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mNeedCheckForAccounts:Z

    .line 372
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mInitViewType:I

    .line 373
    iput v3, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mFirstDayOfWeek:I

    .line 374
    const/16 v0, 0x64

    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mActivityReqId:I

    .line 375
    iput v3, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mYearForYearMode:I

    .line 377
    iput-object v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurViewJob:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;

    .line 378
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;

    invoke-direct {v0, p0, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;-><init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$1;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;

    .line 379
    iput-object v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 380
    iput-object v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .line 381
    iput-object v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->loadFirstDayOfWeek(Landroid/content/Context;)V

    return-void
.end method

.method private cleanUpFirstDayOfWeek(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;

    .line 279
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/SharedPrefUtil;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mFirstDayOfWeek:I

    .line 282
    return-void
.end method

.method private convertWorkModeToViewType(I)I
    .locals 1
    .param p1, "workMode"    # I

    .prologue
    .line 336
    packed-switch p1, :pswitch_data_0

    .line 350
    const/4 v0, 0x4

    .line 353
    .local v0, "viewType":I
    :goto_0
    return v0

    .line 338
    .end local v0    # "viewType":I
    :pswitch_0
    const/4 v0, 0x2

    .line 339
    .restart local v0    # "viewType":I
    goto :goto_0

    .line 341
    .end local v0    # "viewType":I
    :pswitch_1
    const/4 v0, 0x3

    .line 342
    .restart local v0    # "viewType":I
    goto :goto_0

    .line 344
    .end local v0    # "viewType":I
    :pswitch_2
    const/4 v0, 0x4

    .line 345
    .restart local v0    # "viewType":I
    goto :goto_0

    .line 347
    .end local v0    # "viewType":I
    :pswitch_3
    const/4 v0, 0x7

    .line 348
    .restart local v0    # "viewType":I
    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initFirstDayOfWeek(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefListener:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$SharedPreferenceListener;

    .line 271
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/SharedPrefUtil;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->loadFirstDayOfWeek(Landroid/content/Context;)V

    .line 274
    return-void
.end method

.method private loadFirstDayOfWeek(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    iget-object v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    const-string v3, "preferences_week_start_day"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/util/SharedPrefUtil;->getSharedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "pref":Ljava/lang/String;
    const-string v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    const-string v2, "en"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 291
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 300
    .local v1, "startDay":I
    :goto_0
    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 301
    const/4 v2, 0x6

    iput v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mFirstDayOfWeek:I

    .line 307
    :goto_1
    return-void

    .line 294
    .end local v1    # "startDay":I
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .restart local v1    # "startDay":I
    goto :goto_0

    .line 297
    .end local v1    # "startDay":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "startDay":I
    goto :goto_0

    .line 302
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 303
    const/4 v2, 0x1

    iput v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mFirstDayOfWeek:I

    goto :goto_1

    .line 305
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mFirstDayOfWeek:I

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->cleanUpFirstDayOfWeek(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 46
    return-void
.end method

.method public doWithCurrentViewJob()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 230
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurViewJob:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;

    if-nez v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-virtual {p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "time":Landroid/text/format/Time;
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurViewJob:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;

    iget-wide v2, v1, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentEventStartMillis:J

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 236
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 237
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setSelectedDay(Landroid/text/format/Time;Z)V

    .line 238
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurViewJob:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;

    iget-wide v2, v1, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentEventStartMillis:J

    invoke-virtual {p0, v2, v3, v4}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurViewJob:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;

    goto :goto_0
.end method

.method public formatDateRange(JJI)Ljava/lang/String;
    .locals 7
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->formatDateRange(JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityReqId()I
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mActivityReqId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mActivityReqId:I

    return v0
.end method

.method public getCurTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurWorkingMode()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurWorkingMode:I

    return v0
.end method

.method public getCurrentDay()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    .line 139
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    invoke-virtual {p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "currentDay":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method public getDaysPerWeek(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    .line 260
    invoke-static {p1}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_days_per_week"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mFirstDayOfWeek:I

    return v0
.end method

.method public getGoToTimeWithTimeType()Landroid/text/format/Time;
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGotoTime()J

    move-result-wide v2

    .line 99
    .local v2, "time":J
    new-instance v0, Landroid/text/format/Time;

    invoke-virtual {p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "gotoTime":Landroid/text/format/Time;
    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 101
    return-object v0
.end method

.method public getGotoTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mGotoTime:J

    return-wide v0
.end method

.method public getInitViewType()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mInitViewType:I

    return v0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSelectedDay:Landroid/text/format/Time;

    return-object v0
.end method

.method public getShowWeekNumber(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    .line 253
    invoke-static {p1}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_show_week_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getTimeZone(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v0, p2}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->getTimeZone(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYearForYearMode()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mYearForYearMode:I

    return v0
.end method

.method public hasViewJobToDo()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurViewJob:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcn/nubia/calendar/util/SharedPrefUtil;

    invoke-direct {v0, p1}, Lcn/nubia/calendar/util/SharedPrefUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 40
    invoke-direct {p0, p1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->initFirstDayOfWeek(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public isWorkDayORHoliday(Landroid/text/format/Time;)I
    .locals 3
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 330
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurTimeZone()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->isWorkDayORHoliday(Landroid/content/Context;Landroid/text/format/Time;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public parseViewAction(Landroid/content/Intent;)J
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    const-wide/16 v6, -0x1

    .line 192
    .local v6, "timeMillis":J
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-wide v8, v6

    .line 222
    .end local v6    # "timeMillis":J
    .local v8, "timeMillis":J
    :goto_0
    return-wide v8

    .line 199
    .end local v8    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 200
    .local v4, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v10, 0x2

    if-ne v5, v10, :cond_3

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v10, "events"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    :try_start_0
    new-instance v3, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;-><init>(Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v2    # "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    .local v3, "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v3, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mViewEventId:J

    .line 205
    iget-wide v10, v3, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mViewEventId:J

    const-wide/16 v12, -0x1

    cmp-long v5, v10, v12

    if-eqz v5, :cond_2

    .line 206
    const-string v5, "beginTime"

    const-wide/16 v10, 0x0

    invoke-virtual {p1, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v3, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentEventStartMillis:J

    .line 208
    const-string v5, "endTime"

    const-wide/16 v10, 0x0

    invoke-virtual {p1, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v3, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentEventEndMillis:J

    .line 210
    const-string v5, "attendeeStatus"

    const/4 v10, 0x0

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v3, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentAttendeeResponse:I

    .line 212
    const-string v5, "allDay"

    const/4 v10, 0x0

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v3, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentAllDay:Z

    .line 215
    iget-wide v6, v3, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;->mIntentEventStartMillis:J

    .line 216
    iput-object v3, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurViewJob:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move-object v2, v3

    .end local v3    # "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    .restart local v2    # "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    :cond_3
    :goto_1
    move-wide v8, v6

    .line 222
    .end local v6    # "timeMillis":J
    .restart local v8    # "timeMillis":J
    goto :goto_0

    .line 218
    .end local v8    # "timeMillis":J
    .restart local v6    # "timeMillis":J
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v2    # "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    .restart local v3    # "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    .restart local v2    # "newJob":Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel$ViewCalendarJob;
    goto :goto_1
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "key_check_for_accounts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "key_check_for_accounts"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mNeedCheckForAccounts:Z

    .line 67
    :cond_1
    const-string v0, "key_restore_view"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mInitViewType:I

    .line 68
    const-string v0, "key_restore_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mGotoTime:J

    goto :goto_0
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    const-string v0, "key_restore_time"

    iget-wide v2, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mGotoTime:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    const-string v0, "key_restore_view"

    iget v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurWorkingMode:I

    .line 54
    invoke-direct {p0, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->convertWorkModeToViewType(I)I

    move-result v1

    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setCalendarConfigModel(Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;)V
    .locals 0
    .param p1, "calendarConfigModel"    # Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .prologue
    .line 322
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 323
    return-void
.end method

.method public setCurWorkingMode(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "needNotify"    # Z

    .prologue
    .line 76
    iget v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurWorkingMode:I

    if-ne v0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iput p1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mCurWorkingMode:I

    .line 81
    if-eqz p2, :cond_0

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->notifyChanged(I)V

    goto :goto_0
.end method

.method public setGotoTime(JZ)V
    .locals 1
    .param p1, "millisTime"    # J
    .param p3, "needNotify"    # Z

    .prologue
    .line 87
    iput-wide p1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mGotoTime:J

    .line 88
    if-eqz p3, :cond_0

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->notifyChanged(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public setHolidayModel(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;)V
    .locals 0
    .param p1, "holidayModel"    # Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .prologue
    .line 326
    iput-object p1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .line 327
    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;Z)V
    .locals 3
    .param p1, "selectDay"    # Landroid/text/format/Time;
    .param p2, "needNotify"    # Z

    .prologue
    const/4 v2, 0x4

    .line 105
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSelectedDay:Landroid/text/format/Time;

    if-ne v1, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    if-nez p1, :cond_2

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSelectedDay:Landroid/text/format/Time;

    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p0, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->notifyChanged(I)V

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSelectedDay:Landroid/text/format/Time;

    .line 117
    .local v0, "tmpTime":Landroid/text/format/Time;
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iput-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSelectedDay:Landroid/text/format/Time;

    .line 118
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSelectedDay:Landroid/text/format/Time;

    if-eqz v1, :cond_3

    .line 119
    iget-object v1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {v1, v0}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    :cond_3
    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p0, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->notifyChanged(I)V

    goto :goto_0
.end method

.method public setUpdateTopBarTrigger()V
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->notifyChanged(I)V

    .line 164
    return-void
.end method

.method public setYearForYearMode(I)V
    .locals 1
    .param p1, "yearForYearMode"    # I

    .prologue
    .line 171
    iput p1, p0, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->mYearForYearMode:I

    .line 172
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->notifyChanged(I)V

    .line 173
    return-void
.end method
