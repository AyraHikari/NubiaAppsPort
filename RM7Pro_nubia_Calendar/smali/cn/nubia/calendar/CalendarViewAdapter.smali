.class public Lcn/nubia/calendar/CalendarViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarViewAdapter.java"


# static fields
.field public static final AGENDA_BUTTON_INDEX:I = 0x4

.field private static final BUTTON_VIEW_TYPE:I = 0x0

.field public static final DAY_BUTTON_INDEX:I = 0x1

.field public static final MONTH_BUTTON_INDEX:I = 0x3

.field public static final NEW_BUTTON_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MenuSpinnerAdapter"

.field static final VIEW_TYPE_NUM:I = 0x1

.field public static final WEEK_BUTTON_INDEX:I = 0x2

.field public static final YEAR_BUTTON_INDEX:I = 0x5

.field public static mIsLunarVisible:Z

.field private static prefs:Landroid/content/SharedPreferences;


# instance fields
.field private mActionBarPadding:I

.field private mArrowWidth:I

.field private final mButtonNames:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCountry:Ljava/lang/String;

.field private mCurrentMainView:I

.field private mDisplayWidth:I

.field private final mFormatter:Ljava/util/Formatter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLanguage:Ljava/lang/String;

.field private mLunarName:Ljava/lang/String;

.field private mMidnightHandler:Landroid/os/Handler;

.field private mMilliTime:J

.field private final mShowDate:Z

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mTimeUpdater:Ljava/lang/Runnable;

.field private mTimeZone:Ljava/lang/String;

.field private mTodayJulianDay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcn/nubia/calendar/CalendarViewAdapter;->mIsLunarVisible:Z

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/calendar/CalendarViewAdapter;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewType"    # I
    .param p3, "showDate"    # Z

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcn/nubia/calendar/CalendarViewAdapter$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/CalendarViewAdapter$1;-><init>(Lcn/nubia/calendar/CalendarViewAdapter;)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    .line 122
    iput p2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mCurrentMainView:I

    .line 123
    iput-object p1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    .line 124
    iput-boolean p3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mShowDate:Z

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    .line 129
    const-string v0, "layout_inflater"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 132
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 135
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mLanguage:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 137
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mCountry:Ljava/lang/String;

    .line 140
    if-eqz p3, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcn/nubia/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 145
    :cond_0
    sget-object v0, Lcn/nubia/calendar/CalendarViewAdapter;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 147
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    sput-object v0, Lcn/nubia/calendar/CalendarViewAdapter;->prefs:Landroid/content/SharedPreferences;

    .line 156
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/calendar/CalendarViewAdapter;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "is_lunar_visible"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/calendar/CalendarViewAdapter;->mIsLunarVisible:Z

    .line 159
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mLunarName:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mDisplayWidth:I

    .line 163
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mActionBarPadding:I

    .line 165
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02026d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mArrowWidth:I

    .line 167
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "custom_calendar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/CalendarViewAdapter;->prefs:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/calendar/CalendarViewAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/CalendarViewAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildDayNameOfNewView(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x1

    .line 472
    new-instance v1, Landroid/text/format/Time;

    iget-object v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, "t":Landroid/text/format/Time;
    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 474
    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v6, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    int-to-long v2, v4

    .line 475
    .local v2, "julianDay":J
    const/4 v0, 0x0

    .line 476
    .local v0, "dayName":Ljava/lang/String;
    iget-object v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 478
    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 479
    iget-object v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00ca

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 501
    :goto_0
    return-object v0

    .line 480
    :cond_0
    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    sub-long/2addr v4, v8

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 481
    iget-object v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_1
    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    add-long/2addr v4, v8

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    .line 483
    iget-object v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00cb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 487
    :cond_2
    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    .line 488
    const-string v4, "action_bar"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 489
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildFullDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_3
    iget-object v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_4
    const-string v4, "action_bar"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 495
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildFullDate()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 497
    :cond_5
    iget-object v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0c00c8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private buildDayOfWeek()Ljava/lang/String;
    .locals 18

    .prologue
    .line 526
    new-instance v11, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v11, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 527
    .local v11, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v11, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 528
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, v11, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    int-to-long v12, v2

    .line 529
    .local v12, "julianDay":J
    const/4 v10, 0x0

    .line 530
    .local v10, "dayOfWeek":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 532
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    cmp-long v2, v12, v2

    if-nez v2, :cond_0

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0016

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    .line 535
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 537
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v17

    .line 533
    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 557
    :goto_0
    return-object v10

    .line 538
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    cmp-long v2, v12, v2

    if-nez v2, :cond_1

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0019

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    .line 541
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 543
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v17

    .line 539
    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 544
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    cmp-long v2, v12, v2

    if-nez v2, :cond_2

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f0c0017

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    .line 547
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 549
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v17

    .line 545
    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 551
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 553
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private buildDayViewDayOfWeek()Ljava/lang/String;
    .locals 10

    .prologue
    .line 511
    new-instance v9, Landroid/text/format/Time;

    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 512
    .local v9, "t":Landroid/text/format/Time;
    iget-wide v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 513
    const/4 v8, 0x0

    .line 514
    .local v8, "dayOfWeek":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 516
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const/4 v6, 0x2

    iget-object v7, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 520
    return-object v8
.end method

.method private buildFullDate()Ljava/lang/String;
    .locals 9

    .prologue
    .line 567
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 568
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const/16 v6, 0x14

    iget-object v7, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 572
    .local v8, "date":Ljava/lang/String;
    return-object v8
.end method

.method private buildLunarDay()Ljava/lang/String;
    .locals 4

    .prologue
    .line 682
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 683
    .local v1, "t":Landroid/text/format/Time;
    iget-wide v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 685
    new-instance v0, Lcn/nubia/calendar/util/ChineseCalendar;

    iget-object v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    invoke-direct {v0, v2, v3}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;Landroid/text/format/Time;)V

    .line 686
    .local v0, "chineseCal":Lcn/nubia/calendar/util/ChineseCalendar;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mLunarName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseMonthAndDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private buildLunarYear(I)Ljava/lang/String;
    .locals 8
    .param p1, "flag"    # I

    .prologue
    .line 591
    new-instance v3, Landroid/text/format/Time;

    iget-object v5, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 592
    .local v3, "t":Landroid/text/format/Time;
    iget-wide v6, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v3, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 593
    new-instance v2, Lcn/nubia/calendar/util/ChineseCalendar;

    iget-object v5, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, v3}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;Landroid/text/format/Time;)V

    .line 594
    .local v2, "mChineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    invoke-virtual {v2}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseStringMonth()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "chineseStringMonth":Ljava/lang/String;
    iget-wide v6, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v2, v6, v7}, Lcn/nubia/calendar/util/ChineseCalendar;->getYearGZ1(J)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "yearGZ":Ljava/lang/String;
    invoke-virtual {v2}, Lcn/nubia/calendar/util/ChineseCalendar;->getAnimalYear()Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "animalYear":Ljava/lang/String;
    const/4 v5, 0x4

    if-ne p1, v5, :cond_0

    .line 598
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 600
    :goto_0
    return-object v5

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private buildMonthDate()Ljava/lang/String;
    .locals 9

    .prologue
    .line 620
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 621
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const v6, 0x10038

    iget-object v7, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 628
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 629
    .local v8, "date":Ljava/lang/String;
    return-object v8
.end method

.method private buildMonthDayDate()Ljava/lang/String;
    .locals 9

    .prologue
    .line 608
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 609
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const v6, 0x10018

    iget-object v7, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, "date":Ljava/lang/String;
    return-object v8
.end method

.method private buildWeekDate()Ljava/lang/String;
    .locals 18

    .prologue
    .line 638
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v14, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 639
    .local v14, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    invoke-virtual {v14, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/calendar/util/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v13

    .line 641
    .local v13, "firstDayOfWeek":I
    iget v11, v14, Landroid/text/format/Time;->weekDay:I

    .line 642
    .local v11, "dayOfWeek":I
    sub-int v12, v11, v13

    .line 643
    .local v12, "diff":I
    if-eqz v12, :cond_1

    .line 644
    if-gez v12, :cond_0

    .line 645
    add-int/lit8 v12, v12, 0x7

    .line 647
    :cond_0
    iget v2, v14, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v12

    iput v2, v14, Landroid/text/format/Time;->monthDay:I

    .line 648
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 651
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 653
    .local v4, "weekStartTime":J
    const-wide/32 v2, 0x240c8400

    add-long/2addr v2, v4

    const-wide/32 v16, 0x5265c00

    sub-long v6, v2, v16

    .line 658
    .local v6, "weekEndTime":J
    new-instance v15, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v15, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 659
    .local v15, "t1":Landroid/text/format/Time;
    invoke-virtual {v14, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 660
    const v8, 0x10018

    .line 669
    .local v8, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    .line 671
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v10

    .line 672
    .local v10, "date":Ljava/lang/String;
    return-object v10
.end method

.method private buildWeekNum()Ljava/lang/String;
    .locals 6

    .prologue
    .line 676
    iget-wide v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Lcn/nubia/calendar/util/Utils;->getWeekNumberFromTime(JLandroid/content/Context;)I

    move-result v0

    .line 677
    .local v0, "week":I
    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0007

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 678
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 677
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setMidnightHandler()V
    .locals 7

    .prologue
    .line 185
    iget-object v5, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 188
    .local v0, "now":J
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 189
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 190
    const v5, 0x15180

    iget v6, v4, Landroid/text/format/Time;->hour:I

    mul-int/lit16 v6, v6, 0xe10

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->minute:I

    mul-int/lit8 v6, v6, 0x3c

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/text/format/Time;->second:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v2, v5

    .line 192
    .local v2, "runInMillis":J
    iget-object v5, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    return-void
.end method


# virtual methods
.method public buildMonthYearDate()Ljava/lang/String;
    .locals 9

    .prologue
    .line 576
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 577
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mFormatter:Ljava/util/Formatter;

    iget-wide v2, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    iget-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    const v6, 0x10034

    iget-object v7, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 584
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 586
    .local v8, "date":Ljava/lang/String;
    return-object v8
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 406
    iget-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030019

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 408
    .local v1, "v":Landroid/view/View;
    const v3, 0x7f110064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 409
    .local v2, "viewType":Landroid/widget/TextView;
    const v3, 0x7f110065

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 410
    .local v0, "date":Landroid/widget/TextView;
    packed-switch p1, :pswitch_data_0

    .line 442
    move-object v1, p2

    .line 445
    :cond_0
    :goto_0
    return-object v1

    .line 412
    :pswitch_0
    iget-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-boolean v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v3, :cond_0

    .line 414
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildMonthDayDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 418
    :pswitch_1
    iget-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    iget-boolean v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v3, :cond_0

    .line 420
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildWeekDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-boolean v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v3, :cond_0

    .line 426
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildMonthDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 430
    :pswitch_3
    iget-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-boolean v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v3, :cond_0

    .line 432
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildMonthDayDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 437
    :pswitch_4
    const-string v3, "drop_down"

    invoke-direct {p0, v3}, Lcn/nubia/calendar/CalendarViewAdapter;->buildDayNameOfNewView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildMonthDayDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 209
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 218
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 231
    iget-boolean v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mShowDate:Z

    if-eqz v8, :cond_7

    .line 233
    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0x7f03001a

    if-eq v8, v9, :cond_2

    .line 235
    :cond_0
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03001a

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 240
    .local v6, "v":Landroid/view/View;
    new-instance v8, Ljava/lang/Integer;

    const v9, 0x7f03001a

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    :goto_0
    const v8, 0x7f110066

    .line 246
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 247
    .local v7, "weekDay":Landroid/widget/TextView;
    const v8, 0x7f110067

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    .local v0, "date":Landroid/widget/TextView;
    iget v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mCurrentMainView:I

    packed-switch v8, :pswitch_data_0

    .line 340
    :pswitch_0
    const/4 v6, 0x0

    .line 380
    .end local v0    # "date":Landroid/widget/TextView;
    .end local v7    # "weekDay":Landroid/widget/TextView;
    :goto_1
    if-eqz v6, :cond_1

    .line 381
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    iget v9, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mDisplayWidth:I

    iget v10, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mActionBarPadding:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mArrowWidth:I

    sub-int/2addr v9, v10

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    :cond_1
    return-object v6

    .line 243
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    move-object v6, p2

    .restart local v6    # "v":Landroid/view/View;
    goto :goto_0

    .line 256
    .restart local v0    # "date":Landroid/widget/TextView;
    .restart local v7    # "weekDay":Landroid/widget/TextView;
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildFullDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mCountry:Ljava/lang/String;

    invoke-static {v8}, Lcn/nubia/calendar/util/Utils;->isChineseHolidayVisible(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 258
    sget-object v8, Lcn/nubia/calendar/CalendarViewAdapter;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "is_lunar_visible"

    const/4 v10, 0x1

    .line 259
    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcn/nubia/calendar/CalendarViewAdapter;->mIsLunarVisible:Z

    .line 263
    sget-boolean v8, Lcn/nubia/calendar/CalendarViewAdapter;->mIsLunarVisible:Z

    if-eqz v8, :cond_3

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildDayViewDayOfWeek()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 265
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildLunarDay()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 264
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 267
    :cond_3
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildDayViewDayOfWeek()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 270
    :cond_4
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildDayViewDayOfWeek()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 275
    :pswitch_2
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcn/nubia/calendar/util/Utils;->getShowWeekNumber(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 281
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildMonthYearDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildWeekNum()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 288
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildMonthYearDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 313
    :pswitch_3
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildMonthYearDate()Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "monthYearDate":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 315
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 316
    .local v4, "oldFirstChar":C
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    .line 317
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, "newFirstChar":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    .line 321
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "formatMonthYearDate":Ljava/lang/String;
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    .end local v1    # "formatMonthYearDate":Ljava/lang/String;
    .end local v3    # "newFirstChar":Ljava/lang/String;
    .end local v4    # "oldFirstChar":C
    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 329
    .end local v2    # "monthYearDate":Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildDayOfWeek()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->buildFullDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 334
    :pswitch_5
    const-string v8, "action_bar"

    invoke-direct {p0, v8}, Lcn/nubia/calendar/CalendarViewAdapter;->buildDayNameOfNewView(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 344
    .end local v0    # "date":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "weekDay":Landroid/widget/TextView;
    :cond_7
    if-eqz p2, :cond_8

    .line 345
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0x7f03001b

    if-eq v8, v9, :cond_9

    .line 346
    :cond_8
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03001b

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 351
    .restart local v6    # "v":Landroid/view/View;
    new-instance v8, Ljava/lang/Integer;

    const v9, 0x7f03001b

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    move-object v5, v6

    .line 356
    check-cast v5, Landroid/widget/TextView;

    .line 357
    .local v5, "title":Landroid/widget/TextView;
    iget v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mCurrentMainView:I

    packed-switch v8, :pswitch_data_1

    .line 376
    :pswitch_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 354
    .end local v5    # "title":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_9
    move-object v6, p2

    .restart local v6    # "v":Landroid/view/View;
    goto :goto_2

    .line 359
    .restart local v5    # "title":Landroid/widget/TextView;
    :pswitch_7
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 362
    :pswitch_8
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 365
    :pswitch_9
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 368
    :pswitch_a
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 372
    :pswitch_b
    iget-object v8, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 357
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mButtonNames:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMidnightHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public refresh(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    iget-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    .line 174
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTimeZone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "time":Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    .local v0, "now":J
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 177
    iget-wide v4, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    int-to-long v4, v3

    iput-wide v4, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mTodayJulianDay:J

    .line 178
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->notifyDataSetChanged()V

    .line 179
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->setMidnightHandler()V

    .line 180
    return-void
.end method

.method public setMainView(I)V
    .locals 0
    .param p1, "viewType"    # I

    .prologue
    .line 451
    iput p1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mCurrentMainView:I

    .line 452
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->notifyDataSetChanged()V

    .line 453
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 458
    iput-wide p1, p0, Lcn/nubia/calendar/CalendarViewAdapter;->mMilliTime:J

    .line 459
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarViewAdapter;->notifyDataSetChanged()V

    .line 460
    return-void
.end method
