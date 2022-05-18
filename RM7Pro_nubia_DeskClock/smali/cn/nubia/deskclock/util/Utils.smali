.class public Lcn/nubia/deskclock/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACTION_ON_QUARTER_HOUR:Ljava/lang/String; = "com.android.deskclock.ON_QUARTER_HOUR"

.field private static final ACTION_UPDATE:Ljava/lang/String; = "update"

.field private static final ACTIVITY_NAME_COUNTDOWN_ALERT_FULLSCRREN:Ljava/lang/String; = "cn.nubia.deskclock.activity.CountdownAlertActivity"

.field private static final DISABLE_NONE:I = 0x0

.field private static final DISABLE_RECENT:I = 0x1000000

.field private static final EXTRA_ACTION:Ljava/lang/String; = "forcetouch_action"

.field private static final EXTRA_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final EXTRA_ID:Ljava/lang/String; = "forcetouch_id"

.field private static final EXTRA_INTENT:Ljava/lang/String; = "forcetouch_intent"

.field private static final EXTRA_LABLE_RES_NAME:Ljava/lang/String; = "forcetouch_lable_res_name"

.field private static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final IS_ALLOW_ACCESS_NETWORK:Ljava/lang/String; = "isAllowAccessNetwork"

.field public static final IS_FIRST_LAUNCH:Ljava/lang/String; = "isFirstLaunch"

.field private static final IS_FRROM_KEYGURAD:Ljava/lang/String; = "is_from_keygurad"

.field public static final LAST_UPDATE_CURRENT_YEAR_HOLIDAY_TIME:Ljava/lang/String; = "last_update_current_year_holiday_time"

.field public static final LAST_UPDATE_CURRENT_YEAR_WEEKEND_WORK_TIME:Ljava/lang/String; = "last_update_current_year_weekend_work_time"

.field public static final LAST_UPDATE_NEXT_YEAR_HOLIDAY_TIME:Ljava/lang/String; = "last_update_next_year_holiday_time"

.field private static final METHOD_FORCE_TOUCH_SHORTCUT:Ljava/lang/String; = "forceTouchShortcut"

.field public static final NETWORK_MOBILE:I = 0x2

.field public static final NETWORK_NONE:I = 0x0

.field public static final NETWORK_WIFI:I = 0x1

.field private static final ONE_DAY_TIME:J = 0x5265c00L

.field private static final ORIGIN_SOUND_FILES:Ljava/lang/String; = "/system/media/audio/notifications/Jingle.ogg"

.field private static final SINGLE_HAND_KEY:Ljava/lang/String; = "single_reverse_switch"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final THREE_DAY_TIME:J = 0xf731400L

.field public static final UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static chineseHolidayMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static chineseWeekendWorkMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mUri:Landroid/net/Uri;

.field private static object:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "content://cn.nubia.launcher.unreadMark"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/deskclock/util/Utils;->mUri:Landroid/net/Uri;

    .line 459
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/nubia/deskclock/util/Utils;->object:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GrayStatusBar(Landroid/app/Activity;)V
    .locals 4
    .param p0, "ac"    # Landroid/app/Activity;

    .prologue
    const/high16 v3, -0x80000000

    .line 232
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 234
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 236
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 237
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 239
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public static GrayStatusBarWhite(Landroid/app/Activity;)V
    .locals 4
    .param p0, "ac"    # Landroid/app/Activity;

    .prologue
    const/high16 v3, -0x80000000

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 207
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 208
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 214
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public static buildMonthDayDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 919
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 920
    .local v0, "mCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 921
    .local v1, "mCalendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 923
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 925
    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 926
    .local v6, "mZoneHour":I
    invoke-virtual {v1, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 928
    .local v4, "mNowHour":I
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 929
    .local v5, "mZoneDAY":I
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 930
    .local v3, "mNowDAY":I
    if-ne v5, v3, :cond_1

    .line 938
    :cond_0
    :goto_0
    sub-int v2, v4, v6

    .line 939
    .local v2, "mCountHour":I
    if-lez v2, :cond_3

    .line 940
    const v7, 0x7f0d00e0

    .line 941
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    .line 942
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 940
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 944
    :goto_1
    return-object v7

    .line 932
    .end local v2    # "mCountHour":I
    :cond_1
    if-le v5, v3, :cond_2

    .line 933
    add-int/lit8 v6, v6, 0x18

    goto :goto_0

    .line 934
    :cond_2
    if-ge v5, v3, :cond_0

    .line 935
    add-int/lit8 v4, v4, 0x18

    goto :goto_0

    .line 944
    .restart local v2    # "mCountHour":I
    :cond_3
    const v7, 0x7f0d00df

    .line 945
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    .line 946
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 944
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static buildTodayYestodayTomorrow(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    const v10, 0x7f0d00e2

    const v9, 0x7f0d00da

    .line 951
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timezone = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "dd"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 953
    .local v1, "df":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 954
    .local v2, "mCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 955
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 956
    const-string v6, "dd"

    invoke-static {v6, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 957
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 956
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 959
    .local v4, "zoneTime":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 960
    .local v3, "mCalendarNow":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 961
    const-string v6, "dd"

    invoke-static {v6, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 962
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 961
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 963
    .local v5, "zoneTimeNow":I
    sub-int v0, v5, v4

    .line 964
    .local v0, "countTime":I
    if-nez v0, :cond_0

    .line 965
    const v6, 0x7f0d00d9

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 975
    :goto_0
    return-object v6

    .line 966
    :cond_0
    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 967
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 968
    :cond_1
    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    .line 969
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 970
    :cond_2
    const/16 v6, 0x19

    if-le v0, v6, :cond_3

    .line 971
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 972
    :cond_3
    const/16 v6, -0x19

    if-ge v0, v6, :cond_4

    .line 973
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 975
    :cond_4
    const-string v6, ""

    goto :goto_0
.end method

.method public static checkNeedUpdate(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 446
    const-string v3, "update_time"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "NowTime"

    const-wide/16 v6, -0x1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 448
    .local v0, "mNowTime":J
    const-string v3, "update_time"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "NowTime"

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 451
    const/4 v2, 0x1

    .line 453
    :cond_0
    return v2
.end method

.method public static checkPasswordToUnLock(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 777
    const-string v1, "keyguard"

    .line 778
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 779
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    return v1
.end method

.method public static clearAllSharePreferceData()V
    .locals 3

    .prologue
    .line 422
    const-string v1, "Utils"

    const-string v2, "clearAllSharePreferceData"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Ljava/io/File;

    const-string v1, "data/data/cn.nubia.deskclock.preset/shared_prefs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    const-string v1, "Utils"

    const-string v2, "clearAllSharePreferceData  delete"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {v0}, Lcn/nubia/deskclock/util/Utils;->deleteDir(Ljava/io/File;)Z

    .line 428
    :cond_0
    return-void
.end method

.method public static clearSwSharedPref(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 133
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "sw_start_time"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    const-string v4, "sw_accum_time"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    const-string v4, "sw_state"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v4, "sw_lap_num"

    const/4 v5, 0x0

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 138
    .local v3, "lapNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sw_lap_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    const-string v4, "sw_lap_num"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    return-void
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;

    .prologue
    .line 1094
    const/4 v8, 0x0

    .line 1095
    .local v8, "newFile":Ljava/io/File;
    const-string v11, ""

    .line 1097
    .local v11, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1098
    .local v3, "bytesum":I
    const/4 v2, 0x0

    .line 1099
    .local v2, "byteread":I
    :try_start_0
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1100
    .local v10, "oldfile":Ljava/io/File;
    const-string v14, "Utils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "copyFile: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ;; newPath : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "ringtone"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ringtone"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v13, "ringtoneFileDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 1103
    invoke-virtual {v13}, Ljava/io/File;->mkdir()Z

    .line 1105
    :cond_0
    new-instance v9, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1106
    .end local v8    # "newFile":Ljava/io/File;
    .local v9, "newFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 1107
    .local v5, "flag":Z
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1108
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v5

    .line 1114
    const-string v14, "Utils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " flag : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1116
    new-instance v7, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v7, "inStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1118
    .local v6, "fs":Ljava/io/FileOutputStream;
    const/16 v14, 0x5a4

    new-array v1, v14, [B

    .line 1120
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_2

    .line 1121
    add-int/2addr v3, v2

    .line 1122
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v14, v3}, Ljava/io/PrintStream;->println(I)V

    .line 1123
    const/4 v14, 0x0

    invoke-virtual {v6, v1, v14, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1130
    .end local v1    # "buffer":[B
    .end local v6    # "fs":Ljava/io/FileOutputStream;
    .end local v7    # "inStream":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v8, v9

    .line 1131
    .end local v5    # "flag":Z
    .end local v9    # "newFile":Ljava/io/File;
    .end local v10    # "oldfile":Ljava/io/File;
    .end local v13    # "ringtoneFileDir":Ljava/io/File;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v8    # "newFile":Ljava/io/File;
    :goto_1
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "copy file error"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 1134
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v14, "Utils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "copyFile: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v11

    .line 1135
    .end local v11    # "path":Ljava/lang/String;
    .local v12, "path":Ljava/lang/String;
    :goto_3
    return-object v12

    .line 1110
    .end local v8    # "newFile":Ljava/io/File;
    .end local v12    # "path":Ljava/lang/String;
    .restart local v5    # "flag":Z
    .restart local v9    # "newFile":Ljava/io/File;
    .restart local v10    # "oldfile":Ljava/io/File;
    .restart local v11    # "path":Ljava/lang/String;
    .restart local v13    # "ringtoneFileDir":Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    .line 1111
    const-string v14, "Utils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " has exists ---- copyFile: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .end local v9    # "newFile":Ljava/io/File;
    .restart local v8    # "newFile":Ljava/io/File;
    move-object v12, v11

    .line 1112
    .end local v11    # "path":Ljava/lang/String;
    .restart local v12    # "path":Ljava/lang/String;
    goto :goto_3

    .line 1125
    .end local v8    # "newFile":Ljava/io/File;
    .end local v12    # "path":Ljava/lang/String;
    .restart local v1    # "buffer":[B
    .restart local v6    # "fs":Ljava/io/FileOutputStream;
    .restart local v7    # "inStream":Ljava/io/InputStream;
    .restart local v9    # "newFile":Ljava/io/File;
    .restart local v11    # "path":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 1126
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 1129
    .end local v1    # "buffer":[B
    .end local v6    # "fs":Ljava/io/FileOutputStream;
    .end local v7    # "inStream":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    move-object v8, v9

    .line 1133
    .end local v9    # "newFile":Ljava/io/File;
    .restart local v8    # "newFile":Ljava/io/File;
    goto :goto_2

    .line 1130
    .end local v5    # "flag":Z
    .end local v10    # "oldfile":Ljava/io/File;
    .end local v13    # "ringtoneFileDir":Ljava/io/File;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static countDownActivityisTop(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, "isTop":Z
    const-string v1, "cn.nubia.deskclock.activity.CountdownAlertActivity"

    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getTopActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 856
    const/4 v0, 0x1

    .line 858
    :cond_0
    return v0
.end method

.method static createColorBitmap(II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 373
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 376
    .local v1, "color":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 377
    .local v0, "c1":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#a8000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 378
    .local v2, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v2, v4, v4, p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 379
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 380
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 381
    return-object v1
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 431
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 435
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcn/nubia/deskclock/util/Utils;->deleteDir(Ljava/io/File;)Z

    move-result v2

    .line 436
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 437
    const/4 v3, 0x0

    .line 442
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 434
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1139
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1140
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 1141
    .local v2, "isSucess":Z
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file delete status --->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    .end local v2    # "isSucess":Z
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1143
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1144
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 1145
    aget-object v3, v0, v1

    invoke-static {v3}, Lcn/nubia/deskclock/util/Utils;->deleteFile(Ljava/io/File;)V

    .line 1144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1147
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 1148
    .restart local v2    # "isSucess":Z
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file delete status--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static disableMenu(Z)V
    .locals 8
    .param p0, "disable"    # Z

    .prologue
    .line 762
    :try_start_0
    sget-object v4, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    const-string v5, "statusbar"

    .line 763
    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 764
    .local v3, "service":Ljava/lang/Object;
    const-string v4, "android.app.StatusBarManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 765
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "disable"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 766
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz p0, :cond_0

    .line 767
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/high16 v6, 0x1000000

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "service":Ljava/lang/Object;
    :goto_0
    return-void

    .line 769
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "service":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 771
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "service":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 772
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "paramDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 317
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 318
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 319
    .local v0, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 321
    .local v1, "localBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v2, "localCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 324
    return-object v1
.end method

.method public static drawableToBitmapWithMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 362
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 363
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 362
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, p0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 367
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/Utils;->createColorBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 368
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    return-object v0
.end method

.method public static filePathToUri(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 174
    move-object v7, p1

    .line 175
    .local v7, "uri":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 176
    const-string v0, "/storage/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const/4 v6, 0x0

    .line 179
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_data = ?"

    .line 180
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 185
    if-eqz v6, :cond_0

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 194
    :cond_0
    if-eqz v6, :cond_1

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filePathToUri filePath is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object v7

    .line 191
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 194
    if-eqz v6, :cond_1

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_2
    throw v0
.end method

.method public static formatCountDownSecond(J)Ljava/lang/String;
    .locals 14
    .param p0, "second"    # J

    .prologue
    const-wide/16 v12, 0x3c

    const-wide/16 v8, 0xe10

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 389
    div-long v0, p0, v8

    .line 390
    .local v0, "h":J
    rem-long v6, p0, v8

    div-long v2, v6, v12

    .line 391
    .local v2, "m":J
    rem-long v6, p0, v8

    rem-long v4, v6, v12

    .line 392
    .local v4, "s":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%02d"

    new-array v8, v11, [Ljava/lang/Object;

    .line 393
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 392
    return-object v6
.end method

.method public static formatCountDownSecond(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "second"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 397
    div-int/lit16 v1, p1, 0xe10

    .line 398
    .local v1, "hour":I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    .line 399
    .local v2, "minutes":I
    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    rem-int/lit8 v3, v4, 0x3c

    .line 400
    .local v3, "seconds":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .local v0, "cs":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0c0000

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 404
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 402
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_0
    if-eqz v2, :cond_1

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0001

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 410
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 408
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_1
    if-eqz v3, :cond_2

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 415
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 413
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAlarmBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1187
    const/4 v0, 0x0

    .line 1188
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isInSuperWallaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getSuperWallpaperDoTransfer(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1195
    :goto_0
    return-object v0

    .line 1190
    :cond_0
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->isInLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getDynamicWallpaperDoTransfer(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1193
    :cond_1
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getTransferBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAlertBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 329
    const/4 v2, 0x0

    .line 330
    .local v2, "localBitmap2":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/deskclock/util/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 332
    .local v1, "localBitmap1":Landroid/graphics/Bitmap;
    const/high16 v3, 0x42b40000    # 90.0f

    :try_start_0
    invoke-static {v1, v3}, Lnubia/util/BlurUtil;->doBlur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 337
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    move-object v1, v2

    .line 339
    .end local v1    # "localBitmap1":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 333
    .restart local v1    # "localBitmap1":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "ex":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBlurWallpaper(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 577
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 578
    .local v6, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v4, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 579
    .local v4, "height":I
    if-le v6, v4, :cond_0

    .line 580
    move v5, v6

    .line 581
    .local v5, "temp":I
    move v6, v4

    .line 582
    move v4, v5

    .line 584
    .end local v5    # "temp":I
    :cond_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 585
    .local v7, "wpm":Landroid/app/WallpaperManager;
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 586
    .local v1, "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "clipBlurWallpaper"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Landroid/graphics/Rect;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 588
    .local v3, "getBlurMethod":Ljava/lang/reflect/Method;
    const-string v8, "Utils"

    const-string v9, "getBlurWallpaper  clipBlurWallpaper"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-le v8, v9, :cond_2

    .line 591
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x5a

    .line 592
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 591
    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 597
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v0, :cond_1

    .line 598
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlertBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 604
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getBlurMethod":Ljava/lang/reflect/Method;
    .end local v4    # "height":I
    .end local v6    # "width":I
    .end local v7    # "wpm":Landroid/app/WallpaperManager;
    :cond_1
    :goto_1
    return-object v0

    .line 594
    .restart local v1    # "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "getBlurMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "height":I
    .restart local v6    # "width":I
    .restart local v7    # "wpm":Landroid/app/WallpaperManager;
    :cond_2
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    const/4 v9, 0x1

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x5a

    .line 595
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 594
    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 602
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getBlurMethod":Ljava/lang/reflect/Method;
    .end local v4    # "height":I
    .end local v6    # "width":I
    .end local v7    # "wpm":Landroid/app/WallpaperManager;
    :catch_0
    move-exception v2

    .line 603
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Utils"

    const-string v9, "getBlurWallpaper  clipBlurWallpaper_error"

    invoke-static {v8, v9}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->getAlertBlurBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static getDynamicWallpaperDoBlur(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 980
    const/4 v10, 0x0

    .line 981
    .local v10, "result":Landroid/graphics/drawable/Drawable;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 982
    .local v6, "dm":Landroid/util/DisplayMetrics;
    const-string v13, "window"

    .line 983
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 984
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 985
    .local v5, "dd":Landroid/view/Display;
    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 986
    const/4 v2, 0x0

    .line 988
    .local v2, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v7, Lcn/nubia/deskclock/util/DynamicWallpaperController;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcn/nubia/deskclock/util/DynamicWallpaperController;-><init>(Landroid/content/Context;)V

    .line 989
    .local v7, "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    invoke-virtual {v7}, Lcn/nubia/deskclock/util/DynamicWallpaperController;->getCurrentDynamicWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {v13}, Lcn/nubia/deskclock/util/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 990
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v14

    const/4 v15, 0x1

    invoke-static {v2, v13, v14, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 991
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-nez v13, :cond_1

    .line 992
    :cond_0
    const/4 v13, 0x0

    .line 1014
    .end local v7    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    :goto_0
    return-object v13

    .line 994
    .restart local v7    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    :cond_1
    const-string v13, "nubia.util.BlurUtil"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 995
    .local v1, "blurUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "doBlur"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/graphics/Bitmap;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    invoke-virtual {v1, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 997
    .local v9, "getBlur":Ljava/lang/reflect/Method;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v9, v1, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 999
    .local v3, "bt":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 1000
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1001
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v10    # "result":Landroid/graphics/drawable/Drawable;
    .local v11, "result":Landroid/graphics/drawable/Drawable;
    move-object v10, v11

    .line 1004
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "result":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_3

    .line 1005
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "blurUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "bt":Landroid/graphics/Bitmap;
    .end local v7    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    .end local v9    # "getBlur":Ljava/lang/reflect/Method;
    :cond_3
    :goto_1
    move-object v13, v10

    .line 1014
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v8

    .line 1008
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1009
    if-eqz v2, :cond_3

    .line 1010
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    .end local v10    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v10, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v10    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method public static getDynamicWallpaperDoTransfer(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, -0x777778

    .line 1018
    const/4 v3, 0x0

    .line 1020
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v1, Lcn/nubia/deskclock/util/DynamicWallpaperController;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/util/DynamicWallpaperController;-><init>(Landroid/content/Context;)V

    .line 1021
    .local v1, "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    invoke-virtual {v1}, Lcn/nubia/deskclock/util/DynamicWallpaperController;->getCurrentDynamicWallpaperLocal()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1022
    if-nez v3, :cond_1

    .line 1023
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0x777778

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    .local v4, "result":Landroid/graphics/drawable/Drawable;
    move-object v3, v4

    .line 1034
    .end local v1    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v3

    .line 1025
    .restart local v1    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    :cond_1
    invoke-static {v3}, Lcn/nubia/deskclock/util/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/deskclock/util/Utils;->drawableToBitmapWithMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1026
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1027
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "result":Landroid/graphics/drawable/Drawable;
    move-object v3, v4

    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1030
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    :catch_0
    move-exception v2

    .line 1031
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1032
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getIsFromKeygurad()Z
    .locals 4

    .prologue
    .line 1061
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1062
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "is_from_keygurad"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1063
    .local v0, "flag":Z
    return v0
.end method

.method public static getMobileModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1047
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkState(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 625
    const-string v4, "connectivity"

    .line 626
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 628
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 629
    .local v1, "state":Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v4, :cond_2

    :cond_0
    move v2, v3

    .line 637
    :cond_1
    :goto_0
    return v2

    .line 633
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 634
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v3, :cond_3

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v3, :cond_1

    .line 635
    :cond_3
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getRingtonePatch(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 1071
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1074
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1076
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1078
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1079
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1080
    .local v8, "index":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1085
    if-eqz v6, :cond_0

    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1087
    const/4 v6, 0x0

    .line 1090
    .end local v8    # "index":I
    :cond_0
    :goto_0
    return-object v0

    .line 1085
    :cond_1
    if-eqz v6, :cond_2

    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1087
    const/4 v6, 0x0

    :cond_2
    :goto_1
    move-object v0, v9

    .line 1090
    goto :goto_0

    .line 1082
    :catch_0
    move-exception v7

    .line 1083
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRingtonePatch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1085
    if-eqz v6, :cond_2

    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1087
    const/4 v6, 0x0

    goto :goto_1

    .line 1085
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1087
    const/4 v6, 0x0

    .line 1089
    :cond_3
    throw v0
.end method

.method public static getSuperWallpaperDoTransfer(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, -0x777778

    .line 1236
    const/4 v3, 0x0

    .line 1238
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v1, Lcn/nubia/deskclock/util/DynamicWallpaperController;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/util/DynamicWallpaperController;-><init>(Landroid/content/Context;)V

    .line 1239
    .local v1, "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    invoke-virtual {v1}, Lcn/nubia/deskclock/util/DynamicWallpaperController;->getCurrentSuperWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1240
    if-nez v3, :cond_1

    .line 1241
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const v5, -0x777778

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    .local v4, "result":Landroid/graphics/drawable/Drawable;
    move-object v3, v4

    .line 1252
    .end local v1    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v3

    .line 1243
    .restart local v1    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    :cond_1
    invoke-static {v3}, Lcn/nubia/deskclock/util/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/deskclock/util/Utils;->drawableToBitmapWithMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1244
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1245
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "result":Landroid/graphics/drawable/Drawable;
    move-object v3, v4

    .end local v4    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1248
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    :catch_0
    move-exception v2

    .line 1249
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1250
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static getSupportPowerOffAlarm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1052
    const-string v1, "sys.zte.poalarm.support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "support":Ljava/lang/String;
    const-string v0, "1"

    .line 1054
    return-object v0
.end method

.method public static getTimeNow()J
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTopActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 799
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 800
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTopAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 794
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 795
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTransferBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v5, -0x777778

    .line 343
    const/4 v2, 0x0

    .line 345
    .local v2, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 346
    if-nez v2, :cond_1

    .line 347
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, -0x777778

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    .local v3, "result":Landroid/graphics/drawable/Drawable;
    move-object v2, v3

    .line 358
    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "result":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v2

    .line 349
    :cond_1
    invoke-static {v2}, Lcn/nubia/deskclock/util/Utils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/deskclock/util/Utils;->drawableToBitmapWithMask(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 351
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "result":Landroid/graphics/drawable/Drawable;
    move-object v2, v3

    .end local v3    # "result":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 354
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 355
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    .end local v2    # "result":Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v2    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public static initCurrentYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 462
    sget-object v3, Lcn/nubia/deskclock/util/Utils;->object:Ljava/lang/Object;

    monitor-enter v3

    .line 463
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    .line 464
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/holiday/HolidayDate;->read(Landroid/content/Context;I)Lcn/nubia/deskclock/model/holiday/HolidayDate;

    move-result-object v0

    .line 465
    .local v0, "holidayDate":Lcn/nubia/deskclock/model/holiday/HolidayDate;
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Lcn/nubia/deskclock/model/holiday/HolidayDate;->getHolidayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 467
    .local v1, "holidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 468
    monitor-exit v3

    .line 471
    .end local v1    # "holidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 470
    :cond_0
    const/4 v2, 0x0

    sput-object v2, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    .line 471
    monitor-exit v3

    goto :goto_0

    .line 473
    .end local v0    # "holidayDate":Lcn/nubia/deskclock/model/holiday/HolidayDate;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static initNextYearHolidayMap(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    sget-object v3, Lcn/nubia/deskclock/util/Utils;->object:Ljava/lang/Object;

    monitor-enter v3

    .line 478
    :try_start_0
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/holiday/HolidayDate;->read(Landroid/content/Context;I)Lcn/nubia/deskclock/model/holiday/HolidayDate;

    move-result-object v0

    .line 479
    .local v0, "nextYearHolidayDate":Lcn/nubia/deskclock/model/holiday/HolidayDate;
    sget-object v2, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Lcn/nubia/deskclock/model/holiday/HolidayDate;->getHolidayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 481
    .local v1, "nextYearHolidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcn/nubia/deskclock/util/Utils;->chineseHolidayMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 482
    monitor-exit v3

    .line 485
    .end local v1    # "nextYearHolidayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    .line 484
    :cond_0
    monitor-exit v3

    .line 485
    const/4 v1, 0x0

    goto :goto_0

    .line 484
    .end local v0    # "nextYearHolidayDate":Lcn/nubia/deskclock/model/holiday/HolidayDate;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static initNextYearWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 518
    sget-object v3, Lcn/nubia/deskclock/util/Utils;->object:Ljava/lang/Object;

    monitor-enter v3

    .line 519
    :try_start_0
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->read(Landroid/content/Context;I)Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    move-result-object v1

    .line 520
    .local v1, "weekendWorkDate":Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    sget-object v2, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {v1}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->getWeekendWorkList()Ljava/util/ArrayList;

    move-result-object v0

    .line 522
    .local v0, "nextWeekendWorkDate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 523
    monitor-exit v3

    .line 526
    .end local v0    # "nextWeekendWorkDate":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 525
    :cond_0
    monitor-exit v3

    .line 526
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    .end local v1    # "weekendWorkDate":Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static declared-synchronized initWeekendWorkList(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 497
    const-class v3, Lcn/nubia/deskclock/util/Utils;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcn/nubia/deskclock/util/Utils;->object:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 498
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    .line 499
    invoke-static {p0, p1}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->read(Landroid/content/Context;I)Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;

    move-result-object v0

    .line 500
    .local v0, "weekendWorkDate":Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;->getWeekendWorkList()Ljava/util/ArrayList;

    move-result-object v1

    .line 502
    .local v1, "weekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 503
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    .end local v1    # "weekendWorkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    monitor-exit v3

    return-object v1

    .line 505
    :cond_0
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcn/nubia/deskclock/util/Utils;->chineseWeekendWorkMap:Ljava/util/ArrayList;

    .line 506
    monitor-exit v4

    goto :goto_0

    .line 508
    .end local v0    # "weekendWorkDate":Lcn/nubia/deskclock/model/holiday/WeekendWorkDate;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 497
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isAlarmKlaxonRunning(Landroid/content/Context;)Z
    .locals 8
    .param p0, "mCtx"    # Landroid/content/Context;

    .prologue
    .line 557
    const/4 v2, 0x0

    .line 558
    .local v2, "isRunning":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 559
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 560
    .local v4, "myList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 561
    const-string v5, "Utils"

    const-string v6, "isAlarmKlaxonRunning: no running service"

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v5, 0x0

    .line 572
    :goto_0
    return v5

    .line 564
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 565
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "mName":Ljava/lang/String;
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ServiceName =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v5, "cn.nubia.deskclock.AlarmKlaxon"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 568
    const/4 v2, 0x1

    .line 564
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    .end local v3    # "mName":Ljava/lang/String;
    :cond_2
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAlarmKlaxonRunning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v2

    .line 572
    goto :goto_0
.end method

.method public static isAllowAccessNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 717
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 718
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "isAllowAccessNetwork"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isCountdownRing(Landroid/content/Context;)Z
    .locals 8
    .param p0, "mCtx"    # Landroid/content/Context;

    .prologue
    .line 804
    const/4 v2, 0x0

    .line 805
    .local v2, "isRunning":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 806
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 807
    .local v4, "myList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 808
    const/4 v5, 0x0

    .line 817
    :goto_0
    return v5

    .line 810
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 811
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "mName":Ljava/lang/String;
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ServiceName =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v5, "cn.nubia.deskclock.CountDownRingService"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 814
    const/4 v2, 0x1

    .line 810
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "mName":Ljava/lang/String;
    :cond_2
    move v5, v2

    .line 817
    goto :goto_0
.end method

.method public static isCountdownRunning(Landroid/content/Context;)Z
    .locals 8
    .param p0, "mCtx"    # Landroid/content/Context;

    .prologue
    .line 821
    const/4 v2, 0x0

    .line 822
    .local v2, "isRunning":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 823
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v5, 0x28

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 824
    .local v4, "myList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 825
    const/4 v5, 0x0

    .line 834
    :goto_0
    return v5

    .line 827
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 828
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 829
    .local v3, "mName":Ljava/lang/String;
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ServiceName =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v5, "cn.nubia.deskclock.CountDownService"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 831
    const/4 v2, 0x1

    .line 827
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "mName":Ljava/lang/String;
    :cond_2
    move v5, v2

    .line 834
    goto :goto_0
.end method

.method public static isDirectBootmode(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1166
    const/4 v0, 0x0

    .line 1167
    .local v0, "enable":Z
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1168
    .local v2, "userManager":Landroid/os/UserManager;
    if-eqz v2, :cond_0

    .line 1170
    :try_start_0
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 1174
    :goto_0
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDirectBootmode: enable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :cond_0
    return v0

    .line 1170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1171
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "Utils"

    const-string v4, "isDirectBootmode: "

    invoke-static {v3, v4, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isFirstLaunch(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 701
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 702
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "isFirstLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isGameMode()Z
    .locals 7

    .prologue
    .line 722
    const/4 v2, 0x0

    .line 724
    .local v2, "isGameMode":Z
    :try_start_0
    const-string v5, "cn.nubia.game.GameModeHelper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 725
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 726
    .local v4, "object":Ljava/lang/Object;
    const-string v5, "IsGameModeSubNoDisturbRunning"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 727
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 731
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "object":Ljava/lang/Object;
    :goto_0
    return v2

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isGameScene(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nubia_game_scene"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 736
    .local v0, "gameScene":I
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGameScene: gameScene : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isInLiveWallpaper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "mIsInLiveWallpaper":Z
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 1040
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1041
    :goto_0
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInLiveWallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    return v0

    .line 1040
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInSuperWallaper(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1224
    const/4 v1, 0x0

    .line 1225
    .local v1, "isSupport":Z
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isSupportSuperWallpaper()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1226
    new-instance v0, Lcn/nubia/deskclock/util/DynamicWallpaperController;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/util/DynamicWallpaperController;-><init>(Landroid/content/Context;)V

    .line 1227
    .local v0, "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    invoke-virtual {v0}, Lcn/nubia/deskclock/util/DynamicWallpaperController;->getSuperWallpaperName()Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, "superWallpaperName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1229
    const/4 v1, 0x1

    .line 1232
    .end local v0    # "dr":Lcn/nubia/deskclock/util/DynamicWallpaperController;
    .end local v2    # "superWallpaperName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static isInternalVersion()Z
    .locals 4

    .prologue
    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, "isInternal":Z
    const-string v2, "sys.nubia_internal_version_flag"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    .local v1, "value":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1160
    const/4 v0, 0x1

    .line 1162
    :cond_0
    return v0
.end method

.method public static isKeyguard(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 788
    const-string v1, "keyguard"

    .line 789
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 790
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    return v1
.end method

.method public static isLOrLater()Z
    .locals 2

    .prologue
    .line 1179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1199
    const/4 v1, 0x0

    .line 1200
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz p0, :cond_0

    .line 1201
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1203
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1204
    .local v0, "locale":Ljava/util/Locale;
    if-eqz v0, :cond_1

    .line 1205
    const-string v2, "ar"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1206
    const/4 v2, 0x1

    .line 1209
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPLater()Z
    .locals 2

    .prologue
    .line 1183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreL()Z
    .locals 2

    .prologue
    .line 838
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreM()Z
    .locals 2

    .prologue
    .line 842
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreN()Z
    .locals 2

    .prologue
    .line 846
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPreO()Z
    .locals 2

    .prologue
    .line 850
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowKeyBoard(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 752
    const-string v1, "input_method"

    .line 753
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 754
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    const/4 v1, 0x1

    .line 757
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSingleReverseOpen(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 784
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

.method public static isSupportSuperWallpaper()Z
    .locals 5

    .prologue
    .line 1213
    const/4 v1, 0x0

    .line 1215
    .local v1, "supportSuperWallpaper":Z
    :try_start_0
    const-string v2, "true"

    const-string v3, "nb_super_wallpaper"

    const-string v4, "false"

    invoke-static {v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1219
    :goto_0
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isSupportSuperWallpaper : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    return v1

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSupportUI90()Z
    .locals 2

    .prologue
    .line 1265
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    .line 1266
    .local v0, "mobile_Model":Ljava/lang/String;
    const-string v1, "NX669"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX666"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX659"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX651"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1267
    :cond_0
    const/4 v1, 0x1

    .line 1269
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static needCheckPowerOffAlarmPermission()Z
    .locals 2

    .prologue
    .line 1256
    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->getMobileModel()Ljava/lang/String;

    move-result-object v0

    .line 1257
    .local v0, "mobile_Model":Ljava/lang/String;
    const-string v1, "NX629"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX639"

    .line 1258
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX659"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX651"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NX669"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcn/nubia/deskclock/util/Utils;->isPLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1259
    :cond_0
    const/4 v1, 0x1

    .line 1261
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 669
    new-instance v1, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;

    invoke-direct {v1}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;-><init>()V

    .line 670
    .local v1, "localDataOperation":Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    .line 673
    .local v2, "object":[Ljava/lang/Object;
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->FILE:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .line 674
    .local v0, "eLocalDataOptType":Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
    invoke-virtual {v1, v2, v0}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;

    move-result-object v3

    .line 675
    .local v3, "result":Ljava/lang/Object;
    return-object v3
.end method

.method public static declared-synchronized readFromPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 657
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcn/nubia/deskclock/util/Utils;

    monitor-enter v5

    :try_start_0
    new-instance v1, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;

    invoke-direct {v1}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;-><init>()V

    .line 658
    .local v1, "localDataOperation":Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .line 659
    .local v0, "eLocalDataOptType":Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
    iput-object p0, v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharedPrefFileName:Ljava/lang/String;

    .line 660
    iput-object p3, v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharePrefGetValueType:Ljava/lang/Class;

    .line 661
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    .line 664
    .local v2, "param":[Ljava/lang/Object;
    invoke-virtual {v1, v2, v0}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->getData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 665
    .local v3, "result":Ljava/lang/Object;
    monitor-exit v5

    return-object v3

    .line 657
    .end local v0    # "eLocalDataOptType":Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
    .end local v1    # "localDataOperation":Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;
    .end local v2    # "param":[Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static removeFromPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 651
    new-instance v1, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;

    invoke-direct {v1}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;-><init>()V

    .line 652
    .local v1, "localDataOperation":Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .line 653
    .local v0, "eLocalDataOptType":Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
    invoke-virtual {v1, p1, v0}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->removeData(Ljava/lang/String;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    .line 654
    return-void
.end method

.method public static removeIsFromKeyguard()V
    .locals 3

    .prologue
    .line 1066
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1067
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_from_keygurad"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1068
    return-void
.end method

.method public static declared-synchronized restoreAlarmRingDefaultIfFileNotExist(Landroid/content/Context;)V
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 530
    const-class v9, Lcn/nubia/deskclock/util/Utils;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alarm_alert"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, "uriString":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    monitor-exit v9

    return-void

    .line 535
    :cond_1
    const/4 v6, 0x0

    .line 537
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 539
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 540
    const-string v0, "Utils"

    const-string v1, "cursor not null"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 550
    :goto_1
    if-eqz v6, :cond_0

    .line 551
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 530
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "uriString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 543
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "uriString":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v0, "Utils"

    const-string v1, "cursor is null resort to default"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alarm_alert"

    const-string v2, "content://media/internal/audio/media/13"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 547
    :catch_0
    move-exception v7

    .line 548
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 550
    if-eqz v6, :cond_0

    .line 551
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 550
    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_3

    .line 551
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public static ringWhenGameRunning()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 741
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 742
    .local v1, "soundPool":Landroid/media/SoundPool;
    const-string v2, "/system/media/audio/notifications/Jingle.ogg"

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    .line 743
    .local v0, "sound":I
    new-instance v2, Lcn/nubia/deskclock/util/Utils$2;

    invoke-direct {v2, v1, v0}, Lcn/nubia/deskclock/util/Utils$2;-><init>(Landroid/media/SoundPool;I)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 749
    return-void
.end method

.method public static saveAllowAccessNetworkToSharedPref(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "AllowAccessNetwork"    # Z

    .prologue
    .line 712
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 713
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isAllowAccessNetwork"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 714
    return-void
.end method

.method public static saveFirstLaunchToSharedPref(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFirst"    # Z

    .prologue
    .line 706
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 707
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isFirstLaunch"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 708
    return-void
.end method

.method public static saveToFile(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 679
    new-instance v1, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;

    invoke-direct {v1}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;-><init>()V

    .line 680
    .local v1, "localDataOperation":Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 683
    .local v2, "object":[Ljava/lang/Object;
    sget-object v0, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->FILE:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .line 684
    .local v0, "eLocalDataOptType":Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
    invoke-virtual {v1, v2, v0}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    .line 685
    return-void
.end method

.method public static setBitmapBaColor(Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I

    .prologue
    .line 386
    return-void
.end method

.method public static setDarkStatusIcon(Landroid/app/Activity;Z)V
    .locals 4
    .param p0, "ac"    # Landroid/app/Activity;
    .param p1, "bDark"    # Z

    .prologue
    .line 217
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 221
    .local v1, "vis":I
    if-eqz p1, :cond_1

    .line 222
    or-int/lit16 v1, v1, 0x2000

    .line 226
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 229
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "vis":I
    :cond_0
    return-void

    .line 224
    .restart local v0    # "decorView":Landroid/view/View;
    .restart local v1    # "vis":I
    :cond_1
    and-int/lit16 v1, v1, -0x2001

    goto :goto_0
.end method

.method public static setFullScreenActivityStatusBar(Landroid/app/Activity;)V
    .locals 4
    .param p0, "ac"    # Landroid/app/Activity;

    .prologue
    const/high16 v3, -0x80000000

    .line 242
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 244
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x1706

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 251
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 256
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method public static setIsFromKeygurad(Z)V
    .locals 3
    .param p0, "isFromKeygruad"    # Z

    .prologue
    .line 1057
    invoke-static {}, Lcn/nubia/deskclock/DeskClockApplication;->getInstance()Lcn/nubia/deskclock/DeskClockApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/deskclock/DeskClockApplication;->getDefaultSharedPref()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1058
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_from_keygurad"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1059
    return-void
.end method

.method public static updateForceTouch(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 689
    const-class v1, Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-static {}, Lcn/nubia/deskclock/util/ThreadPool;->getInstance()Lcn/nubia/deskclock/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcn/nubia/deskclock/util/Utils$1;

    invoke-direct {v2, p1, p2, p0, p3}, Lcn/nubia/deskclock/util/Utils$1;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcn/nubia/deskclock/util/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method

.method public static updateForceTouchlabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "labelResName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 610
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 611
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "packageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v2, "className"

    const-class v3, Lcn/nubia/deskclock/DeskClock;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v2, "forcetouch_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const-string v2, "forcetouch_lable_res_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v2, "forcetouch_action"

    const-string v3, "update"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v2, "forcetouch_intent"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 618
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/nubia/deskclock/util/Utils;->mUri:Landroid/net/Uri;

    const-string v4, "forceTouchShortcut"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateWeekSelectAllDayView(Landroid/content/Context;[Z)Ljava/lang/String;
    .locals 10
    .param p0, "mCtx"    # Landroid/content/Context;
    .param p1, "mSelectedDayIndex"    # [Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x5

    .line 286
    const-string v4, ""

    .line 287
    .local v4, "mStr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "mDay":I
    const/4 v5, 0x0

    .line 288
    .local v5, "mWork":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "mAlarmRepeatWeek":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_1

    .line 290
    aget-boolean v6, p1, v0

    if-ne v6, v9, :cond_0

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    add-int/lit8 v2, v2, 0x1

    .line 293
    if-ge v0, v8, :cond_0

    .line 294
    add-int/lit8 v5, v5, 0x1

    .line 289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "mRepeatType":[Ljava/lang/String;
    if-ne v5, v8, :cond_3

    if-ne v2, v8, :cond_3

    .line 300
    aget-object v4, v3, v9

    .line 310
    .end local v4    # "mStr":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v4

    .line 301
    .restart local v4    # "mStr":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x7

    if-ne v2, v6, :cond_4

    .line 302
    const/4 v6, 0x3

    aget-object v4, v3, v6

    goto :goto_1

    .line 303
    :cond_4
    if-nez v2, :cond_5

    .line 304
    const/4 v6, 0x0

    aget-object v4, v3, v6

    goto :goto_1

    .line 305
    :cond_5
    if-ne v5, v2, :cond_6

    if-eq v2, v8, :cond_2

    .line 307
    :cond_6
    if-nez v5, :cond_2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    goto :goto_1
.end method

.method public static updateWeekSelectView(Landroid/content/Context;[Z)Ljava/lang/String;
    .locals 10
    .param p0, "mCtx"    # Landroid/content/Context;
    .param p1, "mSelectedDayIndex"    # [Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x5

    .line 259
    const-string v4, ""

    .line 260
    .local v4, "mStr":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "mDay":I
    const/4 v5, 0x0

    .line 261
    .local v5, "mWork":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "mAlarmRepeatWeek":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_1

    .line 263
    aget-boolean v6, p1, v0

    if-ne v6, v9, :cond_0

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 265
    add-int/lit8 v2, v2, 0x1

    .line 266
    if-ge v0, v8, :cond_0

    .line 267
    add-int/lit8 v5, v5, 0x1

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "mRepeatType":[Ljava/lang/String;
    const/4 v6, 0x7

    if-ne v2, v6, :cond_3

    .line 273
    const/4 v6, 0x3

    aget-object v4, v3, v6

    .line 281
    .end local v4    # "mStr":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v4

    .line 274
    .restart local v4    # "mStr":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_4

    .line 275
    const/4 v6, 0x0

    aget-object v4, v3, v6

    goto :goto_1

    .line 276
    :cond_4
    if-ne v5, v2, :cond_5

    if-ne v2, v8, :cond_5

    .line 277
    aget-object v4, v3, v9

    goto :goto_1

    .line 278
    :cond_5
    if-nez v5, :cond_2

    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static updateYearHoliday(Landroid/content/Context;I)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateType"    # I

    .prologue
    .line 862
    const/4 v11, 0x0

    .line 864
    .local v11, "isUpdate":Z
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 865
    .local v4, "calendar":Ljava/util/Calendar;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 866
    .local v9, "current_year":I
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    add-int/lit8 v8, v18, 0x1

    .line 867
    .local v8, "current_month":I
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 868
    .local v5, "current_day":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 869
    .local v6, "currentTime":J
    packed-switch p1, :pswitch_data_0

    .line 915
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v5    # "current_day":I
    .end local v6    # "currentTime":J
    .end local v8    # "current_month":I
    .end local v9    # "current_year":I
    :cond_0
    :goto_0
    return v11

    .line 871
    .restart local v4    # "calendar":Ljava/util/Calendar;
    .restart local v5    # "current_day":I
    .restart local v6    # "currentTime":J
    .restart local v8    # "current_month":I
    .restart local v9    # "current_year":I
    :pswitch_0
    const-string v18, "update_time"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "last_update_current_year_holiday_time"

    const-wide/16 v20, -0x1

    invoke-interface/range {v18 .. v21}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 873
    .local v12, "lastUpdateCurrentYearHolidayTime":J
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v8, v0, :cond_1

    const/16 v18, 0xb

    move/from16 v0, v18

    if-gt v8, v0, :cond_1

    .line 874
    sub-long v18, v6, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0xf731400

    cmp-long v18, v18, v20

    if-ltz v18, :cond_0

    .line 875
    const/4 v11, 0x1

    goto :goto_0

    .line 878
    :cond_1
    sub-long v18, v6, v12

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    cmp-long v18, v18, v20

    if-ltz v18, :cond_0

    .line 879
    const/4 v11, 0x1

    goto :goto_0

    .line 884
    .end local v12    # "lastUpdateCurrentYearHolidayTime":J
    :pswitch_1
    const-string v18, "update_time"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "last_update_next_year_holiday_time"

    const-wide/16 v20, -0x1

    invoke-interface/range {v18 .. v21}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 886
    .local v16, "lastUpdateNextYearHolidayTime":J
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v8, v0, :cond_2

    const/16 v18, 0xb

    move/from16 v0, v18

    if-gt v8, v0, :cond_2

    .line 887
    sub-long v18, v6, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0xf731400

    cmp-long v18, v18, v20

    if-ltz v18, :cond_0

    .line 888
    const/4 v11, 0x1

    goto :goto_0

    .line 891
    :cond_2
    sub-long v18, v6, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    cmp-long v18, v18, v20

    if-ltz v18, :cond_0

    .line 892
    const/4 v11, 0x1

    goto :goto_0

    .line 897
    .end local v16    # "lastUpdateNextYearHolidayTime":J
    :pswitch_2
    const-string v18, "update_time"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "last_update_current_year_weekend_work_time"

    const-wide/16 v20, -0x1

    invoke-interface/range {v18 .. v21}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 899
    .local v14, "lastUpdateCurrentYearWeekendWorkTime":J
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v8, v0, :cond_3

    const/16 v18, 0xb

    move/from16 v0, v18

    if-gt v8, v0, :cond_3

    .line 900
    sub-long v18, v6, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    move-result-wide v18

    const-wide/32 v20, 0xf731400

    cmp-long v18, v18, v20

    if-ltz v18, :cond_0

    .line 901
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 904
    :cond_3
    sub-long v18, v6, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v18

    const-wide/32 v20, 0x5265c00

    cmp-long v18, v18, v20

    if-ltz v18, :cond_0

    .line 905
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 912
    .end local v4    # "calendar":Ljava/util/Calendar;
    .end local v5    # "current_day":I
    .end local v6    # "currentTime":J
    .end local v8    # "current_month":I
    .end local v9    # "current_year":I
    .end local v14    # "lastUpdateCurrentYearWeekendWorkTime":J
    :catch_0
    move-exception v10

    .line 913
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static uriToFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 147
    move-object v7, p1

    .line 148
    .local v7, "str":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 149
    const-string v0, "content://media/external"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const/4 v6, 0x0

    .line 152
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    if-eqz v6, :cond_0

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 163
    :cond_0
    if-eqz v6, :cond_1

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 169
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uriToFilePath uri is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", str is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v7

    .line 160
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 163
    if-eqz v6, :cond_1

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_2
    throw v0
.end method

.method public static writeToPref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 641
    new-instance v2, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;

    invoke-direct {v2}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;-><init>()V

    .line 642
    .local v2, "localDataOperation":Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;
    sget-object v1, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->SHAREDPREF:Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;

    .line 643
    .local v1, "eLocalDataOptType":Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;
    iput-object p0, v1, Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;->sharedPrefFileName:Ljava/lang/String;

    .line 644
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    const/4 v3, 0x1

    aput-object p2, v0, v3

    .line 647
    .local v0, "data":[Ljava/lang/Object;
    invoke-virtual {v2, v0, v1}, Lcn/nubia/deskclock/model/localDataOpt/LocalDataOperation;->saveData([Ljava/lang/Object;Lcn/nubia/deskclock/model/localDataOpt/enmus/ELocalDataOptType;)V

    .line 648
    return-void
.end method
