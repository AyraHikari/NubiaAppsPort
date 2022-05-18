.class public Lcn/nubia/calendar/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/util/Utils$CalendarBroadcastReceiver;,
        Lcn/nubia/calendar/util/Utils$DNASegment;,
        Lcn/nubia/calendar/util/Utils$DNAStrand;,
        Lcn/nubia/calendar/util/Utils$LocationXY;
    }
.end annotation


# static fields
.field public static final APPWIDGET_DATA_TYPE:Ljava/lang/String; = "vnd.android.data/update"

.field public static final ARG_EFFECT_APP_REMIND:Ljava/lang/String; = "effect_app_remind"

.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field public static final CLOSE_EMAIL_MARKER:Ljava/lang/String; = ">"

.field static CONFLICT_COLOR:I = 0x0

.field private static final CORNERS:[F

.field static final DAY_IN_MINUTES:I = 0x5a0

.field private static final DEBUG:Z = false

.field public static final DECLINED_EVENT_ALPHA:I = 0x66

.field public static final DECLINED_EVENT_TEXT_ALPHA:I = 0xc0

.field public static final DONE_DELETE:I = 0x4

.field public static final DONE_EXIT:I = 0x1

.field public static final DONE_REVERT:I = 0x1

.field public static final DONE_SAVE:I = 0x2

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final EXTRA_IS_END:Ljava/lang/String; = "end"

.field public static final EXTRA_MSG:Ljava/lang/String; = "flagMsg"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final FANCY_ICON_URI:Landroid/net/Uri;

.field public static final FIRST_IN:Ljava/lang/String; = "first_in"

.field private static final HIGH_ALPHA:I = -0x1000000

.field private static final INTENSITY_ADJUST:F = 0.8f

.field public static final INTENT_KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field public static final INTENT_KEY_HOME:Ljava/lang/String; = "KEY_HOME"

.field public static final INTENT_KEY_VIEW_TYPE:Ljava/lang/String; = "VIEW"

.field public static final INTENT_VALUE_VIEW_TYPE_DAY:Ljava/lang/String; = "DAY"

.field public static final KEY_QUICK_RESPONSES:Ljava/lang/String; = "preferences_quick_responses"

.field private static final LOW_ALPHA:I = -0x6a000000

.field public static final MACHINE_GENERATED_ADDRESS:Ljava/lang/String; = "calendar.google.com"

.field private static final MED_ALPHA:I = -0x4c000000

.field public static final METHOD_FANCY_ICON:Ljava/lang/String; = "fancyIcon"

.field public static final MODIFY_ALL:I = 0x3

.field public static final MODIFY_ALL_FOLLOWING:I = 0x2

.field public static final MODIFY_SELECTED:I = 0x1

.field public static final MODIFY_UNINITIALIZED:I = 0x0

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field private static final NONE:I = 0x0

.field public static final OPEN_EMAIL_MARKER:Ljava/lang/String; = " <"

.field private static final PREFIX:Ljava/lang/String; = "weekend"

.field private static final SATURATION_ADJUST:F = 1.3f

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"

.field private static final SHARE_BEAMPLUS:I = 0x0

.field private static final SHARE_BLUETOOTH:I = 0x2

.field private static final SHARE_EMAIL:I = 0x1

.field private static final SHARE_MSG:I = 0x3

.field private static final Single_HAND_KEY:Ljava/lang/String; = "single_reverse_switch"

.field private static final TAG:Ljava/lang/String; = "CalUtils"

.field private static final TODAY:I = 0x1

.field private static final TOMORROW:I = 0x2

.field public static final UNDO_DELAY:J = 0x0L

.field static final WEEK_IN_MINUTES:I = 0x2760

.field static WORK_DAY_END_LENGTH:I = 0x0

.field static WORK_DAY_END_MINUTES:I = 0x0

.field static WORK_DAY_MINUTES:I = 0x0

.field static WORK_DAY_START_MINUTES:I = 0x0

.field public static final YUN_SDK_APPID:Ljava/lang/String; = "383634"

.field public static final YUN_SDK_APPKEY:Ljava/lang/String; = "498470a86cf94e81bbe25623a62eac57"

.field private static cls:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final defaultMinutes:I = 0x3ca

.field private static interTime:Landroid/text/format/Time;

.field private static isEnd:Z

.field private static mAllowWeekForDetailView:Z

.field public static mDayRes:[I

.field public static mEndDayOfMonth:I

.field public static mEndHour:I

.field public static mEndMinute:I

.field public static mEndMonthOfYear:I

.field private static mEndTimeUpdate:J

.field public static mEndYear:I

.field static mMinutesLoaded:Z

.field public static mStartDayOfMonth:I

.field public static mStartHour:I

.field public static mStartMinute:I

.field public static mStartMonthOfYear:I

.field public static mStartYear:I

.field private static final mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

.field private static mTardis:J

.field public static m_AMPM:Ljava/lang/String;

.field public static nongliFlag:Ljava/lang/String;

.field public static prefs0:Landroid/content/SharedPreferences;

.field public static prefs1:Landroid/content/SharedPreferences;

.field public static prefs2:Landroid/content/SharedPreferences;

.field public static prefs3:Landroid/content/SharedPreferences;

.field public static prefs4:Landroid/content/SharedPreferences;

.field public static prefs5:Landroid/content/SharedPreferences;

.field public static prefs6:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 156
    const/16 v0, 0x348

    sput v0, Lcn/nubia/calendar/util/Utils;->WORK_DAY_MINUTES:I

    .line 157
    const/16 v0, 0x168

    sput v0, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    .line 158
    const/16 v0, 0x4b0

    sput v0, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    .line 159
    sget v0, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v0, v0, 0x5a0

    sput v0, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_LENGTH:I

    .line 160
    const/high16 v0, -0x1000000

    sput v0, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    .line 161
    sput-boolean v3, Lcn/nubia/calendar/util/Utils;->mMinutesLoaded:Z

    .line 168
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcn/nubia/calendar/util/Utils;->mEndTimeUpdate:J

    .line 169
    sput-object v2, Lcn/nubia/calendar/util/Utils;->prefs0:Landroid/content/SharedPreferences;

    .line 170
    sput-object v2, Lcn/nubia/calendar/util/Utils;->prefs1:Landroid/content/SharedPreferences;

    .line 171
    sput-object v2, Lcn/nubia/calendar/util/Utils;->prefs2:Landroid/content/SharedPreferences;

    .line 172
    sput-object v2, Lcn/nubia/calendar/util/Utils;->prefs3:Landroid/content/SharedPreferences;

    .line 173
    sput-object v2, Lcn/nubia/calendar/util/Utils;->prefs4:Landroid/content/SharedPreferences;

    .line 174
    sput-object v2, Lcn/nubia/calendar/util/Utils;->prefs5:Landroid/content/SharedPreferences;

    .line 175
    sput-object v2, Lcn/nubia/calendar/util/Utils;->prefs6:Landroid/content/SharedPreferences;

    .line 187
    const-string v0, "byXNMS521"

    sput-object v0, Lcn/nubia/calendar/util/Utils;->nongliFlag:Ljava/lang/String;

    .line 191
    new-instance v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    const-string v1, "cn.nubia.calendar.preset_preferences"

    invoke-direct {v0, v1}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    .line 193
    sput-boolean v3, Lcn/nubia/calendar/util/Utils;->mAllowWeekForDetailView:Z

    .line 194
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/calendar/util/Utils;->mTardis:J

    .line 201
    const-string v0, "content://cn.nubia.launcher.unreadMark"

    .line 202
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->FANCY_ICON_URI:Landroid/net/Uri;

    .line 211
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/calendar/util/Utils;->CORNERS:[F

    .line 217
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/calendar/util/Utils;->mDayRes:[I

    .line 3041
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    .line 3232
    sput-object v2, Lcn/nubia/calendar/util/Utils;->cls:Ljava/lang/Class;

    .line 3233
    sput-boolean v3, Lcn/nubia/calendar/util/Utils;->isEnd:Z

    return-void

    .line 211
    :array_0
    .array-data 4
        0x0
        0x0
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x0
        0x0
    .end array-data

    .line 217
    :array_1
    .array-data 4
        0x7f020171
        0x7f02017c
        0x7f020187
        0x7f02018a
        0x7f02018b
        0x7f02018c
        0x7f02018d
        0x7f02018e
        0x7f02018f
        0x7f020172
        0x7f020173
        0x7f020174
        0x7f020175
        0x7f020176
        0x7f020177
        0x7f020178
        0x7f020179
        0x7f02017a
        0x7f02017b
        0x7f02017d
        0x7f02017e
        0x7f02017f
        0x7f020180
        0x7f020181
        0x7f020182
        0x7f020183
        0x7f020184
        0x7f020185
        0x7f020186
        0x7f020188
        0x7f020189
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddTitleStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 3133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/nubia/calendar/util/Utils;->nongliFlag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static CalendarMusicFileExists(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 3314
    if-nez p0, :cond_0

    move v0, v8

    .line 3337
    :goto_0
    return v0

    .line 3317
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 3318
    .local v7, "uriAddress":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    .line 3319
    goto :goto_0

    .line 3321
    :cond_1
    const-string v0, "content"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3322
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3324
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    move v0, v8

    .line 3325
    goto :goto_0

    .line 3328
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 3332
    :cond_3
    if-eqz v6, :cond_4

    .line 3333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v9

    .line 3329
    goto :goto_0

    .line 3332
    :cond_5
    if-eqz v6, :cond_6

    .line 3333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    move v0, v8

    .line 3337
    goto :goto_0

    .line 3332
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 3333
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3335
    :cond_7
    throw v0
.end method

.method public static GetLunarTitle(IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "curMonthIsLeap"    # Z
    .param p4, "FormatdateString"    # Ljava/lang/String;
    .param p5, "mYear"    # Ljava/lang/String;
    .param p6, "mMonth"    # Ljava/lang/String;
    .param p7, "mWeek"    # Ljava/lang/String;
    .param p8, "flag"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2138
    const-string v1, ""

    .line 2139
    .local v1, "monthString":Ljava/lang/String;
    invoke-static {p0}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v0

    .line 2140
    .local v0, "leapMonth":I
    if-lez v0, :cond_1

    .line 2141
    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    .line 2142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2143
    invoke-static {p1, v4}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2150
    :goto_0
    if-eqz p8, :cond_2

    .line 2151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2152
    invoke-static {p2, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2153
    invoke-static {p4}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2155
    :goto_1
    return-object v2

    .line 2145
    :cond_0
    invoke-static {p1, v4}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2148
    :cond_1
    invoke-static {p1, v4}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2155
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2156
    invoke-static {p2, v5}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2157
    invoke-static {p4}, Lcn/nubia/commonui/widget/LunarUtil;->computeWeekday(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static InterceptionTitleStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 3137
    if-eqz p0, :cond_0

    sget-object v0, Lcn/nubia/calendar/util/Utils;->nongliFlag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3138
    sget-object v0, Lcn/nubia/calendar/util/Utils;->nongliFlag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 3140
    .end local p0    # "strTitle":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static IsLeapEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 3145
    if-eqz p0, :cond_0

    sget-object v0, Lcn/nubia/calendar/util/Utils;->nongliFlag:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3146
    const/4 v0, 0x1

    .line 3148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static NongliSetText(JLandroid/content/Context;)Ljava/lang/String;
    .locals 18
    .param p0, "milis"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2016
    const/4 v13, 0x0

    .line 2017
    .local v13, "solarToLunar":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2019
    .local v2, "FormatdateString":Ljava/lang/String;
    const-string v12, ""

    .line 2020
    .local v12, "monthString":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2021
    .local v3, "calendar":Ljava/util/Calendar;
    move-wide/from16 v0, p0

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2022
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 2023
    .local v14, "year":I
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v10, v16, 0x1

    .line 2024
    .local v10, "monthOfYear":I
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2027
    .local v5, "dayOfMonth":I
    :try_start_0
    invoke-static {v14, v10, v5}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v2

    .line 2029
    invoke-static {v2}, Lcn/nubia/commonui/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 2032
    :goto_0
    if-nez v13, :cond_0

    .line 2033
    const-string v16, " "

    .line 2066
    :goto_1
    return-object v16

    .line 2034
    :cond_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2035
    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2036
    .local v9, "lunarYear":I
    const/16 v16, 0x4

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2037
    .local v8, "lunarMonth":I
    const/16 v16, 0x6

    const/16 v17, 0x8

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2043
    .local v7, "lunarDay":I
    :goto_2
    const/4 v4, 0x0

    .line 2044
    .local v4, "curMonthIsLeap":Z
    const/16 v16, 0x14

    move/from16 v0, v16

    if-le v8, v0, :cond_1

    .line 2045
    add-int/lit8 v8, v8, -0x14

    .line 2046
    const/4 v4, 0x1

    .line 2048
    :cond_1
    invoke-static {v14}, Lcn/nubia/commonui/widget/LunarUtil;->getLeapMonth(I)I

    move-result v6

    .line 2049
    .local v6, "leapMonth":I
    if-lez v6, :cond_4

    .line 2050
    if-ne v8, v6, :cond_3

    if-eqz v4, :cond_3

    .line 2051
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcn/nubia/commonui/widget/LunarUtil;->LEAP:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x1

    .line 2052
    move/from16 v0, v17

    invoke-static {v8, v0}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2060
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c0054

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2061
    .local v11, "monthStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0c0247

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2062
    .local v15, "yearStr":Ljava/lang/String;
    invoke-static {v9}, Lcn/nubia/calendar/util/Utils;->islunaryear(I)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2063
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-static {v7, v0}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 2039
    .end local v4    # "curMonthIsLeap":Z
    .end local v6    # "leapMonth":I
    .end local v7    # "lunarDay":I
    .end local v8    # "lunarMonth":I
    .end local v9    # "lunarYear":I
    .end local v11    # "monthStr":Ljava/lang/String;
    .end local v15    # "yearStr":Ljava/lang/String;
    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2040
    .restart local v9    # "lunarYear":I
    const/16 v16, 0x4

    const/16 v17, 0x7

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    add-int/lit8 v8, v16, 0x14

    .line 2041
    .restart local v8    # "lunarMonth":I
    const/16 v16, 0x7

    const/16 v17, 0x9

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .restart local v7    # "lunarDay":I
    goto/16 :goto_2

    .line 2054
    .restart local v4    # "curMonthIsLeap":Z
    .restart local v6    # "leapMonth":I
    :cond_3
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v8, v0}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 2058
    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v8, v0}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 2066
    .restart local v11    # "monthStr":Ljava/lang/String;
    .restart local v15    # "yearStr":Ljava/lang/String;
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x2

    .line 2067
    move/from16 v0, v17

    invoke-static {v7, v0}, Lcn/nubia/commonui/widget/LunarUtil;->numConvert(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 2030
    .end local v4    # "curMonthIsLeap":Z
    .end local v6    # "leapMonth":I
    .end local v7    # "lunarDay":I
    .end local v8    # "lunarMonth":I
    .end local v9    # "lunarYear":I
    .end local v11    # "monthStr":Ljava/lang/String;
    .end local v15    # "yearStr":Ljava/lang/String;
    :catch_0
    move-exception v16

    goto/16 :goto_0
.end method

.method private static addAllDayToStrands(Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;II)V
    .locals 5
    .param p0, "event"    # Lcn/nubia/calendar/model/Event;
    .param p2, "firstJulianDay"    # I
    .param p3, "numDays"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/calendar/model/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$DNAStrand;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1116
    .local p1, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    sget v3, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    invoke-static {p1, v3}, Lcn/nubia/calendar/util/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcn/nubia/calendar/util/Utils$DNAStrand;

    move-result-object v2

    .line 1118
    .local v2, "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    iget-object v3, v2, Lcn/nubia/calendar/util/Utils$DNAStrand;->allDays:[I

    if-nez v3, :cond_0

    .line 1119
    new-array v3, p3, [I

    iput-object v3, v2, Lcn/nubia/calendar/util/Utils$DNAStrand;->allDays:[I

    .line 1123
    :cond_0
    iget v3, p0, Lcn/nubia/calendar/model/Event;->endDay:I

    sub-int/2addr v3, p2

    add-int/lit8 v4, p3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1124
    .local v0, "end":I
    iget v3, p0, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int/2addr v3, p2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_2

    .line 1125
    iget-object v3, v2, Lcn/nubia/calendar/util/Utils$DNAStrand;->allDays:[I

    aget v3, v3, v1

    if-eqz v3, :cond_1

    .line 1127
    iget-object v3, v2, Lcn/nubia/calendar/util/Utils$DNAStrand;->allDays:[I

    sget v4, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    aput v4, v3, v1

    .line 1124
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    iget-object v3, v2, Lcn/nubia/calendar/util/Utils$DNAStrand;->allDays:[I

    iget v4, p0, Lcn/nubia/calendar/model/Event;->color:I

    aput v4, v3, v1

    goto :goto_1

    .line 1133
    :cond_2
    return-void
.end method

.method private static addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V
    .locals 11
    .param p1, "event"    # Lcn/nubia/calendar/model/Event;
    .param p3, "firstJulianDay"    # I
    .param p4, "minStart"    # I
    .param p5, "minMinutes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendar/util/Utils$DNASegment;",
            ">;",
            "Lcn/nubia/calendar/model/Event;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$DNAStrand;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1490
    .local p0, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/Utils$DNASegment;>;"
    .local p2, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    iget v0, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v2, p1, Lcn/nubia/calendar/model/Event;->endDay:I

    if-le v0, v2, :cond_0

    .line 1491
    const-string v0, "CalUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event starts after it ends: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    :cond_0
    iget v0, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v2, p1, Lcn/nubia/calendar/model/Event;->endDay:I

    if-eq v0, v2, :cond_2

    .line 1495
    new-instance v1, Lcn/nubia/calendar/model/Event;

    invoke-direct {v1}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 1496
    .local v1, "lhs":Lcn/nubia/calendar/model/Event;
    iget v0, p1, Lcn/nubia/calendar/model/Event;->color:I

    iput v0, v1, Lcn/nubia/calendar/model/Event;->color:I

    .line 1497
    iget v0, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v0, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 1499
    iget v0, p1, Lcn/nubia/calendar/model/Event;->startTime:I

    iput v0, v1, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 1500
    iget v0, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v0, v1, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 1501
    const/16 v0, 0x59f

    iput v0, v1, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 1503
    :goto_0
    iget v0, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v2, p1, Lcn/nubia/calendar/model/Event;->endDay:I

    if-eq v0, v2, :cond_1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    .line 1504
    invoke-static/range {v0 .. v5}, Lcn/nubia/calendar/util/Utils;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    .line 1508
    iget v0, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 1509
    iget v0, v1, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v0, v1, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 1510
    const/4 v0, 0x0

    iput v0, v1, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 1511
    const/4 p4, 0x0

    goto :goto_0

    .line 1514
    :cond_1
    iget v0, p1, Lcn/nubia/calendar/model/Event;->endTime:I

    iput v0, v1, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 1515
    move-object p1, v1

    .line 1518
    .end local v1    # "lhs":Lcn/nubia/calendar/model/Event;
    :cond_2
    new-instance v9, Lcn/nubia/calendar/util/Utils$DNASegment;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Lcn/nubia/calendar/util/Utils$DNASegment;-><init>(Lcn/nubia/calendar/util/Utils$1;)V

    .line 1519
    .local v9, "segment":Lcn/nubia/calendar/util/Utils$DNASegment;
    iget v0, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int/2addr v0, p3

    mul-int/lit16 v6, v0, 0x5a0

    .line 1520
    .local v6, "dayOffset":I
    add-int/lit16 v0, v6, 0x5a0

    add-int/lit8 v7, v0, -0x1

    .line 1522
    .local v7, "endOfDay":I
    iget v0, p1, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int/2addr v0, v6

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1525
    iget v0, v9, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    add-int v0, v0, p5

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1526
    .local v8, "minEnd":I
    iget v0, p1, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int/2addr v0, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1527
    iget v0, v9, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    if-le v0, v7, :cond_3

    .line 1528
    iput v7, v9, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1531
    :cond_3
    iget v0, p1, Lcn/nubia/calendar/model/Event;->color:I

    iput v0, v9, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    .line 1532
    iget v0, p1, Lcn/nubia/calendar/model/Event;->startDay:I

    iput v0, v9, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    .line 1533
    invoke-virtual {p0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1536
    iget v0, v9, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {p2, v0}, Lcn/nubia/calendar/util/Utils;->getOrCreateStrand(Ljava/util/HashMap;I)Lcn/nubia/calendar/util/Utils$DNAStrand;

    move-result-object v10

    .line 1537
    .local v10, "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    iget v0, v10, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1538
    return-void
.end method

.method public static adjustToBeginningOfWeek(Landroid/text/format/Time;I)V
    .locals 3
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 3073
    iget v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 3074
    .local v0, "dayOfWeek":I
    sub-int v1, v0, p1

    .line 3075
    .local v1, "diff":I
    if-eqz v1, :cond_1

    .line 3076
    if-gez v1, :cond_0

    .line 3077
    add-int/lit8 v1, v1, 0x7

    .line 3079
    :cond_0
    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/text/format/Time;->monthDay:I

    .line 3080
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 3082
    :cond_1
    return-void
.end method

.method public static adjustToEndingOfWeek(Landroid/text/format/Time;I)V
    .locals 3
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 3085
    iget v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 3086
    .local v0, "dayOfWeek":I
    sub-int v1, v0, p1

    .line 3087
    .local v1, "diff":I
    if-eqz v1, :cond_1

    .line 3088
    if-gez v1, :cond_0

    .line 3089
    add-int/lit8 v1, v1, 0x7

    .line 3091
    :cond_0
    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v2, v1

    iput v2, p0, Landroid/text/format/Time;->monthDay:I

    .line 3094
    :cond_1
    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x7

    iput v2, p0, Landroid/text/format/Time;->monthDay:I

    .line 3095
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 3096
    return-void
.end method

.method public static adjustYearViewHeight(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3341
    .line 3342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_keys_navigationbar"

    const/4 v3, 0x0

    .line 3341
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3344
    .local v0, "isEnableNavibar":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09024a

    .line 3346
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    .line 3351
    :goto_0
    return-void

    .line 3348
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090153

    .line 3349
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcn/nubia/calendar/submodule_year/view/YearView;->NAVIGATION_PADDING:I

    goto :goto_0
.end method

.method public static buileShareAgendaUri(Landroid/content/Context;JZ)Landroid/net/Uri;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "isFromSd"    # Z

    .prologue
    .line 2751
    const/4 v12, 0x1

    new-array v10, v12, [Ljava/lang/String;

    .line 2752
    .local v10, "selectionArgs":[Ljava/lang/String;
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2753
    .local v6, "lookupKey":Ljava/lang/String;
    const/4 v12, 0x0

    aput-object v6, v10, v12

    .line 2757
    const-string v9, "_id=?"

    .line 2758
    .local v9, "selection":Ljava/lang/String;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2759
    .local v5, "localStream":Ljava/io/ByteArrayOutputStream;
    const-string v12, "_id=?"

    invoke-static {p0, v5, v12, v10}, Lcn/nubia/calendar/util/Utils;->outputEventAsVCalendar(Landroid/content/Context;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2760
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 2763
    .local v0, "data":[B
    :try_start_0
    const-string v3, "agenda.ics"

    .line 2764
    .local v3, "fileName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2765
    .local v7, "path":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 2766
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/zcalendar/picture"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2772
    :goto_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2773
    .local v8, "pathFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 2774
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v11

    .line 2775
    .local v11, "success":Z
    const-string v12, "TAG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "create file:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    .end local v11    # "success":Z
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2779
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 2780
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 2781
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 2787
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "pathFile":Ljava/io/File;
    :goto_1
    return-object v12

    .line 2769
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/calendar/EnvironmentProxy;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v13

    .line 2770
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/zcalendar/picture"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    goto :goto_0

    .line 2782
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2783
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2787
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    const/4 v12, 0x0

    goto :goto_1

    .line 2784
    :catch_1
    move-exception v1

    .line 2785
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 759
    .local p0, "isDuplicateName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 760
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 761
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, "displayName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 766
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 765
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 769
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static clearTimeChangesReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 2560
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2561
    return-void
.end method

.method public static compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 6
    .param p0, "c1"    # Landroid/database/Cursor;
    .param p1, "c2"    # Landroid/database/Cursor;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 495
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v2

    .line 499
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 500
    .local v1, "numColumns":I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 504
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 508
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 509
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 510
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 512
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    .end local v0    # "i":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 3
    .param p0, "recycle"    # Landroid/text/format/Time;
    .param p1, "localTime"    # J
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    .line 719
    if-nez p0, :cond_0

    .line 720
    new-instance p0, Landroid/text/format/Time;

    .end local p0    # "recycle":Landroid/text/format/Time;
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 722
    .restart local p0    # "recycle":Landroid/text/format/Time;
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 723
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 724
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 725
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 3
    .param p0, "recycle"    # Landroid/text/format/Time;
    .param p1, "utcTime"    # J
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    .line 708
    if-nez p0, :cond_0

    .line 709
    new-instance p0, Landroid/text/format/Time;

    .end local p0    # "recycle":Landroid/text/format/Time;
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 711
    .restart local p0    # "recycle":Landroid/text/format/Time;
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 712
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 713
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 714
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;)Ljava/util/HashMap;
    .locals 27
    .param p0, "firstJulianDay"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "minPixels"    # I
    .param p5, "dayXs"    # [I
    .param p6, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;III[I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$DNAStrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    sget-boolean v5, Lcn/nubia/calendar/util/Utils;->mMinutesLoaded:Z

    if-nez v5, :cond_1

    .line 883
    if-nez p6, :cond_0

    .line 884
    const-string v5, "CalUtils"

    const-string v6, "No context and haven\'t loaded parameters yet! Can\'t create DNA."

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 888
    .local v24, "res":Landroid/content/res/Resources;
    const v5, 0x7f0d0110

    .line 889
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    .line 890
    const v5, 0x7f10002e

    .line 891
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    .line 892
    const v5, 0x7f10002d

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    .line 893
    sget v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v5, v5, 0x5a0

    sput v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_LENGTH:I

    .line 894
    sget v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    sub-int/2addr v5, v6

    sput v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_MINUTES:I

    .line 895
    const/4 v5, 0x1

    sput-boolean v5, Lcn/nubia/calendar/util/Utils;->mMinutesLoaded:Z

    .line 898
    .end local v24    # "res":Landroid/content/res/Resources;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    sub-int v5, p3, p2

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    if-gez p4, :cond_3

    .line 900
    :cond_2
    const-string v5, "CalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad values for createDNAStrands! events:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " dayXs:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 901
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bot-top:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v8, p3, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minPixels:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 900
    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    const/4 v4, 0x0

    .line 1110
    :goto_0
    return-object v4

    .line 906
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 907
    .local v2, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/Utils$DNASegment;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 910
    .local v4, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    new-instance v14, Lcn/nubia/calendar/util/Utils$DNAStrand;

    invoke-direct {v14}, Lcn/nubia/calendar/util/Utils$DNAStrand;-><init>()V

    .line 911
    .local v14, "blackStrand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    sget v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    iput v5, v14, Lcn/nubia/calendar/util/Utils$DNAStrand;->color:I

    .line 912
    sget v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    mul-int/lit8 v5, p4, 0x4

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_MINUTES:I

    mul-int/2addr v5, v6

    sub-int v6, p3, p2

    mul-int/lit8 v6, v6, 0x3

    div-int v7, v5, v6

    .line 922
    .local v7, "minMinutes":I
    mul-int/lit8 v5, v7, 0x5

    div-int/lit8 v23, v5, 0x2

    .line 923
    .local v23, "minOtherMinutes":I
    move-object/from16 v0, p5

    array-length v5, v0

    add-int v5, v5, p0

    add-int/lit8 v20, v5, -0x1

    .line 925
    .local v20, "lastJulianDay":I
    new-instance v3, Lcn/nubia/calendar/model/Event;

    invoke-direct {v3}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 927
    .local v3, "event":Lcn/nubia/calendar/model/Event;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/calendar/model/Event;

    .line 929
    .local v15, "currEvent":Lcn/nubia/calendar/model/Event;
    iget v5, v15, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v0, p0

    if-lt v5, v0, :cond_4

    iget v5, v15, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v0, v20

    if-gt v5, v0, :cond_4

    .line 933
    invoke-virtual {v15}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 934
    move-object/from16 v0, p5

    array-length v5, v0

    move/from16 v0, p0

    invoke-static {v15, v4, v0, v5}, Lcn/nubia/calendar/util/Utils;->addAllDayToStrands(Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;II)V

    goto :goto_1

    .line 939
    :cond_5
    invoke-virtual {v15, v3}, Lcn/nubia/calendar/model/Event;->copyTo(Lcn/nubia/calendar/model/Event;)V

    .line 940
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v0, p0

    if-ge v5, v0, :cond_6

    .line 941
    move/from16 v0, p0

    iput v0, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 942
    const/4 v5, 0x0

    iput v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 946
    :cond_6
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v0, v23

    rsub-int v6, v0, 0x5a0

    if-le v5, v6, :cond_7

    .line 947
    move/from16 v0, v23

    rsub-int v5, v0, 0x5a0

    iput v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 949
    :cond_7
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v0, v20

    if-le v5, v0, :cond_8

    .line 950
    move/from16 v0, v20

    iput v0, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 951
    const/16 v5, 0x59f

    iput v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 955
    :cond_8
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v0, v23

    if-ge v5, v0, :cond_9

    .line 956
    move/from16 v0, v23

    iput v0, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 962
    :cond_9
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v6, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ne v5, v6, :cond_a

    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    iget v6, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v23

    if-ge v5, v0, :cond_a

    .line 966
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    if-ge v5, v6, :cond_b

    .line 969
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v5, v5, v23

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 984
    :cond_a
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 985
    const/4 v6, 0x0

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcn/nubia/calendar/util/Utils;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .line 972
    :cond_b
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    if-le v5, v6, :cond_a

    .line 974
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int v5, v5, v23

    const/16 v6, 0x59f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 977
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    iget v6, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v23

    if-ge v5, v0, :cond_a

    .line 978
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    sub-int v5, v5, v23

    iput v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    goto :goto_2

    .line 991
    :cond_c
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/calendar/util/Utils$DNASegment;

    .line 992
    .local v21, "lastSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v26, v5, v6

    .line 994
    .local v26, "startMinute":I
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int/2addr v5, v6

    add-int v6, v26, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 997
    .local v17, "endMinute":I
    if-gez v26, :cond_d

    .line 998
    const/16 v26, 0x0

    .line 1000
    :cond_d
    const/16 v5, 0x2760

    move/from16 v0, v17

    if-lt v0, v5, :cond_e

    .line 1001
    const/16 v17, 0x275f

    .line 1006
    :cond_e
    move-object/from16 v0, v21

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v0, v26

    if-ge v0, v5, :cond_16

    .line 1007
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v18

    .line 1009
    .local v18, "i":I
    :cond_f
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_10

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNASegment;

    iget v5, v5, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move/from16 v0, v17

    if-lt v0, v5, :cond_f

    :cond_10
    move/from16 v19, v18

    .line 1015
    .end local v18    # "i":I
    .local v19, "i":I
    :goto_3
    if-ltz v19, :cond_16

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcn/nubia/calendar/util/Utils$DNASegment;

    .local v16, "currSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v0, v26

    if-gt v0, v5, :cond_16

    .line 1017
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    sget v6, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_12

    move/from16 v18, v19

    .line 1015
    .end local v19    # "i":I
    .restart local v18    # "i":I
    :cond_11
    :goto_4
    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v18

    .end local v18    # "i":I
    .restart local v19    # "i":I
    goto :goto_3

    .line 1022
    :cond_12
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    sub-int/2addr v5, v7

    move/from16 v0, v17

    if-ge v0, v5, :cond_13

    .line 1023
    new-instance v25, Lcn/nubia/calendar/util/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Lcn/nubia/calendar/util/Utils$DNASegment;-><init>(Lcn/nubia/calendar/util/Utils$1;)V

    .line 1024
    .local v25, "rhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v25

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1025
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    move-object/from16 v0, v25

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    .line 1026
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, v25

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1027
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move-object/from16 v0, v25

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    .line 1028
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1029
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1030
    move-object/from16 v0, v25

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1040
    .end local v25    # "rhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    :cond_13
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    add-int/2addr v5, v7

    move/from16 v0, v26

    if-le v0, v5, :cond_18

    .line 1041
    new-instance v22, Lcn/nubia/calendar/util/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Lcn/nubia/calendar/util/Utils$DNASegment;-><init>(Lcn/nubia/calendar/util/Utils$1;)V

    .line 1042
    .local v22, "lhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v22

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1043
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    move-object/from16 v0, v22

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    .line 1044
    add-int/lit8 v5, v26, -0x1

    move-object/from16 v0, v22

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1045
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move-object/from16 v0, v22

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    .line 1046
    move/from16 v0, v26

    move-object/from16 v1, v16

    iput v0, v1, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1050
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "i":I
    .restart local v18    # "i":I
    move/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1051
    move-object/from16 v0, v22

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1061
    .end local v22    # "lhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    :goto_5
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 1062
    add-int/lit8 v5, v18, 0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcn/nubia/calendar/util/Utils$DNASegment;

    .line 1063
    .restart local v25    # "rhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v25

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    sget v6, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move-object/from16 v0, v25

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v25

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    add-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_14

    .line 1066
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v25

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v25

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1068
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1069
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1071
    move-object/from16 v16, v25

    .line 1076
    .end local v25    # "rhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    :cond_14
    add-int/lit8 v5, v18, -0x1

    if-ltz v5, :cond_15

    .line 1077
    add-int/lit8 v5, v18, -0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcn/nubia/calendar/util/Utils$DNASegment;

    .line 1078
    .restart local v22    # "lhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v22

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    sget v6, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move-object/from16 v0, v22

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v22

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v16

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_15

    .line 1081
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v22

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v22

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1083
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1084
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1086
    move-object/from16 v16, v22

    .line 1089
    add-int/lit8 v18, v18, -0x1

    .line 1095
    .end local v22    # "lhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    :cond_15
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    sget v6, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    if-eq v5, v6, :cond_11

    .line 1096
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1097
    sget v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    move-object/from16 v0, v16

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    .line 1098
    sget v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    goto/16 :goto_4

    .line 1104
    .end local v16    # "currSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .end local v18    # "i":I
    :cond_16
    move-object/from16 v0, v21

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v0, v17

    if-le v0, v5, :cond_4

    .line 1105
    move-object/from16 v0, v21

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcn/nubia/calendar/util/Utils;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .end local v15    # "currEvent":Lcn/nubia/calendar/model/Event;
    .end local v17    # "endMinute":I
    .end local v21    # "lastSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .end local v26    # "startMinute":I
    :cond_17
    move-object v8, v2

    move/from16 v9, p0

    move-object v10, v4

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p5

    .line 1109
    invoke-static/range {v8 .. v13}, Lcn/nubia/calendar/util/Utils;->weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V

    goto/16 :goto_0

    .restart local v15    # "currEvent":Lcn/nubia/calendar/model/Event;
    .restart local v16    # "currSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .restart local v17    # "endMinute":I
    .restart local v19    # "i":I
    .restart local v21    # "lastSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .restart local v26    # "startMinute":I
    :cond_18
    move/from16 v18, v19

    .end local v19    # "i":I
    .restart local v18    # "i":I
    goto/16 :goto_5
.end method

.method public static createDNAStrands(ILjava/util/ArrayList;III[ILandroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 28
    .param p0, "firstJulianDay"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "minPixels"    # I
    .param p5, "dayXs"    # [I
    .param p6, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/model/Event;",
            ">;III[I",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$LocationXY;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$DNAStrand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/model/Event;>;"
    .local p7, "storeLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$LocationXY;>;"
    sget-boolean v5, Lcn/nubia/calendar/util/Utils;->mMinutesLoaded:Z

    if-nez v5, :cond_1

    .line 1142
    if-nez p6, :cond_0

    .line 1143
    const-string v5, "CalUtils"

    const-string v6, "No context and haven\'t loaded parameters yet! Can\'t create DNA."

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 1147
    .local v25, "res":Landroid/content/res/Resources;
    const v5, 0x7f0d0110

    .line 1148
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sput v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    .line 1149
    const v5, 0x7f10002e

    .line 1150
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    .line 1151
    const v5, 0x7f10002d

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    .line 1152
    sget v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    rsub-int v5, v5, 0x5a0

    sput v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_LENGTH:I

    .line 1153
    sget v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    sub-int/2addr v5, v6

    sput v5, Lcn/nubia/calendar/util/Utils;->WORK_DAY_MINUTES:I

    .line 1154
    const/4 v5, 0x1

    sput-boolean v5, Lcn/nubia/calendar/util/Utils;->mMinutesLoaded:Z

    .line 1157
    .end local v25    # "res":Landroid/content/res/Resources;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_2

    sub-int v5, p3, p2

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    if-gez p4, :cond_3

    .line 1159
    :cond_2
    const-string v5, "CalUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad values for createDNAStrands! events:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " dayXs:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1160
    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " bot-top:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v8, p3, p2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " minPixels:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1159
    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/4 v4, 0x0

    .line 1370
    :goto_0
    return-object v4

    .line 1165
    :cond_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1166
    .local v2, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/Utils$DNASegment;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1169
    .local v4, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    new-instance v15, Lcn/nubia/calendar/util/Utils$DNAStrand;

    invoke-direct {v15}, Lcn/nubia/calendar/util/Utils$DNAStrand;-><init>()V

    .line 1170
    .local v15, "blackStrand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    sget v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    iput v5, v15, Lcn/nubia/calendar/util/Utils$DNAStrand;->color:I

    .line 1171
    sget v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    mul-int/lit8 v5, p4, 0x4

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_MINUTES:I

    mul-int/2addr v5, v6

    sub-int v6, p3, p2

    mul-int/lit8 v6, v6, 0x3

    div-int v7, v5, v6

    .line 1181
    .local v7, "minMinutes":I
    mul-int/lit8 v5, v7, 0x5

    div-int/lit8 v24, v5, 0x2

    .line 1182
    .local v24, "minOtherMinutes":I
    move-object/from16 v0, p5

    array-length v5, v0

    add-int v5, v5, p0

    add-int/lit8 v21, v5, -0x1

    .line 1184
    .local v21, "lastJulianDay":I
    new-instance v3, Lcn/nubia/calendar/model/Event;

    invoke-direct {v3}, Lcn/nubia/calendar/model/Event;-><init>()V

    .line 1186
    .local v3, "event":Lcn/nubia/calendar/model/Event;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcn/nubia/calendar/model/Event;

    .line 1188
    .local v16, "currEvent":Lcn/nubia/calendar/model/Event;
    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v0, p0

    if-lt v5, v0, :cond_4

    move-object/from16 v0, v16

    iget v5, v0, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v0, v21

    if-gt v5, v0, :cond_4

    .line 1192
    invoke-virtual/range {v16 .. v16}, Lcn/nubia/calendar/model/Event;->drawAsAllday()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1193
    move-object/from16 v0, p5

    array-length v5, v0

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-static {v0, v4, v1, v5}, Lcn/nubia/calendar/util/Utils;->addAllDayToStrands(Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;II)V

    goto :goto_1

    .line 1198
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcn/nubia/calendar/model/Event;->copyTo(Lcn/nubia/calendar/model/Event;)V

    .line 1199
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    move/from16 v0, p0

    if-ge v5, v0, :cond_6

    .line 1200
    move/from16 v0, p0

    iput v0, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    .line 1201
    const/4 v5, 0x0

    iput v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 1205
    :cond_6
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    move/from16 v0, v24

    rsub-int v6, v0, 0x5a0

    if-le v5, v6, :cond_7

    .line 1206
    move/from16 v0, v24

    rsub-int v5, v0, 0x5a0

    iput v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    .line 1208
    :cond_7
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    move/from16 v0, v21

    if-le v5, v0, :cond_8

    .line 1209
    move/from16 v0, v21

    iput v0, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    .line 1210
    const/16 v5, 0x59f

    iput v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 1214
    :cond_8
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    move/from16 v0, v24

    if-ge v5, v0, :cond_9

    .line 1215
    move/from16 v0, v24

    iput v0, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 1221
    :cond_9
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    iget v6, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    if-ne v5, v6, :cond_a

    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    iget v6, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_a

    .line 1225
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    if-ge v5, v6, :cond_b

    .line 1228
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v5, v5, v24

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 1243
    :cond_a
    :goto_2
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_c

    .line 1244
    const/4 v6, 0x0

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcn/nubia/calendar/util/Utils;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .line 1231
    :cond_b
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    sget v6, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    if-le v5, v6, :cond_a

    .line 1233
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int v5, v5, v24

    const/16 v6, 0x59f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    .line 1236
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    iget v6, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    sub-int/2addr v5, v6

    move/from16 v0, v24

    if-ge v5, v0, :cond_a

    .line 1237
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    sub-int v5, v5, v24

    iput v5, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    goto :goto_2

    .line 1250
    :cond_c
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcn/nubia/calendar/util/Utils$DNASegment;

    .line 1251
    .local v22, "lastSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    iget v5, v3, Lcn/nubia/calendar/model/Event;->startDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcn/nubia/calendar/model/Event;->startTime:I

    add-int v27, v5, v6

    .line 1253
    .local v27, "startMinute":I
    iget v5, v3, Lcn/nubia/calendar/model/Event;->endDay:I

    sub-int v5, v5, p0

    mul-int/lit16 v5, v5, 0x5a0

    iget v6, v3, Lcn/nubia/calendar/model/Event;->endTime:I

    add-int/2addr v5, v6

    add-int v6, v27, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1256
    .local v18, "endMinute":I
    if-gez v27, :cond_d

    .line 1257
    const/16 v27, 0x0

    .line 1259
    :cond_d
    const/16 v5, 0x2760

    move/from16 v0, v18

    if-lt v0, v5, :cond_e

    .line 1260
    const/16 v18, 0x275f

    .line 1265
    :cond_e
    move-object/from16 v0, v22

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-ge v0, v5, :cond_16

    .line 1266
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v19

    .line 1268
    .local v19, "i":I
    :cond_f
    add-int/lit8 v19, v19, -0x1

    if-ltz v19, :cond_10

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNASegment;

    iget v5, v5, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move/from16 v0, v18

    if-lt v0, v5, :cond_f

    :cond_10
    move/from16 v20, v19

    .line 1274
    .end local v19    # "i":I
    .local v20, "i":I
    :goto_3
    if-ltz v20, :cond_16

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcn/nubia/calendar/util/Utils$DNASegment;

    .local v17, "currSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v0, v27

    if-gt v0, v5, :cond_16

    .line 1276
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    sget v6, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_12

    move/from16 v19, v20

    .line 1274
    .end local v20    # "i":I
    .restart local v19    # "i":I
    :cond_11
    :goto_4
    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v19

    .end local v19    # "i":I
    .restart local v20    # "i":I
    goto :goto_3

    .line 1281
    :cond_12
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    sub-int/2addr v5, v7

    move/from16 v0, v18

    if-ge v0, v5, :cond_13

    .line 1282
    new-instance v26, Lcn/nubia/calendar/util/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lcn/nubia/calendar/util/Utils$DNASegment;-><init>(Lcn/nubia/calendar/util/Utils$1;)V

    .line 1283
    .local v26, "rhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v26

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1284
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    move-object/from16 v0, v26

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    .line 1285
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, v26

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1286
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    .line 1287
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1288
    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1289
    move-object/from16 v0, v26

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1299
    .end local v26    # "rhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    :cond_13
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    add-int/2addr v5, v7

    move/from16 v0, v27

    if-le v0, v5, :cond_18

    .line 1300
    new-instance v23, Lcn/nubia/calendar/util/Utils$DNASegment;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Lcn/nubia/calendar/util/Utils$DNASegment;-><init>(Lcn/nubia/calendar/util/Utils$1;)V

    .line 1301
    .local v23, "lhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v23

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1302
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    move-object/from16 v0, v23

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    .line 1303
    add-int/lit8 v5, v27, -0x1

    move-object/from16 v0, v23

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1304
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    .line 1305
    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1309
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "i":I
    .restart local v19    # "i":I
    move/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 1310
    move-object/from16 v0, v23

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1320
    .end local v23    # "lhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    :goto_5
    add-int/lit8 v5, v19, 0x1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_14

    .line 1321
    add-int/lit8 v5, v19, 0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcn/nubia/calendar/util/Utils$DNASegment;

    .line 1322
    .restart local v26    # "rhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v26

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    sget v6, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move-object/from16 v0, v26

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_14

    move-object/from16 v0, v26

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v17

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    add-int/lit8 v6, v6, 0x1

    if-gt v5, v6, :cond_14

    .line 1325
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move-object/from16 v0, v26

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, v26

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    .line 1327
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1328
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1330
    move-object/from16 v17, v26

    .line 1335
    .end local v26    # "rhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    :cond_14
    add-int/lit8 v5, v19, -0x1

    if-ltz v5, :cond_15

    .line 1336
    add-int/lit8 v5, v19, -0x1

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcn/nubia/calendar/util/Utils$DNASegment;

    .line 1337
    .restart local v23    # "lhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    move-object/from16 v0, v23

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    sget v6, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move-object/from16 v0, v23

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    if-ne v5, v6, :cond_15

    move-object/from16 v0, v23

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v17

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_15

    .line 1340
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move-object/from16 v0, v23

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, v23

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    .line 1342
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1343
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1345
    move-object/from16 v17, v23

    .line 1348
    add-int/lit8 v19, v19, -0x1

    .line 1354
    .end local v23    # "lhs":Lcn/nubia/calendar/util/Utils$DNASegment;
    :cond_15
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    sget v6, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    if-eq v5, v6, :cond_11

    .line 1355
    move-object/from16 v0, v17

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1356
    sget v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    move-object/from16 v0, v17

    iput v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    .line 1357
    sget v5, Lcn/nubia/calendar/util/Utils;->CONFLICT_COLOR:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/calendar/util/Utils$DNAStrand;

    iget v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    goto/16 :goto_4

    .line 1363
    .end local v17    # "currSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .end local v19    # "i":I
    :cond_16
    move-object/from16 v0, v22

    iget v5, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v0, v18

    if-le v0, v5, :cond_4

    .line 1364
    move-object/from16 v0, v22

    iget v6, v0, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcn/nubia/calendar/util/Utils;->addNewSegment(Ljava/util/LinkedList;Lcn/nubia/calendar/model/Event;Ljava/util/HashMap;III)V

    goto/16 :goto_1

    .end local v16    # "currEvent":Lcn/nubia/calendar/model/Event;
    .end local v18    # "endMinute":I
    .end local v22    # "lastSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .end local v27    # "startMinute":I
    :cond_17
    move-object v8, v2

    move/from16 v9, p0

    move-object v10, v4

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    .line 1368
    invoke-static/range {v8 .. v14}, Lcn/nubia/calendar/util/Utils;->weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[ILjava/util/HashMap;)V

    goto/16 :goto_0

    .restart local v16    # "currEvent":Lcn/nubia/calendar/model/Event;
    .restart local v17    # "currSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .restart local v18    # "endMinute":I
    .restart local v20    # "i":I
    .restart local v22    # "lastSegment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .restart local v27    # "startMinute":I
    :cond_18
    move/from16 v19, v20

    .end local v20    # "i":I
    .restart local v19    # "i":I
    goto/16 :goto_5
.end method

.method public static createEmailAttendeesIntent(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "eventTitle"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p5, "ownerAccount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 2389
    .local p3, "toEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "ccEmails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v7, p3

    .line 2390
    .local v7, "toList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p4

    .line 2391
    .local v2, "ccList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 2392
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_0

    .line 2396
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Both toEmails and ccEmails are empty."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2403
    :cond_0
    move-object/from16 v7, p4

    .line 2404
    const/4 v2, 0x0

    .line 2408
    :cond_1
    const/4 v6, 0x0

    .line 2409
    .local v6, "subject":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 2410
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0c0259

    invoke-virtual {p0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2423
    :cond_2
    new-instance v9, Landroid/net/Uri$Builder;

    invoke-direct {v9}, Landroid/net/Uri$Builder;-><init>()V

    .line 2424
    .local v9, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v10, "mailto"

    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2431
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 2432
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    .line 2435
    const-string v11, "to"

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v11, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2432
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2440
    .end local v5    # "i":I
    :cond_3
    if-eqz v6, :cond_4

    .line 2441
    const-string v10, "subject"

    invoke-virtual {v9, v10, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2445
    :cond_4
    if-eqz p2, :cond_5

    .line 2446
    const-string v10, "body"

    invoke-virtual {v9, v10, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2450
    :cond_5
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 2451
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2452
    .local v3, "email":Ljava/lang/String;
    const-string v11, "cc"

    invoke-virtual {v9, v11, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 2459
    .end local v3    # "email":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2460
    .local v8, "uri":Ljava/lang/String;
    const-string v10, "mailto:"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2462
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v11, 0x7

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v11, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2469
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    .line 2470
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2472
    .local v4, "emailIntent":Landroid/content/Intent;
    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {v4, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2474
    const-string v10, "fromAccountString"

    move-object/from16 v0, p5

    invoke-virtual {v4, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2475
    const v10, 0x7f0c0039

    .line 2476
    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2475
    invoke-static {v4, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    return-object v10
.end method

.method public static equalLeapEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 3160
    sget-object v0, Lcn/nubia/calendar/util/Utils;->nongliFlag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3161
    const/4 v0, 0x1

    .line 3163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 779
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .prologue
    .line 351
    sget-object v0, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 556
    const/16 v6, 0x34

    .line 558
    .local v6, "flags":I
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .local v2, "millis":J
    move-object v1, p0

    move-wide v4, v2

    .line 559
    invoke-static/range {v1 .. v6}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllowWeekForDetailView()Z
    .locals 1

    .prologue
    .line 787
    sget-boolean v0, Lcn/nubia/calendar/util/Utils;->mAllowWeekForDetailView:Z

    return v0
.end method

.method public static getAmPmStr(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I

    .prologue
    .line 2280
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    const-string v0, ""

    sput-object v0, Lcn/nubia/calendar/util/Utils;->m_AMPM:Ljava/lang/String;

    .line 2290
    :goto_0
    return p1

    .line 2283
    :cond_0
    const/16 v0, 0xc

    if-le p1, v0, :cond_1

    .line 2284
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->pm:Ljava/lang/String;

    sput-object v0, Lcn/nubia/calendar/util/Utils;->m_AMPM:Ljava/lang/String;

    .line 2285
    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    .line 2287
    :cond_1
    sget-object v0, Lcn/nubia/commonui/widget/LunarUtil;->am:Ljava/lang/String;

    sput-object v0, Lcn/nubia/calendar/util/Utils;->m_AMPM:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCalendarIdByEventId(Landroid/content/ContentResolver;J)J
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    .line 2831
    const/4 v6, 0x0

    .line 2833
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "calendar_id"

    aput-object v3, v2, v0

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2838
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 2833
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2840
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2841
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2846
    if-eqz v6, :cond_0

    .line 2847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2848
    const/4 v6, 0x0

    .line 2851
    :cond_0
    :goto_0
    return-wide v0

    .line 2846
    :cond_1
    if-eqz v6, :cond_2

    .line 2847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2848
    const/4 v6, 0x0

    .line 2851
    :cond_2
    :goto_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2843
    :catch_0
    move-exception v7

    .line 2844
    .local v7, "exception":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2846
    if-eqz v6, :cond_2

    .line 2847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2848
    const/4 v6, 0x0

    goto :goto_1

    .line 2846
    .end local v7    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2847
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2848
    const/4 v6, 0x0

    .line 2850
    :cond_3
    throw v0
.end method

.method public static getColorChip(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "color"    # I

    .prologue
    .line 2591
    const v5, 0xffffff

    and-int/2addr p0, v5

    .line 2592
    const/high16 v5, -0x1000000

    or-int v4, p0, v5

    .line 2593
    .local v4, "startColor":I
    const/high16 v5, -0x4c000000

    or-int v3, p0, v5

    .line 2594
    .local v3, "middleColor":I
    const/high16 v5, -0x6a000000

    or-int v2, p0, v5

    .line 2595
    .local v2, "endColor":I
    const/4 v5, 0x3

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v5, 0x1

    aput v3, v0, v5

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 2598
    .local v0, "colors":[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2600
    .local v1, "d":Landroid/graphics/drawable/GradientDrawable;
    sget-object v5, Lcn/nubia/calendar/util/Utils;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 2601
    return-object v1
.end method

.method public static getColorForSeason(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "month"    # I

    .prologue
    const v2, 0x7f0d00c4

    .line 3373
    const/4 v0, 0x0

    .line 3374
    .local v0, "color":I
    packed-switch p1, :pswitch_data_0

    .line 3396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3399
    :goto_0
    return v0

    .line 3378
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3379
    goto :goto_0

    .line 3383
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3384
    goto :goto_0

    .line 3388
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3389
    goto :goto_0

    .line 3393
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 3394
    goto :goto_0

    .line 3374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getConfigBool(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "key"    # I

    .prologue
    .line 791
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static getDateFormatTime(JJJLjava/lang/String;ZLandroid/content/Context;Z)Ljava/lang/String;
    .locals 28
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "currentMillis"    # J
    .param p6, "localTimezone"    # Ljava/lang/String;
    .param p7, "allDay"    # Z
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "Lunarflag"    # Z

    .prologue
    .line 1801
    const/16 v21, 0x12

    .line 1803
    .local v21, "flagsDate":I
    const/16 v22, 0x1

    .line 1804
    .local v22, "flagsTime":I
    invoke-static/range {p8 .. p8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1805
    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    .line 1807
    :cond_0
    const/4 v4, 0x0

    .line 1808
    .local v4, "Is_CN":Z
    new-instance v17, Landroid/text/format/Time;

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1809
    .local v17, "currentTime":Landroid/text/format/Time;
    move-object/from16 v0, v17

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1810
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 1811
    .local v23, "resources":Landroid/content/res/Resources;
    const/16 v18, 0x0

    .line 1812
    .local v18, "datetimeString":Ljava/lang/String;
    const/16 v26, 0x0

    .line 1813
    .local v26, "startDatetime":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1814
    .local v19, "endDatetime":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1815
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    .line 1816
    .local v16, "currentLanguage":Ljava/lang/String;
    const-string v5, "zh"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1817
    const/4 v4, 0x1

    .line 1821
    :goto_0
    if-eqz p7, :cond_6

    .line 1822
    const/4 v5, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v5, v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 1824
    .local v6, "localStartMillis":J
    const/4 v5, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v5, v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v24

    .line 1826
    .local v24, "localEndMillis":J
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v8, p4

    invoke-static/range {v5 .. v11}, Lcn/nubia/calendar/util/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v27

    .line 1828
    .local v27, "todayOrTomorrow":I
    move-object/from16 v0, v17

    iget-wide v10, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v8, v24

    invoke-static/range {v6 .. v11}, Lcn/nubia/calendar/util/Utils;->singleDayEvent(JJJ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1830
    const/4 v5, 0x2

    move/from16 v0, v27

    if-ne v5, v0, :cond_1

    .line 1831
    const v5, 0x7f0c0096

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1929
    .end local v6    # "localStartMillis":J
    .end local v24    # "localEndMillis":J
    :cond_1
    :goto_1
    return-object v18

    .line 1819
    .end local v27    # "todayOrTomorrow":I
    :cond_2
    const/16 p9, 0x0

    goto :goto_0

    .line 1834
    .restart local v6    # "localStartMillis":J
    .restart local v24    # "localEndMillis":J
    .restart local v27    # "todayOrTomorrow":I
    :cond_3
    const/4 v5, 0x2

    move/from16 v0, v27

    if-ne v5, v0, :cond_4

    .line 1835
    const v5, 0x7f0c0096

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1837
    :cond_4
    sget-wide v8, Lcn/nubia/calendar/util/Utils;->mEndTimeUpdate:J

    sub-long p2, p2, v8

    .line 1838
    if-eqz p9, :cond_5

    .line 1839
    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->NongliSetText(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 1845
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_1

    .line 1841
    :cond_5
    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getYearAndMonthDayTimeAndAllday(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v19

    goto :goto_2

    .line 1849
    .end local v6    # "localStartMillis":J
    .end local v24    # "localEndMillis":J
    .end local v27    # "todayOrTomorrow":I
    :cond_6
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, v17

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v10, p0

    move-wide/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcn/nubia/calendar/util/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v27

    .line 1851
    .restart local v27    # "todayOrTomorrow":I
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, v17

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcn/nubia/calendar/util/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v20

    .line 1853
    .local v20, "endtodayOrTomorrow":I
    move-object/from16 v0, v17

    iget-wide v12, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-static/range {v8 .. v13}, Lcn/nubia/calendar/util/Utils;->singleDayEvent(JJJ)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1854
    move-wide/from16 v0, p0

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v26

    .line 1855
    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v5, v0, :cond_8

    .line 1856
    invoke-static/range {p0 .. p3}, Lcn/nubia/calendar/util/Utils;->isHourAndMinute(JJ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0094

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1861
    :cond_7
    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v19

    .line 1863
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0094

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " -"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1868
    :cond_8
    const/4 v5, 0x2

    move/from16 v0, v27

    if-ne v5, v0, :cond_a

    .line 1869
    invoke-static/range {p0 .. p3}, Lcn/nubia/calendar/util/Utils;->isHourAndMinute(JJ)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1874
    :cond_9
    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v19

    .line 1876
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " -"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1881
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " -"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1884
    :cond_b
    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v5, v0, :cond_e

    .line 1885
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0094

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1888
    move-wide/from16 v0, p0

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1889
    const/4 v5, 0x2

    move/from16 v0, v20

    if-ne v0, v5, :cond_c

    .line 1890
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1893
    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1908
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " -"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1895
    :cond_c
    if-eqz p9, :cond_d

    .line 1896
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->NongliSetText(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1898
    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 1901
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getYearAndMonthDayTimeAndAllday(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1904
    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    .line 1910
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1913
    move-wide/from16 v0, p0

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1914
    if-eqz p9, :cond_f

    .line 1915
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->NongliSetText(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1916
    move-wide/from16 v0, p0

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1924
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " -"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 1918
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getYearAndMonthDayTimeAndAllday(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1921
    move-wide/from16 v0, p0

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2, v4}, Lcn/nubia/calendar/util/Utils;->getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_4
.end method

.method public static getDayOfWeekString(IIJLandroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "julianDay"    # I
    .param p1, "todayJulianDay"    # I
    .param p2, "millis"    # J
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 1621
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    .line 1622
    const/4 v8, 0x2

    .line 1624
    .local v8, "flags":I
    if-ne p0, p1, :cond_0

    .line 1625
    const v10, 0x7f0c0016

    new-array v11, v3, [Ljava/lang/Object;

    sget-object v2, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    .line 1628
    invoke-virtual/range {v2 .. v8}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 1629
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    .line 1626
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1644
    .local v9, "dayViewText":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 1645
    return-object v9

    .line 1630
    .end local v9    # "dayViewText":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, p1, -0x1

    if-ne p0, v2, :cond_1

    .line 1631
    const v10, 0x7f0c0019

    new-array v11, v3, [Ljava/lang/Object;

    sget-object v2, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    .line 1633
    invoke-virtual/range {v2 .. v8}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 1634
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    .line 1632
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "dayViewText":Ljava/lang/String;
    goto :goto_0

    .line 1635
    .end local v9    # "dayViewText":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, p1, 0x1

    if-ne p0, v2, :cond_2

    .line 1636
    const v10, 0x7f0c0017

    new-array v11, v3, [Ljava/lang/Object;

    sget-object v2, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    .line 1638
    invoke-virtual/range {v2 .. v8}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 1639
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v12

    .line 1637
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "dayViewText":Ljava/lang/String;
    goto :goto_0

    .line 1641
    .end local v9    # "dayViewText":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    move-wide/from16 v6, p2

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 1642
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "dayViewText":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getDayTime(J)I
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 1684
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1685
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1686
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static getDaysOfCurrentMonth(Landroid/text/format/Time;)I
    .locals 2
    .param p0, "argTime"    # Landroid/text/format/Time;

    .prologue
    .line 3124
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3125
    .local v0, "time":Landroid/text/format/Time;
    iget v1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 3126
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 3127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 3129
    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    return v1
.end method

.method public static getDaysPerWeek(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 667
    .line 668
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 669
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_days_per_week"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getDeclinedColorFromColor(I)I
    .locals 10
    .param p0, "color"    # I

    .prologue
    const/high16 v9, 0xff0000

    const v8, 0xff00

    const/high16 v7, -0x1000000

    .line 807
    const/4 v2, -0x1

    .line 808
    .local v2, "bg":I
    const/16 v0, 0x66

    .line 809
    .local v0, "a":I
    and-int v5, p0, v9

    mul-int/2addr v5, v0

    const/high16 v6, -0x67990000

    add-int/2addr v5, v6

    and-int v4, v5, v7

    .line 810
    .local v4, "r":I
    and-int v5, p0, v8

    mul-int/2addr v5, v0

    const v6, 0x986700

    add-int/2addr v5, v6

    and-int v3, v5, v9

    .line 811
    .local v3, "g":I
    and-int/lit16 v5, p0, 0xff

    mul-int/2addr v5, v0

    const v6, 0x9867

    add-int/2addr v5, v6

    and-int v1, v5, v8

    .line 812
    .local v1, "b":I
    or-int v5, v4, v3

    or-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v7

    return v5
.end method

.method public static getDisplayColorFromColor(I)I
    .locals 5
    .param p0, "color"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 797
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 798
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 799
    aget v1, v0, v3

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, v0, v3

    .line 800
    aget v1, v0, v4

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    aput v1, v0, v4

    .line 801
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 32
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "currentMillis"    # J
    .param p6, "localTimezone"    # Ljava/lang/String;
    .param p7, "allDay"    # Z
    .param p8, "context"    # Landroid/content/Context;

    .prologue
    .line 1939
    const/16 v27, 0x12

    .line 1941
    .local v27, "flagsDate":I
    const/16 v16, 0x1

    .line 1942
    .local v16, "flagsTime":I
    invoke-static/range {p8 .. p8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1943
    move/from16 v0, v16

    or-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    .line 1945
    :cond_0
    new-instance v24, Landroid/text/format/Time;

    move-object/from16 v0, v24

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1946
    .local v24, "currentTime":Landroid/text/format/Time;
    move-object/from16 v0, v24

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1947
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 1948
    .local v28, "resources":Landroid/content/res/Resources;
    const/16 v26, 0x0

    .line 1949
    .local v26, "datetimeString":Ljava/lang/String;
    if-eqz p7, :cond_4

    .line 1951
    const/4 v8, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v8, v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v4

    .line 1953
    .local v4, "localStartMillis":J
    const/4 v8, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v8, v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 1955
    .local v6, "localEndMillis":J
    move-object/from16 v0, v24

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static/range {v4 .. v9}, Lcn/nubia/calendar/util/Utils;->singleDayEvent(JJJ)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1959
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, v24

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v10, v4

    move-wide/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcn/nubia/calendar/util/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v30

    .line 1961
    .local v30, "todayOrTomorrow":I
    const/4 v8, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_3

    .line 1962
    const v8, 0x7f0c0094

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 1967
    .end local v30    # "todayOrTomorrow":I
    :cond_1
    :goto_0
    if-nez v26, :cond_2

    .line 1971
    new-instance v9, Ljava/util/Formatter;

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v10, 0x32

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1972
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1973
    .local v9, "f":Ljava/util/Formatter;
    const-string v15, "UTC"

    move-object/from16 v8, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    move/from16 v14, v27

    invoke-static/range {v8 .. v15}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v8

    .line 1975
    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v26

    .line 2012
    .end local v4    # "localStartMillis":J
    .end local v6    # "localEndMillis":J
    .end local v9    # "f":Ljava/util/Formatter;
    :cond_2
    :goto_1
    return-object v26

    .line 1963
    .restart local v4    # "localStartMillis":J
    .restart local v6    # "localEndMillis":J
    .restart local v30    # "todayOrTomorrow":I
    :cond_3
    const/4 v8, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_1

    .line 1964
    const v8, 0x7f0c0096

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_0

    .line 1979
    .end local v4    # "localStartMillis":J
    .end local v6    # "localEndMillis":J
    .end local v30    # "todayOrTomorrow":I
    :cond_4
    move-object/from16 v0, v24

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcn/nubia/calendar/util/Utils;->singleDayEvent(JJJ)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v11, p8

    move-wide/from16 v12, p0

    move-wide/from16 v14, p2

    .line 1981
    invoke-static/range {v11 .. v16}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v29

    .line 1985
    .local v29, "timeString":Ljava/lang/String;
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v24

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v22, v0

    move-wide/from16 v18, p0

    move-wide/from16 v20, p4

    invoke-static/range {v17 .. v23}, Lcn/nubia/calendar/util/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v30

    .line 1987
    .restart local v30    # "todayOrTomorrow":I
    const/4 v8, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_5

    .line 1988
    const v8, 0x7f0c0095

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v29, v10, v11

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto :goto_1

    .line 1990
    :cond_5
    const/4 v8, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_6

    .line 1992
    const v8, 0x7f0c0097

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v29, v10, v11

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto :goto_1

    :cond_6
    move-object/from16 v17, p8

    move-wide/from16 v18, p0

    move-wide/from16 v20, p2

    move/from16 v22, v27

    .line 1997
    invoke-static/range {v17 .. v22}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v25

    .line 1999
    .local v25, "dateString":Ljava/lang/String;
    const v8, 0x7f0c0025

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v25, v10, v11

    const/4 v11, 0x1

    aput-object v29, v10, v11

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1

    .line 2005
    .end local v25    # "dateString":Ljava/lang/String;
    .end local v29    # "timeString":Ljava/lang/String;
    .end local v30    # "todayOrTomorrow":I
    :cond_7
    or-int v8, v27, v16

    const/high16 v10, 0x10000

    or-int/2addr v8, v10

    const v10, 0x8000

    or-int v22, v8, v10

    .local v22, "flagsDatetime":I
    move-object/from16 v17, p8

    move-wide/from16 v18, p0

    move-wide/from16 v20, p2

    .line 2008
    invoke-static/range {v17 .. v22}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_1
.end method

.method public static getDisplayedLunorDatetime(JJJLjava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 32
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "currentMillis"    # J
    .param p6, "localTimezone"    # Ljava/lang/String;
    .param p7, "allDay"    # Z
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "yearStr"    # Ljava/lang/String;
    .param p10, "monthStr"    # Ljava/lang/String;
    .param p11, "WeekStr"    # Ljava/lang/String;

    .prologue
    .line 2182
    const/16 v23, 0x0

    .line 2183
    .local v23, "IsCruYear":Z
    invoke-static/range {p0 .. p3}, Lcn/nubia/calendar/util/Utils;->getQurTime(JJ)V

    .line 2185
    const/4 v14, 0x1

    .line 2187
    .local v14, "flagsTime":I
    invoke-static/range {p8 .. p8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2188
    const/16 v14, 0x81

    .line 2192
    :cond_0
    new-instance v25, Landroid/text/format/Time;

    move-object/from16 v0, v25

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2193
    .local v25, "currentTime":Landroid/text/format/Time;
    move-object/from16 v0, v25

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2194
    move-object/from16 v0, v25

    iget v8, v0, Landroid/text/format/Time;->year:I

    sget v9, Lcn/nubia/calendar/util/Utils;->mStartYear:I

    if-ne v8, v9, :cond_1

    move-object/from16 v0, v25

    iget v8, v0, Landroid/text/format/Time;->year:I

    sget v9, Lcn/nubia/calendar/util/Utils;->mEndYear:I

    if-ne v8, v9, :cond_1

    .line 2195
    const/16 v23, 0x1

    .line 2197
    :cond_1
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 2198
    .local v28, "resources":Landroid/content/res/Resources;
    const/16 v27, 0x0

    .line 2199
    .local v27, "datetimeString":Ljava/lang/String;
    if-eqz p7, :cond_5

    .line 2201
    const/4 v8, 0x0

    move-wide/from16 v0, p0

    move-object/from16 v2, p6

    invoke-static {v8, v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v4

    .line 2203
    .local v4, "localStartMillis":J
    const/4 v8, 0x0

    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-static {v8, v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 2205
    .local v6, "localEndMillis":J
    move-object/from16 v0, v25

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static/range {v4 .. v9}, Lcn/nubia/calendar/util/Utils;->singleDayEvent(JJJ)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2209
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object/from16 v0, v25

    iget-wide v14, v0, Landroid/text/format/Time;->gmtoff:J

    .end local v14    # "flagsTime":I
    move-wide v10, v4

    move-wide/from16 v12, p4

    invoke-static/range {v9 .. v15}, Lcn/nubia/calendar/util/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v30

    .line 2211
    .local v30, "todayOrTomorrow":I
    const/4 v8, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_4

    .line 2212
    const v8, 0x7f0c0094

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 2217
    .end local v30    # "todayOrTomorrow":I
    :cond_2
    :goto_0
    if-nez v27, :cond_3

    .line 2218
    sget v8, Lcn/nubia/calendar/util/Utils;->mStartYear:I

    sget v9, Lcn/nubia/calendar/util/Utils;->mStartMonthOfYear:I

    sget v10, Lcn/nubia/calendar/util/Utils;->mStartDayOfMonth:I

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, v23

    invoke-static/range {v8 .. v14}, Lcn/nubia/calendar/util/Utils;->setLunarTitleByLunarMonth(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v27

    .line 2276
    .end local v4    # "localStartMillis":J
    .end local v6    # "localEndMillis":J
    :cond_3
    :goto_1
    return-object v27

    .line 2213
    .restart local v4    # "localStartMillis":J
    .restart local v6    # "localEndMillis":J
    .restart local v30    # "todayOrTomorrow":I
    :cond_4
    const/4 v8, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_2

    .line 2214
    const v8, 0x7f0c0096

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto :goto_0

    .end local v4    # "localStartMillis":J
    .end local v6    # "localEndMillis":J
    .end local v30    # "todayOrTomorrow":I
    .restart local v14    # "flagsTime":I
    :cond_5
    move-object/from16 v9, p8

    move-wide/from16 v10, p0

    move-wide/from16 v12, p2

    .line 2223
    invoke-static/range {v9 .. v14}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v29

    .line 2225
    .local v29, "timeString":Ljava/lang/String;
    move-object/from16 v0, v25

    iget-wide v12, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    invoke-static/range {v8 .. v13}, Lcn/nubia/calendar/util/Utils;->singleDayEvent(JJJ)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2229
    invoke-virtual/range {p8 .. p8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v20, v0

    move-wide/from16 v16, p0

    move-wide/from16 v18, p4

    invoke-static/range {v15 .. v21}, Lcn/nubia/calendar/util/Utils;->isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I

    move-result v30

    .line 2231
    .restart local v30    # "todayOrTomorrow":I
    const/4 v8, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_6

    .line 2233
    const v8, 0x7f0c0095

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v29, v9, v10

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_1

    .line 2235
    :cond_6
    const/4 v8, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_7

    .line 2237
    const v8, 0x7f0c0097

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v29, v9, v10

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_1

    .line 2242
    :cond_7
    sget v15, Lcn/nubia/calendar/util/Utils;->mStartYear:I

    sget v16, Lcn/nubia/calendar/util/Utils;->mStartMonthOfYear:I

    sget v17, Lcn/nubia/calendar/util/Utils;->mStartDayOfMonth:I

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move/from16 v21, v23

    invoke-static/range {v15 .. v21}, Lcn/nubia/calendar/util/Utils;->setLunarTitleByLunarMonth(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v26

    .line 2245
    .local v26, "dateString":Ljava/lang/String;
    const v8, 0x7f0c0025

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v26, v9, v10

    const/4 v10, 0x1

    aput-object v29, v9, v10

    move-object/from16 v0, v28

    invoke-virtual {v0, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_1

    .line 2249
    .end local v26    # "dateString":Ljava/lang/String;
    .end local v30    # "todayOrTomorrow":I
    :cond_8
    sget v8, Lcn/nubia/calendar/util/Utils;->mStartHour:I

    move-object/from16 v0, p8

    invoke-static {v0, v8}, Lcn/nubia/calendar/util/Utils;->getAmPmStr(Landroid/content/Context;I)I

    move-result v8

    sput v8, Lcn/nubia/calendar/util/Utils;->mStartHour:I

    .line 2250
    sget v8, Lcn/nubia/calendar/util/Utils;->mEndHour:I

    move-object/from16 v0, p8

    invoke-static {v0, v8}, Lcn/nubia/calendar/util/Utils;->getAmPmStr(Landroid/content/Context;I)I

    move-result v8

    sput v8, Lcn/nubia/calendar/util/Utils;->mEndHour:I

    .line 2253
    sget v15, Lcn/nubia/calendar/util/Utils;->mStartYear:I

    sget v16, Lcn/nubia/calendar/util/Utils;->mStartMonthOfYear:I

    sget v17, Lcn/nubia/calendar/util/Utils;->mStartDayOfMonth:I

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move/from16 v21, v23

    invoke-static/range {v15 .. v21}, Lcn/nubia/calendar/util/Utils;->setLunarTitleByLunarMonth(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    .line 2256
    .local v24, "StartdateString":Ljava/lang/String;
    sget v15, Lcn/nubia/calendar/util/Utils;->mEndYear:I

    sget v16, Lcn/nubia/calendar/util/Utils;->mEndMonthOfYear:I

    sget v17, Lcn/nubia/calendar/util/Utils;->mEndDayOfMonth:I

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p11

    move/from16 v21, v23

    invoke-static/range {v15 .. v21}, Lcn/nubia/calendar/util/Utils;->setLunarTitleByLunarMonth(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v22

    .line 2260
    .local v22, "EnddateString":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/nubia/calendar/util/Utils;->m_AMPM:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcn/nubia/calendar/util/Utils;->mStartHour:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v8, Lcn/nubia/calendar/util/Utils;->mStartMinute:I

    const/16 v10, 0xa

    if-ge v8, v10, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v10, Lcn/nubia/calendar/util/Utils;->mStartMinute:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcn/nubia/calendar/util/Utils;->m_AMPM:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcn/nubia/calendar/util/Utils;->mEndHour:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v8, Lcn/nubia/calendar/util/Utils;->mEndMinute:I

    const/16 v10, 0xa

    if-ge v8, v10, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v10, Lcn/nubia/calendar/util/Utils;->mEndMinute:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_1

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v10, Lcn/nubia/calendar/util/Utils;->mStartMinute:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v10, Lcn/nubia/calendar/util/Utils;->mEndMinute:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3
.end method

.method public static getDisplayedTimezone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "startMillis"    # J
    .param p2, "localTimezone"    # Ljava/lang/String;
    .param p3, "eventTimezone"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2295
    const/4 v2, 0x0

    .line 2296
    .local v2, "tzDisplay":Ljava/lang/String;
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2298
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 2299
    .local v1, "tz":Ljava/util/TimeZone;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GMT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2300
    :cond_0
    move-object v2, p2

    .line 2308
    .end local v1    # "tz":Ljava/util/TimeZone;
    :cond_1
    :goto_0
    return-object v2

    .line 2302
    .restart local v1    # "tz":Ljava/util/TimeZone;
    :cond_2
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2303
    .local v0, "startTime":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 2304
    iget v3, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public static getFirstDayOfWeek(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    .line 624
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 625
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "preferences_week_start_day"

    const-string v4, "-1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "pref":Ljava/lang/String;
    const-string v3, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 629
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    .line 630
    .local v2, "startDay":I
    const-string v3, "en"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 631
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 630
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    const/4 v2, 0x0

    .line 637
    :cond_0
    :goto_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 638
    const/4 v3, 0x6

    .line 642
    :goto_1
    return v3

    .line 635
    .end local v2    # "startDay":I
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "startDay":I
    goto :goto_0

    .line 639
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 640
    const/4 v3, 0x1

    goto :goto_1

    .line 642
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getHideDeclinedEvents(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 661
    .line 662
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 663
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static getHourAndMinute(JLandroid/content/Context;Z)Ljava/lang/String;
    .locals 8
    .param p0, "millis"    # J
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "IsCnflag"    # Z

    .prologue
    const/16 v7, 0xa

    .line 1750
    const/4 v3, 0x0

    .line 1751
    .local v3, "is24HourFlag":Z
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getHourTime(J)I

    move-result v2

    .line 1752
    .local v2, "hourtime":I
    const/4 v1, 0x0

    .line 1753
    .local v1, "hourAndMinuteStr":Ljava/lang/String;
    const-string v0, " "

    .line 1754
    .local v0, "SignStr":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1755
    const/4 v3, 0x1

    .line 1757
    :cond_0
    if-eqz v3, :cond_3

    .line 1758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v2, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1759
    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1761
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v4

    if-ge v4, v7, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1762
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1786
    :goto_2
    return-object v1

    .line 1759
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 1762
    :cond_2
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    .line 1764
    :cond_3
    const/16 v4, 0xc

    if-gt v2, v4, :cond_6

    .line 1765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1766
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0110

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ge v2, v7, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1769
    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1771
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v4

    if-ge v4, v7, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1772
    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1769
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    .line 1772
    :cond_5
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_4

    .line 1774
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1775
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0111

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v4, v2, -0xc

    if-ge v4, v7, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v2, -0xc

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1779
    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1781
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v4

    if-ge v4, v7, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1782
    :goto_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 1775
    :cond_7
    add-int/lit8 v4, v2, -0xc

    .line 1779
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_5

    .line 1782
    :cond_8
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_6
.end method

.method private static getHourTime(J)I
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 1690
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1691
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1692
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .param p0, "week"    # I

    .prologue
    .line 614
    const v0, 0x253d89

    mul-int/lit8 v1, p0, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method private static getMinuteTime(J)I
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 1696
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1697
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1698
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getMonthDayFromJulianDay(I)I
    .locals 1
    .param p0, "julianDay"    # I

    .prologue
    .line 3068
    sget-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    invoke-virtual {v0, p0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3069
    sget-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    return v0
.end method

.method public static getMonthFromJulianDay(I)I
    .locals 1
    .param p0, "julianDay"    # I

    .prologue
    .line 3055
    sget-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    invoke-virtual {v0, p0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3056
    sget-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->month:I

    return v0
.end method

.method private static getMonthTime(J)I
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 1678
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1679
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1680
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getNextMidnight(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 3
    .param p0, "recycle"    # Landroid/text/format/Time;
    .param p1, "theTime"    # J
    .param p3, "tz"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 736
    if-nez p0, :cond_0

    .line 737
    new-instance p0, Landroid/text/format/Time;

    .end local p0    # "recycle":Landroid/text/format/Time;
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 739
    .restart local p0    # "recycle":Landroid/text/format/Time;
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 740
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 741
    iget v0, p0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 742
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 743
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 744
    iput v1, p0, Landroid/text/format/Time;->second:I

    .line 745
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getOrCreateStrand(Ljava/util/HashMap;I)Lcn/nubia/calendar/util/Utils$DNAStrand;
    .locals 2
    .param p1, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$DNAStrand;",
            ">;I)",
            "Lcn/nubia/calendar/util/Utils$DNAStrand;"
        }
    .end annotation

    .prologue
    .line 1545
    .local p0, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/util/Utils$DNAStrand;

    .line 1546
    .local v0, "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    if-nez v0, :cond_0

    .line 1547
    new-instance v0, Lcn/nubia/calendar/util/Utils$DNAStrand;

    .end local v0    # "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    invoke-direct {v0}, Lcn/nubia/calendar/util/Utils$DNAStrand;-><init>()V

    .line 1548
    .restart local v0    # "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    iput p1, v0, Lcn/nubia/calendar/util/Utils$DNAStrand;->color:I

    .line 1549
    const/4 v1, 0x0

    iput v1, v0, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    .line 1550
    iget v1, v0, Lcn/nubia/calendar/util/Utils$DNAStrand;->color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    :cond_0
    return-object v0
.end method

.method public static getPermissonSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3278
    const-string v0, "AndromMPermisson"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getPixelOffsetFromMinutes(III)I
    .locals 4
    .param p0, "minute"    # I
    .param p1, "workDayHeight"    # I
    .param p2, "remainderHeight"    # I

    .prologue
    .line 1470
    sget v1, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    if-ge p0, v1, :cond_0

    .line 1471
    mul-int v1, p0, p2

    sget v2, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    div-int v0, v1, v2

    .line 1480
    .local v0, "y":I
    :goto_0
    return v0

    .line 1472
    .end local v0    # "y":I
    :cond_0
    sget v1, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    if-ge p0, v1, :cond_1

    .line 1473
    sget v1, Lcn/nubia/calendar/util/Utils;->WORK_DAY_START_MINUTES:I

    sub-int v1, p0, v1

    mul-int/2addr v1, p1

    sget v2, Lcn/nubia/calendar/util/Utils;->WORK_DAY_MINUTES:I

    div-int/2addr v1, v2

    add-int v0, p2, v1

    .restart local v0    # "y":I
    goto :goto_0

    .line 1476
    .end local v0    # "y":I
    :cond_1
    add-int v1, p2, p1

    sget v2, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_MINUTES:I

    sub-int v2, p0, v2

    mul-int/2addr v2, p2

    sget v3, Lcn/nubia/calendar/util/Utils;->WORK_DAY_END_LENGTH:I

    div-int/2addr v2, v3

    add-int v0, v1, v2

    .restart local v0    # "y":I
    goto :goto_0
.end method

.method public static getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 3168
    .line 3169
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3170
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static getQuickResponses(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2571
    const-string v2, "preferences_quick_responses"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcn/nubia/calendar/util/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2574
    .local v0, "s":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2575
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2579
    :cond_0
    return-object v0
.end method

.method public static getQurTime(JJ)V
    .locals 8
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2163
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2165
    .local v1, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2166
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/util/Utils;->mStartYear:I

    .line 2167
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcn/nubia/calendar/util/Utils;->mStartMonthOfYear:I

    .line 2168
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/util/Utils;->mStartDayOfMonth:I

    .line 2169
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/util/Utils;->mEndYear:I

    .line 2170
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcn/nubia/calendar/util/Utils;->mEndMonthOfYear:I

    .line 2171
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/util/Utils;->mEndDayOfMonth:I

    .line 2172
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/util/Utils;->mStartHour:I

    .line 2173
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/util/Utils;->mEndHour:I

    .line 2174
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/util/Utils;->mStartMinute:I

    .line 2175
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sput v2, Lcn/nubia/calendar/util/Utils;->mEndMinute:I

    .line 2176
    return-void
.end method

.method public static getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-string v0, "cn.nubia.calendar.CalendarRecentSuggestionsProvider"

    return-object v0
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 375
    .line 376
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 377
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 368
    .line 369
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 370
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 382
    .line 383
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 384
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 356
    .line 357
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 358
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 359
    .local v1, "ss":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 360
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 361
    .local v2, "strings":[Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 363
    .end local v2    # "strings":[Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, p2

    goto :goto_0
.end method

.method public static getShowWeekNumber(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 650
    .line 651
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 654
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    return v1
.end method

.method public static getSyncDeleteSP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3153
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs4:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 3154
    sget-object v0, Lcn/nubia/calendar/util/Utils;->prefs4:Landroid/content/SharedPreferences;

    .line 3156
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SyncDelete"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method protected static getTardis()J
    .locals 2

    .prologue
    .line 417
    sget-wide v0, Lcn/nubia/calendar/util/Utils;->mTardis:J

    return-wide v0
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 335
    sget-object v0, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViewTypeFromIntentAndSharedPref(Landroid/app/Activity;)I
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x2

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 250
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 252
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 254
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    const/4 v3, 0x5

    .line 270
    :cond_0
    :goto_0
    return v3

    .line 257
    :cond_1
    if-eqz v0, :cond_3

    .line 258
    const-string v4, "DETAIL_VIEW"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 260
    const-string v4, "preferred_detailedView"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    .line 262
    :cond_2
    const-string v4, "DAY"

    const-string v5, "VIEW"

    .line 263
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    :cond_3
    const-string v3, "preferred_startView"

    const/4 v4, 0x4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0
.end method

.method public static getWeekNumberFromTime(JLandroid/content/Context;)I
    .locals 6
    .param p0, "millisSinceEpoch"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 1590
    new-instance v1, Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1591
    .local v1, "weekTime":Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1592
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1593
    invoke-static {p2}, Lcn/nubia/calendar/util/Utils;->getFirstDayOfWeek(Landroid/content/Context;)I

    move-result v0

    .line 1597
    .local v0, "firstDayOfWeek":I
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_2

    .line 1599
    :cond_0
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1600
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1606
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v2

    return v2

    .line 1601
    :cond_2
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v2, v4, :cond_1

    if-ne v0, v4, :cond_1

    .line 1603
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    .line 1604
    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method public static getWeekNumsOfMonth(Landroid/text/format/Time;I)I
    .locals 14
    .param p0, "time"    # Landroid/text/format/Time;
    .param p1, "firstDayOfWeek"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3099
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 3100
    .local v3, "tmpTime":Landroid/text/format/Time;
    iput v10, v3, Landroid/text/format/Time;->monthDay:I

    .line 3101
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 3102
    invoke-static {v3, p1}, Lcn/nubia/calendar/util/Utils;->adjustToBeginningOfWeek(Landroid/text/format/Time;I)V

    .line 3104
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 3105
    .local v1, "startDay":I
    const-string v5, "%d-%d-%d"

    new-array v6, v13, [Ljava/lang/Object;

    iget v7, v3, Landroid/text/format/Time;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    iget v7, v3, Landroid/text/format/Time;->month:I

    .line 3106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget v7, v3, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    .line 3105
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3108
    .local v2, "timeString":Ljava/lang/String;
    invoke-virtual {v3, p0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3109
    iget v5, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Landroid/text/format/Time;->month:I

    .line 3110
    iput v11, v3, Landroid/text/format/Time;->monthDay:I

    .line 3111
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    .line 3112
    invoke-static {v3, p1}, Lcn/nubia/calendar/util/Utils;->adjustToBeginningOfWeek(Landroid/text/format/Time;I)V

    .line 3113
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 3115
    .local v0, "endDay":I
    sub-int v5, v0, v1

    div-int/lit8 v5, v5, 0x7

    add-int/lit8 v4, v5, 0x1

    .line 3117
    .local v4, "weekNums":I
    const-string v5, "%d-%d-%d"

    new-array v6, v13, [Ljava/lang/Object;

    iget v7, v3, Landroid/text/format/Time;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    iget v7, v3, Landroid/text/format/Time;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget v7, v3, Landroid/text/format/Time;->monthDay:I

    .line 3118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    .line 3117
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3120
    return v4
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 596
    rsub-int/lit8 v0, p1, 0x4

    .line 597
    .local v0, "diff":I
    if-gez v0, :cond_0

    .line 598
    add-int/lit8 v0, v0, 0x7

    .line 600
    :cond_0
    const v2, 0x253d8c    # 3.419992E-39f

    sub-int v1, v2, v0

    .line 601
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method public static getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_SCHEDULED_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getYearAndMonthDayTimeAndAllday(JLandroid/content/Context;Z)Ljava/lang/String;
    .locals 10
    .param p0, "millis"    # J
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "IsCnFlag"    # Z

    .prologue
    .line 1716
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0013

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1718
    .local v4, "monthStr":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0184

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1720
    .local v6, "yearStr":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0183

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1722
    .local v5, "monthStrShow":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c01f3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1724
    .local v0, "DayStr":Ljava/lang/String;
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMonthTime(J)I

    move-result v3

    .line 1725
    .local v3, "month":I
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getDayTime(J)I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 1726
    .local v2, "dayAndMonth":I
    const-string v1, ""

    .line 1727
    .local v1, "allDayEventTime":Ljava/lang/String;
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->isCurrentYear(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1728
    if-eqz p3, :cond_0

    .line 1729
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1745
    :goto_0
    return-object v1

    .line 1732
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1735
    :cond_1
    if-eqz p3, :cond_2

    .line 1736
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getYearTime(J)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1739
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1740
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getYearTime(J)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getYearMonthFromJulianDay(I)I
    .locals 2
    .param p0, "julianDay"    # I

    .prologue
    .line 3060
    sget-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    invoke-virtual {v0, p0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3061
    sget-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    mul-int/lit8 v0, v0, 0xc

    sget-object v1, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    add-int/2addr v0, v1

    return v0
.end method

.method private static getYearTime(J)I
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 1672
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1673
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1674
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static hasDefaultHomeTimezone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2869
    sget-object v0, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->hasDefaultHomeTimezoneValue(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static initHolidayMap(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 2611
    invoke-static {p0, p1}, Lcn/nubia/calendar/model/HolidayDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/HolidayDate;

    move-result-object v1

    .line 2612
    .local v1, "holidayDate":Lcn/nubia/calendar/model/HolidayDate;
    if-eqz v1, :cond_0

    .line 2613
    invoke-virtual {v1}, Lcn/nubia/calendar/model/HolidayDate;->getHolidayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2614
    .local v2, "holidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2615
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2616
    .local v0, "date":Ljava/lang/String;
    sget-object v4, Lcn/nubia/calendar/util/Constants;->chineseHolidayMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ws"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0c0151

    .line 2617
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2616
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2621
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "holidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public static initWeekendWorkList(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 2631
    invoke-static {p0, p1}, Lcn/nubia/calendar/model/WeekendWorkDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/WeekendWorkDate;

    move-result-object v0

    .line 2633
    .local v0, "weekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    if-eqz v0, :cond_0

    .line 2634
    sget-object v1, Lcn/nubia/calendar/util/Constants;->WeekendOnWorkList:Ljava/util/ArrayList;

    .line 2635
    invoke-virtual {v0}, Lcn/nubia/calendar/model/WeekendWorkDate;->getWeekendWorkList()Ljava/util/ArrayList;

    move-result-object v2

    .line 2634
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2638
    :cond_0
    return-void
.end method

.method public static isChineseHolidayUnabled(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mCountry"    # Ljava/lang/String;

    .prologue
    .line 2911
    const-string v0, "CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HK"

    .line 2912
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2911
    :goto_0
    return v0

    .line 2912
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseHolidayVisible(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mCountry"    # Ljava/lang/String;

    .prologue
    .line 2906
    const-string v0, "CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HK"

    .line 2907
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2906
    :goto_0
    return v0

    .line 2907
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectingToInternet(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 2359
    const-string v4, "connectivity"

    .line 2360
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2361
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 2362
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2363
    .local v2, "infos":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 2364
    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 2365
    .local v1, "info":Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 2366
    const/4 v3, 0x1

    .line 2371
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "infos":[Landroid/net/NetworkInfo;
    :cond_0
    return v3

    .line 2364
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    .restart local v2    # "infos":[Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static isCruTimeDate(J)Z
    .locals 6
    .param p0, "startTime"    # J

    .prologue
    .line 3223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3224
    .local v2, "StartEventTime":J
    const-wide/32 v4, 0x5265c00

    add-long v0, v2, v4

    .line 3225
    .local v0, "EndEventTime":J
    cmp-long v4, p0, v0

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-nez v4, :cond_1

    .line 3226
    :cond_0
    const/4 v4, 0x1

    .line 3228
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isCurrentYear(J)Z
    .locals 8
    .param p0, "millis"    # J

    .prologue
    const/4 v4, 0x1

    .line 1702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1703
    .local v2, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1704
    .local v0, "calendar1":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1705
    .local v1, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1706
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1707
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1710
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isEmailableFrom(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "syncAccountName"    # Ljava/lang/String;

    .prologue
    .line 2493
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHolidayDateFileExists(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 2964
    const/4 v2, 0x0

    .line 2965
    .local v2, "flag":Z
    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 2966
    .local v1, "fileList":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 2967
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 2968
    .local v0, "file":Ljava/lang/String;
    const-string v5, "isHolidayDateFileExists"

    invoke-static {v5, v0}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2970
    const/4 v2, 0x1

    .line 2967
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2974
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private static isHourAndMinute(JJ)Z
    .locals 6
    .param p0, "starttime"    # J
    .param p2, "endtime"    # J

    .prologue
    .line 1790
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getHourTime(J)I

    move-result v2

    .line 1791
    .local v2, "startHour":I
    invoke-static {p0, p1}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v3

    .line 1792
    .local v3, "startminute":I
    invoke-static {p2, p3}, Lcn/nubia/calendar/util/Utils;->getHourTime(J)I

    move-result v0

    .line 1793
    .local v0, "endHour":I
    invoke-static {p2, p3}, Lcn/nubia/calendar/util/Utils;->getMinuteTime(J)I

    move-result v1

    .line 1794
    .local v1, "endminute":I
    if-ne v2, v0, :cond_0

    if-ne v3, v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isSaturday(II)Z
    .locals 3
    .param p0, "column"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 680
    if-nez p1, :cond_0

    if-eq p0, v2, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleReverseOpen(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 3354
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3355
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "single_reverse_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSunday(II)Z
    .locals 2
    .param p0, "column"    # I
    .param p1, "firstDayOfWeek"    # I

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 693
    if-nez p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v1, :cond_3

    if-ne p0, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTodayOrTomorrow(Landroid/content/res/Resources;JJJ)I
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "dayMillis"    # J
    .param p3, "currentMillis"    # J
    .param p5, "localGmtOffset"    # J

    .prologue
    const/4 v3, 0x1

    .line 2339
    invoke-static {p1, p2, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 2340
    .local v2, "startDay":I
    invoke-static {p3, p4, p5, p6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 2342
    .local v0, "currentDay":I
    sub-int v1, v2, v0

    .line 2343
    .local v1, "days":I
    if-ne v1, v3, :cond_1

    .line 2344
    const/4 v3, 0x2

    .line 2348
    :cond_0
    :goto_0
    return v3

    .line 2345
    :cond_1
    if-eqz v1, :cond_0

    .line 2348
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isValidEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 2484
    if-eqz p0, :cond_0

    const-string v0, "calendar.google.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewRtl(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isViewRtl(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWeekendWorkDateFileExists(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I

    .prologue
    .line 2981
    const/4 v2, 0x0

    .line 2982
    .local v2, "flag":Z
    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 2983
    .local v1, "fileList":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 2984
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 2985
    .local v0, "file":Ljava/lang/String;
    const-string v5, "isWeekendWorkDateFileExists"

    invoke-static {v5, v0}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "weekend"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2987
    const/4 v2, 0x1

    .line 2984
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2991
    .end local v0    # "file":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static isWorkDayORHoliday(Landroid/content/Context;Landroid/text/format/Time;Ljava/lang/String;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "mHomeTimeZone"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x9

    .line 3003
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3004
    .local v3, "mTime":Landroid/text/format/Time;
    invoke-virtual {v3, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3005
    iget v9, v3, Landroid/text/format/Time;->month:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Landroid/text/format/Time;->month:I

    .line 3006
    if-eqz v3, :cond_3

    .line 3007
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v3, Landroid/text/format/Time;->year:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3008
    .local v8, "year":Ljava/lang/String;
    const-string v6, ""

    .line 3009
    .local v6, "month":Ljava/lang/String;
    const-string v0, ""

    .line 3010
    .local v0, "day":Ljava/lang/String;
    iget v9, v3, Landroid/text/format/Time;->month:I

    if-gt v9, v11, :cond_0

    .line 3011
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3015
    :goto_0
    iget v9, v3, Landroid/text/format/Time;->monthDay:I

    if-gt v9, v11, :cond_1

    .line 3016
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3020
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    .line 3021
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3022
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    iget v9, v3, Landroid/text/format/Time;->year:I

    invoke-static {p0, v9}, Lcn/nubia/calendar/model/HolidayDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/HolidayDate;

    move-result-object v1

    .line 3023
    .local v1, "mHolidayDate":Lcn/nubia/calendar/model/HolidayDate;
    iget v9, v3, Landroid/text/format/Time;->year:I

    invoke-static {p0, v9}, Lcn/nubia/calendar/model/WeekendWorkDate;->read(Landroid/content/Context;I)Lcn/nubia/calendar/model/WeekendWorkDate;

    move-result-object v4

    .line 3024
    .local v4, "mWeekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    if-eqz v1, :cond_2

    .line 3025
    invoke-virtual {v1}, Lcn/nubia/calendar/model/HolidayDate;->getHolidayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3026
    .local v2, "mHolidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3027
    const/4 v9, 0x0

    .line 3037
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "mHolidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .end local v2    # "mHolidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "mWeekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    .end local v6    # "month":Ljava/lang/String;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "year":Ljava/lang/String;
    :goto_2
    return v9

    .line 3013
    .restart local v0    # "day":Ljava/lang/String;
    .restart local v6    # "month":Ljava/lang/String;
    .restart local v8    # "year":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/text/format/Time;->month:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3018
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 3030
    .restart local v1    # "mHolidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .restart local v4    # "mWeekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    if-eqz v4, :cond_3

    .line 3031
    invoke-virtual {v4}, Lcn/nubia/calendar/model/WeekendWorkDate;->getWeekendWorkList()Ljava/util/ArrayList;

    move-result-object v5

    .line 3032
    .local v5, "mWeekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3033
    const/4 v9, 0x1

    goto :goto_2

    .line 3037
    .end local v0    # "day":Ljava/lang/String;
    .end local v1    # "mHolidayDate":Lcn/nubia/calendar/model/HolidayDate;
    .end local v4    # "mWeekendWorkDate":Lcn/nubia/calendar/model/WeekendWorkDate;
    .end local v5    # "mWeekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "month":Ljava/lang/String;
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "year":Ljava/lang/String;
    :cond_3
    const/4 v9, -0x1

    goto :goto_2
.end method

.method private static islunaryear(I)Z
    .locals 12
    .param p0, "lunaryear"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2072
    const/4 v7, 0x0

    .line 2073
    .local v7, "solarToLunar":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2074
    .local v0, "FormatdateString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2075
    .local v4, "currentTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2076
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2077
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2078
    .local v8, "year":I
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 2079
    .local v6, "monthOfYear":I
    const/4 v11, 0x5

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2081
    .local v3, "dayOfMonth":I
    :try_start_0
    invoke-static {v8, v6, v3}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v0

    .line 2083
    invoke-static {v0}, Lcn/nubia/commonui/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2086
    :goto_0
    if-nez v7, :cond_1

    .line 2092
    :cond_0
    :goto_1
    return v9

    .line 2088
    :cond_1
    const/4 v11, 0x4

    invoke-virtual {v7, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2089
    .local v2, "curentlunarYear":I
    if-ne v2, p0, :cond_0

    move v9, v10

    .line 2090
    goto :goto_1

    .line 2084
    .end local v2    # "curentlunarYear":I
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "things":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 573
    .local v1, "first":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 574
    .local v2, "thing":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 575
    const/4 v1, 0x0

    .line 579
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 577
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 581
    .end local v2    # "thing":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final julianDayToTime(I)Landroid/text/format/Time;
    .locals 1
    .param p0, "julianDay"    # I

    .prologue
    .line 3047
    sget-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    invoke-virtual {v0, p0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3048
    sget-object v0, Lcn/nubia/calendar/util/Utils;->interTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zxl--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2881
    return-void
.end method

.method public static makeIconAppRemind(Landroid/content/Context;Ljava/lang/Class;ZLjava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isEnd"    # Z
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3260
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3261
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 3262
    const-string v1, "className"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    const-string v1, "packageName"

    const-string v2, "cn.nubia.calendar.preset"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    :cond_0
    if-eqz p2, :cond_2

    .line 3266
    const-string v1, "end"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3270
    :goto_0
    if-eqz p3, :cond_1

    .line 3271
    const-string v1, "flagMsg"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/calendar/util/Utils;->FANCY_ICON_URI:Landroid/net/Uri;

    const-string v3, "fancyIcon"

    const-string v4, "effect_app_remind"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3275
    return-void

    .line 3268
    :cond_2
    const-string v1, "end"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 469
    if-nez p0, :cond_1

    .line 470
    const/4 v3, 0x0

    .line 486
    :cond_0
    return-object v3

    .line 472
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "columnNames":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 474
    const/4 v5, 0x0

    new-array v0, v5, [Ljava/lang/String;

    .line 476
    :cond_2
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 477
    .local v3, "newCursor":Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    .line 478
    .local v4, "numColumns":I
    new-array v1, v4, [Ljava/lang/String;

    .line 479
    .local v1, "data":[Ljava/lang/String;
    const/4 v5, -0x1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 480
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 481
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 482
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 484
    :cond_3
    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static obtainTime(IILjava/lang/String;)I
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "rdate"    # Ljava/lang/String;

    .prologue
    .line 3283
    if-nez p2, :cond_0

    .line 3284
    const/4 v0, 0x0

    .line 3286
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static outputEventAsVCalendar(Landroid/content/Context;Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2801
    new-instance v0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    invoke-direct {v0, p0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;-><init>(Landroid/content/Context;)V

    .line 2802
    .local v0, "vCalComposer":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;
    new-instance v1, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;-><init>(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;Ljava/io/OutputStream;)V

    .line 2803
    invoke-virtual {v0, v1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->addHandler(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;)V

    .line 2806
    invoke-virtual {v0, p2, p3}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2821
    :goto_0
    return-void

    .line 2813
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2814
    invoke-virtual {v0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->createOneEntry()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2820
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->terminate()V

    goto :goto_0
.end method

.method public static queryInstanceStartAndEnd(Landroid/content/Context;)J
    .locals 26
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0xfa0

    add-long v18, v22, v24

    .line 3189
    .local v18, "startTimeMillis":J
    const-wide/32 v22, 0x57b12c00

    add-long v16, v18, v22

    .line 3190
    .local v16, "endTimeMillis":J
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    .line 3191
    .local v20, "uriBuilder":Landroid/net/Uri$Builder;
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 3192
    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 3193
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 3194
    .local v5, "uri":Landroid/net/Uri;
    const-string v7, "begin > ? "

    .line 3195
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 3196
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v4

    .line 3198
    .local v8, "selectionArgs":[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v21, "begin"

    aput-object v21, v6, v4

    .line 3201
    .local v6, "projection":[Ljava/lang/String;
    const-string v9, "begin ASC "

    .line 3202
    .local v9, "sortOrdr":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3203
    .local v14, "c":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .line 3205
    .local v10, "EventTimeMilles":J
    :try_start_0
    const-string v4, "Calendar_Preset"

    const-string v21, "query---start"

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 3208
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3209
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 3215
    if-eqz v14, :cond_0

    .line 3216
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v12, v10

    .line 3219
    .end local v10    # "EventTimeMilles":J
    .local v12, "EventTimeMilles":J
    :goto_0
    return-wide v12

    .line 3215
    .end local v12    # "EventTimeMilles":J
    .restart local v10    # "EventTimeMilles":J
    :cond_1
    if-eqz v14, :cond_2

    .line 3216
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-wide v12, v10

    .line 3219
    .end local v10    # "EventTimeMilles":J
    .restart local v12    # "EventTimeMilles":J
    goto :goto_0

    .line 3212
    .end local v12    # "EventTimeMilles":J
    .restart local v10    # "EventTimeMilles":J
    :catch_0
    move-exception v15

    .line 3213
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Calendar_Preset"

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3215
    if-eqz v14, :cond_2

    .line 3216
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3215
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v14, :cond_3

    .line 3216
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3218
    :cond_3
    throw v4
.end method

.method public static resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1665
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static returnToCalendarHome(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1561
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/calendar/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1562
    .local v0, "launchIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1564
    const-string v1, "KEY_HOME"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1565
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1566
    return-void
.end method

.method public static setAllowWeekForDetailView(Z)V
    .locals 0
    .param p0, "allowWeekView"    # Z

    .prologue
    .line 783
    sput-boolean p0, Lcn/nubia/calendar/util/Utils;->mAllowWeekForDetailView:Z

    .line 784
    return-void
.end method

.method public static setCalendarIcon(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 3236
    const/4 v1, 0x0

    .line 3237
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 3238
    .local v3, "isEnd":Z
    const-string v4, "alert"

    .line 3240
    .local v4, "msg":Ljava/lang/String;
    :try_start_0
    const-string v5, "cn.nubia.calendar.AllInOneActivity"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3244
    :goto_0
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->queryInstanceStartAndEnd(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3245
    .local v0, "EventTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcn/nubia/calendar/util/Utils;->isCruTimeDate(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3246
    const/4 v3, 0x1

    .line 3251
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v3, v5}, Lcn/nubia/calendar/util/Utils;->makeIconAppRemind(Landroid/content/Context;Ljava/lang/Class;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3256
    :goto_1
    return-void

    .line 3241
    .end local v0    # "EventTime":Ljava/lang/Long;
    :catch_0
    move-exception v2

    .line 3242
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3252
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "EventTime":Ljava/lang/Long;
    :catch_1
    move-exception v2

    .line 3253
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setDarkStatusIcon(Landroid/app/Activity;Z)V
    .locals 0
    .param p0, "ac"    # Landroid/app/Activity;
    .param p1, "bDark"    # Z

    .prologue
    .line 3371
    return-void
.end method

.method public static setDefaultHomeTimezone(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 2874
    sget-object v0, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->setDefaultHomeTimezoneValue(Landroid/content/Context;Z)V

    .line 2876
    return-void
.end method

.method public static setDefaultView(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "viewId"    # I

    .prologue
    const/4 v3, 0x1

    .line 445
    .line 446
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 449
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 450
    .local v2, "validDetailView":Z
    sget-boolean v4, Lcn/nubia/calendar/util/Utils;->mAllowWeekForDetailView:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 452
    const/4 v2, 0x1

    .line 458
    :goto_0
    if-eqz v2, :cond_0

    .line 460
    const-string v3, "preferred_detailedView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 464
    :cond_0
    const-string v3, "preferred_startView"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 466
    return-void

    .line 454
    :cond_1
    if-eq p1, v3, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    :cond_2
    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static setLunarEndMillis(JJ)J
    .locals 4
    .param p0, "millis"    # J
    .param p2, "endMillis"    # J

    .prologue
    .line 3303
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3304
    .local v1, "startTime":Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 3305
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 3306
    .local v0, "endTime":Landroid/text/format/Time;
    invoke-virtual {v0, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 3307
    iget v2, v1, Landroid/text/format/Time;->year:I

    iput v2, v0, Landroid/text/format/Time;->year:I

    .line 3308
    iget v2, v1, Landroid/text/format/Time;->month:I

    iput v2, v0, Landroid/text/format/Time;->month:I

    .line 3309
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    iput v2, v0, Landroid/text/format/Time;->monthDay:I

    .line 3310
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2
.end method

.method public static setLunarMillis(JLjava/lang/String;)J
    .locals 6
    .param p0, "millis"    # J
    .param p2, "rdate"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xd

    const/16 v3, 0x9

    const/16 v2, 0xb

    .line 3290
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3291
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 3292
    const/16 v1, 0xf

    invoke-static {v4, v1, p2}, Lcn/nubia/calendar/util/Utils;->obtainTime(IILjava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 3293
    iget v1, v0, Landroid/text/format/Time;->second:I

    if-lez v1, :cond_0

    .line 3294
    invoke-static {v3, v2, p2}, Lcn/nubia/calendar/util/Utils;->obtainTime(IILjava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 3298
    :goto_0
    invoke-static {v2, v4, p2}, Lcn/nubia/calendar/util/Utils;->obtainTime(IILjava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 3299
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    return-wide v2

    .line 3296
    :cond_0
    invoke-static {v3, v2, p2}, Lcn/nubia/calendar/util/Utils;->obtainTime(IILjava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->hour:I

    goto :goto_0
.end method

.method public static setLunarTitleByLunarMonth(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "yearStr"    # Ljava/lang/String;
    .param p4, "monthStr"    # Ljava/lang/String;
    .param p5, "WeekStr"    # Ljava/lang/String;
    .param p6, "flag"    # Z

    .prologue
    .line 2102
    const/4 v9, 0x0

    .line 2103
    .local v9, "solarToLunar":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2106
    .local v4, "FormatdateString":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/nubia/commonui/widget/LunarUtil;->formatDate(III)Ljava/lang/String;

    move-result-object v4

    .line 2107
    invoke-static {v4}, Lcn/nubia/commonui/widget/LunarUtil;->solarToLunar(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 2110
    :goto_0
    if-nez v9, :cond_0

    .line 2111
    const/4 v5, 0x0

    .line 2130
    :goto_1
    return-object v5

    .line 2112
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 2113
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2114
    .local v0, "mLunarYear":I
    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2115
    .local v1, "mLunarMonth":I
    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2121
    .local v2, "mLunarDay":I
    :goto_2
    const/4 v3, 0x0

    .line 2122
    .local v3, "CurMonthIsLeap":Z
    const/16 v5, 0x14

    if-le v1, v5, :cond_1

    .line 2123
    add-int/lit8 v1, v1, -0x14

    .line 2124
    const/4 v3, 0x1

    .line 2126
    :cond_1
    const/16 v5, 0x1e

    if-le v2, v5, :cond_2

    .line 2127
    add-int/lit8 v1, v1, 0x1

    .line 2128
    add-int/lit8 v5, v2, -0x1

    rem-int/lit8 v5, v5, 0x1e

    add-int/lit8 v2, v5, 0x1

    :cond_2
    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    .line 2130
    invoke-static/range {v0 .. v8}, Lcn/nubia/calendar/util/Utils;->GetLunarTitle(IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2117
    .end local v0    # "mLunarYear":I
    .end local v1    # "mLunarMonth":I
    .end local v2    # "mLunarDay":I
    .end local v3    # "CurMonthIsLeap":Z
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2118
    .restart local v0    # "mLunarYear":I
    const/4 v5, 0x4

    const/4 v6, 0x7

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x14

    .line 2119
    .restart local v1    # "mLunarMonth":I
    const/4 v5, 0x7

    const/16 v6, 0x9

    invoke-virtual {v9, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "mLunarDay":I
    goto :goto_2

    .line 2108
    .end local v0    # "mLunarYear":I
    .end local v1    # "mLunarMonth":I
    .end local v2    # "mLunarDay":I
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 7
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "timezone"    # Ljava/lang/String;

    .prologue
    .line 1651
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1654
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1655
    .local v0, "now":J
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1656
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1657
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

    .line 1659
    .local v2, "runInMillis":J
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1660
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setOnlyPortraitOrientation(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 2858
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 2860
    .local v0, "isOnlyPortrait":Z
    if-eqz v0, :cond_0

    .line 2861
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 2862
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 2865
    :cond_0
    return-void
.end method

.method public static setPrefInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 3175
    .line 3176
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3177
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3178
    return-void
.end method

.method public static setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 3182
    .line 3183
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3184
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3185
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 431
    .line 432
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 433
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 436
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 396
    .line 397
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 398
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 422
    .line 423
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 424
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    return-void
.end method

.method public static setSharedPreference(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .line 403
    .line 404
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 405
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 406
    .local v2, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 407
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 410
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2884
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    if-eqz p0, :cond_0

    .line 2893
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2894
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 2895
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 2902
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_0
    return-void
.end method

.method public static setStatusBarWhiteColor(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2916
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    if-eqz p0, :cond_0

    .line 2918
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2919
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d016c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2922
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public static setTimeChangesReceiver(Landroid/content/Context;Ljava/lang/Runnable;)Landroid/content/BroadcastReceiver;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 2548
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2549
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2550
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2551
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2552
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2554
    new-instance v1, Lcn/nubia/calendar/util/Utils$CalendarBroadcastReceiver;

    invoke-direct {v1, p1}, Lcn/nubia/calendar/util/Utils$CalendarBroadcastReceiver;-><init>(Ljava/lang/Runnable;)V

    .line 2555
    .local v1, "r":Lcn/nubia/calendar/util/Utils$CalendarBroadcastReceiver;
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2556
    return-object v1
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 319
    sget-object v0, Lcn/nubia/calendar/util/Utils;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public static setTodayIcon(Landroid/graphics/drawable/LayerDrawable;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "icon"    # Landroid/graphics/drawable/LayerDrawable;
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "timezone"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f110282

    .line 2506
    .line 2507
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2508
    .local v0, "currentDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lcn/nubia/calendar/DayOfMonthDrawable;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 2510
    check-cast v2, Lcn/nubia/calendar/DayOfMonthDrawable;

    .line 2515
    .local v2, "today":Lcn/nubia/calendar/DayOfMonthDrawable;
    :goto_0
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2516
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 2517
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 2518
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/DayOfMonthDrawable;->setDayOfMonth(I)V

    .line 2519
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2520
    invoke-virtual {p0, v4, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 2521
    return-void

    .line 2512
    .end local v1    # "now":Landroid/text/format/Time;
    .end local v2    # "today":Lcn/nubia/calendar/DayOfMonthDrawable;
    :cond_0
    new-instance v2, Lcn/nubia/calendar/DayOfMonthDrawable;

    invoke-direct {v2, p1}, Lcn/nubia/calendar/DayOfMonthDrawable;-><init>(Landroid/content/Context;)V

    .restart local v2    # "today":Lcn/nubia/calendar/DayOfMonthDrawable;
    goto :goto_0
.end method

.method public static setUpSearchView(Lcn/nubia/commonui/widget/NubiaSearchView;Landroid/app/Activity;)V
    .locals 1
    .param p0, "view"    # Lcn/nubia/commonui/widget/NubiaSearchView;
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 1578
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryRefinementEnabled(Z)V

    .line 1579
    return-void
.end method

.method public static setWindowOverLap(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2936
    return-void
.end method

.method public static setWindowOverLapAllInoneOther(Landroid/content/Context;)V
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f0d0067

    const/high16 v2, -0x80000000

    .line 2950
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2951
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 2954
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2956
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2958
    return-void
.end method

.method public static setWindowOverLapAllInoneYear(Landroid/content/Context;)V
    .locals 4
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f0d0068

    const/high16 v2, -0x80000000

    .line 2939
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2940
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 2943
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2945
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2947
    return-void
.end method

.method public static shareAgenda(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    .line 2644
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2645
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c020c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2646
    new-instance v1, Lcn/nubia/calendar/util/Utils$1;

    invoke-direct {v1, p1, p2, p0}, Lcn/nubia/calendar/util/Utils$1;-><init>(JLandroid/content/Context;)V

    .line 2706
    .local v1, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;

    invoke-direct {v2, p0}, Lcn/nubia/vcalendar/vcreator/ShareListItemAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2707
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2708
    return-void
.end method

.method public static shareAgendaByChooser(Landroid/content/Context;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # J

    .prologue
    const/4 v8, 0x0

    .line 2715
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2718
    .local v4, "isSdcardExist":Z
    if-eqz v4, :cond_0

    .line 2719
    const/4 v6, 0x1

    invoke-static {p0, p1, p2, v6}, Lcn/nubia/calendar/util/Utils;->buileShareAgendaUri(Landroid/content/Context;JZ)Landroid/net/Uri;

    move-result-object v5

    .line 2729
    .local v5, "shareUri":Landroid/net/Uri;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2730
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "text/calendar"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2731
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2734
    const v6, 0x7f0c020c

    .line 2735
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2736
    .local v1, "chooseTitle":Ljava/lang/CharSequence;
    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2739
    .local v0, "chooseIntent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2744
    :goto_1
    return-void

    .line 2720
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    .end local v1    # "chooseTitle":Ljava/lang/CharSequence;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "shareUri":Landroid/net/Uri;
    :cond_0
    invoke-static {}, Lcn/nubia/calendar/EnvironmentProxy;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2722
    invoke-static {p0, p1, p2, v8}, Lcn/nubia/calendar/util/Utils;->buileShareAgendaUri(Landroid/content/Context;JZ)Landroid/net/Uri;

    move-result-object v5

    .restart local v5    # "shareUri":Landroid/net/Uri;
    goto :goto_0

    .line 2724
    .end local v5    # "shareUri":Landroid/net/Uri;
    :cond_1
    sget-object v6, Lcn/nubia/calendar/db/CustomCalendarProvider;->AGENDA_AS_ICS_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .restart local v5    # "shareUri":Landroid/net/Uri;
    goto :goto_0

    .line 2740
    .restart local v0    # "chooseIntent":Landroid/content/Intent;
    .restart local v1    # "chooseTitle":Ljava/lang/CharSequence;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 2741
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    const v6, 0x7f0c020b

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 2742
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private static singleDayEvent(JJJ)Z
    .locals 6
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "localGmtOffset"    # J

    .prologue
    const/4 v2, 0x1

    .line 2316
    cmp-long v3, p0, p2

    if-nez v3, :cond_1

    .line 2325
    :cond_0
    :goto_0
    return v2

    .line 2323
    :cond_1
    invoke-static {p0, p1, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 2324
    .local v1, "startDay":I
    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    invoke-static {v4, v5, p4, p5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 2325
    .local v0, "endDay":I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static tardis()V
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/nubia/calendar/util/Utils;->mTardis:J

    .line 414
    return-void
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, -0x1

    .line 528
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 529
    .local v0, "data":Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 530
    .local v2, "millis":J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 531
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 532
    .local v4, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 542
    .end local v4    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_1

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 545
    :cond_1
    return-wide v2

    .line 535
    .restart local v4    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[I)V
    .locals 17
    .param p1, "firstJulianDay"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "dayXs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendar/util/Utils$DNASegment;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$DNAStrand;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .line 1422
    .local p0, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/Utils$DNASegment;>;"
    .local p2, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1423
    .local v8, "strandIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1424
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/util/Utils$DNAStrand;

    .line 1425
    .local v7, "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    iget v13, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    const/4 v14, 0x1

    if-ge v13, v14, :cond_0

    iget-object v13, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->allDays:[I

    if-nez v13, :cond_0

    .line 1426
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1429
    :cond_0
    iget v13, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    mul-int/lit8 v13, v13, 0x4

    new-array v13, v13, [F

    iput-object v13, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    .line 1430
    const/4 v13, 0x0

    iput v13, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    goto :goto_0

    .line 1433
    .end local v7    # "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/calendar/util/Utils$DNASegment;

    .line 1435
    .local v6, "segment":Lcn/nubia/calendar/util/Utils$DNASegment;
    iget v14, v6, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/calendar/util/Utils$DNAStrand;

    .line 1436
    .restart local v7    # "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    iget v14, v6, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    sub-int v2, v14, p1

    .line 1437
    .local v2, "dayIndex":I
    iget v14, v6, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    rem-int/lit16 v3, v14, 0x5a0

    .line 1438
    .local v3, "dayStartMinute":I
    iget v14, v6, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    rem-int/lit16 v1, v14, 0x5a0

    .line 1439
    .local v1, "dayEndMinute":I
    sub-int v4, p4, p3

    .line 1440
    .local v4, "height":I
    mul-int/lit8 v14, v4, 0x3

    div-int/lit8 v9, v14, 0x4

    .line 1441
    .local v9, "workDayHeight":I
    sub-int v14, v4, v9

    div-int/lit8 v5, v14, 0x2

    .line 1442
    .local v5, "remainderHeight":I
    aget v10, p5, v2

    .line 1443
    .local v10, "x":I
    const/4 v11, 0x0

    .line 1444
    .local v11, "y0":I
    const/4 v12, 0x0

    .line 1445
    .local v12, "y1":I
    const/16 v14, 0x3ca

    .line 1446
    invoke-static {v14, v9, v5}, Lcn/nubia/calendar/util/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v11, p3, v14

    .line 1448
    const/16 v14, 0x3ca

    .line 1449
    invoke-static {v14, v9, v5}, Lcn/nubia/calendar/util/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v14

    add-int v12, p3, v14

    .line 1456
    iget-object v14, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    iget v15, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    int-to-float v0, v10

    move/from16 v16, v0

    aput v16, v14, v15

    .line 1457
    iget-object v14, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    iget v15, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    int-to-float v0, v11

    move/from16 v16, v0

    aput v16, v14, v15

    .line 1458
    iget-object v14, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    iget v15, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    int-to-float v0, v10

    move/from16 v16, v0

    aput v16, v14, v15

    .line 1459
    iget-object v14, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    iget v15, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v7, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    int-to-float v0, v12

    move/from16 v16, v0

    aput v16, v14, v15

    goto :goto_1

    .line 1461
    .end local v1    # "dayEndMinute":I
    .end local v2    # "dayIndex":I
    .end local v3    # "dayStartMinute":I
    .end local v4    # "height":I
    .end local v5    # "remainderHeight":I
    .end local v6    # "segment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .end local v7    # "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    .end local v9    # "workDayHeight":I
    .end local v10    # "x":I
    .end local v11    # "y0":I
    .end local v12    # "y1":I
    :cond_2
    return-void
.end method

.method private static weaveDNAStrands(Ljava/util/LinkedList;ILjava/util/HashMap;II[ILjava/util/HashMap;)V
    .locals 22
    .param p1, "firstJulianDay"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "dayXs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcn/nubia/calendar/util/Utils$DNASegment;",
            ">;I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$DNAStrand;",
            ">;II[I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/calendar/util/Utils$LocationXY;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1377
    .local p0, "segments":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcn/nubia/calendar/util/Utils$DNASegment;>;"
    .local p2, "strands":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    .local p6, "storeLocation":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcn/nubia/calendar/util/Utils$LocationXY;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1378
    .local v12, "strandIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/util/Utils$DNAStrand;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1379
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/calendar/util/Utils$DNAStrand;

    .line 1380
    .local v11, "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    iget v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    iget-object v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->allDays:[I

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 1381
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1384
    :cond_0
    iget v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->count:I

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    .line 1385
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    goto :goto_0

    .line 1388
    .end local v11    # "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/calendar/util/Utils$DNASegment;

    .line 1390
    .local v10, "segment":Lcn/nubia/calendar/util/Utils$DNASegment;
    iget v0, v10, Lcn/nubia/calendar/util/Utils$DNASegment;->color:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/calendar/util/Utils$DNAStrand;

    .line 1391
    .restart local v11    # "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    iget v0, v10, Lcn/nubia/calendar/util/Utils$DNASegment;->day:I

    move/from16 v18, v0

    sub-int v5, v18, p1

    .line 1392
    .local v5, "dayIndex":I
    iget v0, v10, Lcn/nubia/calendar/util/Utils$DNASegment;->startMinute:I

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v6, v0, 0x5a0

    .line 1393
    .local v6, "dayStartMinute":I
    iget v0, v10, Lcn/nubia/calendar/util/Utils$DNASegment;->endMinute:I

    move/from16 v18, v0

    move/from16 v0, v18

    rem-int/lit16 v4, v0, 0x5a0

    .line 1394
    .local v4, "dayEndMinute":I
    sub-int v7, p4, p3

    .line 1395
    .local v7, "height":I
    mul-int/lit8 v18, v7, 0x3

    div-int/lit8 v13, v18, 0x4

    .line 1396
    .local v13, "workDayHeight":I
    sub-int v18, v7, v13

    div-int/lit8 v9, v18, 0x2

    .line 1397
    .local v9, "remainderHeight":I
    aget v14, p5, v5

    .line 1398
    .local v14, "x":I
    const/4 v15, 0x0

    .line 1399
    .local v15, "y0":I
    const/16 v16, 0x0

    .line 1400
    .local v16, "y1":I
    const/16 v18, 0x3ca

    .line 1401
    move/from16 v0, v18

    invoke-static {v0, v13, v9}, Lcn/nubia/calendar/util/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v18

    add-int v15, p3, v18

    .line 1403
    const/16 v18, 0x3ca

    .line 1404
    move/from16 v0, v18

    invoke-static {v0, v13, v9}, Lcn/nubia/calendar/util/Utils;->getPixelOffsetFromMinutes(III)I

    move-result v18

    add-int v16, p3, v18

    .line 1406
    iget-object v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    move-object/from16 v18, v0

    iget v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    int-to-float v0, v14

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1407
    iget-object v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    move-object/from16 v18, v0

    iget v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    int-to-float v0, v15

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1408
    iget-object v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    move-object/from16 v18, v0

    iget v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    int-to-float v0, v14

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1409
    iget-object v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->points:[F

    move-object/from16 v18, v0

    iget v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    iput v0, v11, Lcn/nubia/calendar/util/Utils$DNAStrand;->position:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 1410
    new-instance v8, Lcn/nubia/calendar/util/Utils$LocationXY;

    int-to-float v0, v14

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v14

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v8, v0, v1, v2, v3}, Lcn/nubia/calendar/util/Utils$LocationXY;-><init>(FFFF)V

    .line 1411
    .local v8, "mLocationXY":Lcn/nubia/calendar/util/Utils$LocationXY;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1413
    .end local v4    # "dayEndMinute":I
    .end local v5    # "dayIndex":I
    .end local v6    # "dayStartMinute":I
    .end local v7    # "height":I
    .end local v8    # "mLocationXY":Lcn/nubia/calendar/util/Utils$LocationXY;
    .end local v9    # "remainderHeight":I
    .end local v10    # "segment":Lcn/nubia/calendar/util/Utils$DNASegment;
    .end local v11    # "strand":Lcn/nubia/calendar/util/Utils$DNAStrand;
    .end local v13    # "workDayHeight":I
    .end local v14    # "x":I
    .end local v15    # "y0":I
    .end local v16    # "y1":I
    :cond_2
    return-void
.end method
