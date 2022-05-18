.class public Lcn/nubia/calendar/util/EventRecurrenceFormatter;
.super Ljava/lang/Object;
.source "EventRecurrenceFormatter.java"


# static fields
.field static days:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x14

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 37
    invoke-static {v4, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 39
    invoke-static {v5, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 41
    invoke-static {v6, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 43
    invoke-static {v7, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x5

    .line 45
    invoke-static {v1, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    .line 47
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    .line 49
    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->days:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dayToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "day"    # I

    .prologue
    .line 248
    invoke-static {p0}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->dayToUtilDay(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dayToUtilDay(I)I
    .locals 3
    .param p0, "day"    # I

    .prologue
    .line 260
    sparse-switch p0, :sswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :sswitch_0
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    .line 264
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 266
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 268
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 270
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 272
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 274
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getBirthdayRepeatString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # J

    .prologue
    .line 81
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    .line 82
    const/4 v4, 0x0

    .line 89
    :goto_0
    return-object v4

    .line 84
    :cond_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 85
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 86
    new-instance v0, Lcn/nubia/calendar/util/ChineseCalendar;

    invoke-direct {v0, p0, v3}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;Landroid/text/format/Time;)V

    .line 87
    .local v0, "chineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0169

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "formatStr":Ljava/lang/String;
    invoke-virtual {v0}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseMonthAndDay()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "chineseMonthDay":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getLunarRepeatString(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rdate"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .prologue
    .line 55
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 56
    .local v11, "time":Landroid/text/format/Time;
    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 58
    .local v10, "resource":Landroid/content/res/Resources;
    new-instance v2, Lcn/nubia/calendar/util/ChineseCalendar;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Lcn/nubia/calendar/util/ChineseCalendar;-><init>(Landroid/content/Context;Landroid/text/format/Time;)V

    .line 59
    .local v2, "chineseCalendar":Lcn/nubia/calendar/util/ChineseCalendar;
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->isPerMonthLunarEvent(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 60
    const v12, 0x7f0c0182

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, "format":Ljava/lang/String;
    invoke-virtual {v2}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseDate()I

    move-result v9

    .line 62
    .local v9, "lunarDay":I
    const v12, 0x7f0a0024

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "dayNames":[Ljava/lang/String;
    const v12, 0x7f0c00ef

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "chu":Ljava/lang/String;
    const/4 v5, 0x0

    .line 65
    .local v5, "day":Ljava/lang/String;
    const/16 v12, 0xa

    if-gt v9, v12, :cond_0

    const/4 v12, 0x1

    if-lt v9, v12, :cond_0

    .line 66
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v9, -0x1

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    :goto_0
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-static {v7, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 77
    .end local v4    # "chu":Ljava/lang/String;
    .end local v5    # "day":Ljava/lang/String;
    .end local v6    # "dayNames":[Ljava/lang/String;
    .end local v7    # "format":Ljava/lang/String;
    .end local v9    # "lunarDay":I
    :goto_1
    return-object v12

    .line 68
    .restart local v4    # "chu":Ljava/lang/String;
    .restart local v5    # "day":Ljava/lang/String;
    .restart local v6    # "dayNames":[Ljava/lang/String;
    .restart local v7    # "format":Ljava/lang/String;
    .restart local v9    # "lunarDay":I
    :cond_0
    add-int/lit8 v12, v9, -0x1

    aget-object v5, v6, v12

    goto :goto_0

    .line 71
    .end local v4    # "chu":Ljava/lang/String;
    .end local v5    # "day":Ljava/lang/String;
    .end local v6    # "dayNames":[Ljava/lang/String;
    .end local v7    # "format":Ljava/lang/String;
    .end local v9    # "lunarDay":I
    :cond_1
    invoke-static/range {p1 .. p1}, Lcn/nubia/calendar/submodule_agenda/view/EventViewUtils;->isPerYearLunarEvent(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 72
    const v12, 0x7f0c0169

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "formatStr":Ljava/lang/String;
    const-string v12, "huangdi"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "formatStr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v2}, Lcn/nubia/calendar/util/ChineseCalendar;->getChineseMonthAndDay()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "chineseMonthDay":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v8, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 77
    .end local v3    # "chineseMonthDay":Ljava/lang/String;
    .end local v8    # "formatStr":Ljava/lang/String;
    :cond_2
    const-string v12, ""

    goto :goto_1
.end method

.method public static getRepeatString(Landroid/content/res/Resources;Lcn/nubia/calendarcommon2/EventRecurrence;)Ljava/lang/String;
    .locals 12
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "recurrence"    # Lcn/nubia/calendarcommon2/EventRecurrence;

    .prologue
    const v11, 0x7f0c0167

    const v10, 0x7f0c00a1

    const v9, 0x7f0c0055

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 180
    new-instance v5, Ljava/text/SimpleDateFormat;

    const v6, 0x7f0c0214

    .line 181
    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 182
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    iget v6, p1, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v6, :pswitch_data_0

    .line 237
    const/4 v6, 0x0

    :goto_0
    return-object v6

    .line 184
    :pswitch_0
    const v6, 0x7f0c0024

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 186
    :pswitch_1
    invoke-virtual {p1}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    const v6, 0x7f0c0043

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 189
    :cond_0
    const v6, 0x7f0c009c

    invoke-virtual {p0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "format":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v2, "days":Ljava/lang/StringBuilder;
    iget v6, p1, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    add-int/lit8 v0, v6, -0x1

    .line 197
    .local v0, "count":I
    if-ltz v0, :cond_2

    .line 198
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 199
    iget-object v6, p1, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    aget v6, v6, v4

    invoke-static {v6}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 202
    :cond_1
    iget-object v6, p1, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    aget v6, v6, v0

    invoke-static {v6}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 211
    .end local v4    # "i":I
    :cond_2
    iget-object v6, p1, Lcn/nubia/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v6, :cond_3

    .line 212
    const/4 v6, 0x0

    goto :goto_0

    .line 215
    :cond_3
    iget-object v6, p1, Lcn/nubia/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v6, v6, Landroid/text/format/Time;->weekDay:I

    .line 216
    invoke-static {v6}, Lcn/nubia/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v1

    .line 217
    .local v1, "day":I
    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 222
    .end local v0    # "count":I
    .end local v1    # "day":I
    .end local v2    # "days":Ljava/lang/StringBuilder;
    .end local v3    # "format":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p1}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsMonthlyOnLunarDayCount()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 224
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 225
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsMonthlyOnLunarYearCount()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 227
    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 231
    :cond_5
    invoke-virtual {p0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 234
    :pswitch_3
    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getRepeatString(Landroid/content/res/Resources;Lcn/nubia/calendarcommon2/EventRecurrence;Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "recurrence"    # Lcn/nubia/calendarcommon2/EventRecurrence;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v10, Ljava/text/SimpleDateFormat;

    const v11, 0x7f0c0214

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p1

    iget v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->freq:I

    packed-switch v11, :pswitch_data_0

    .line 175
    const/4 v7, 0x0

    :cond_0
    :goto_0
    return-object v7

    .line 98
    :pswitch_0
    const v11, 0x7f0c0024

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 100
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 101
    const v11, 0x7f0c0043

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 103
    :cond_1
    const v11, 0x7f0c009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "format":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v5, "days":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    add-int/lit8 v2, v11, -0x1

    .line 111
    .local v2, "count":I
    if-ltz v2, :cond_3

    .line 112
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_2

    .line 113
    move-object/from16 v0, p1

    iget-object v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    aget v11, v11, v8

    invoke-static {v11}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 116
    :cond_2
    move-object/from16 v0, p1

    iget-object v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->byday:[I

    aget v11, v11, v2

    invoke-static {v11}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 125
    .end local v8    # "i":I
    :cond_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v11, :cond_4

    .line 126
    const/4 v7, 0x0

    goto :goto_0

    .line 129
    :cond_4
    move-object/from16 v0, p1

    iget-object v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->weekDay:I

    .line 130
    invoke-static {v11}, Lcn/nubia/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v3

    .line 131
    .local v3, "day":I
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->dayToString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 136
    .end local v2    # "count":I
    .end local v3    # "day":I
    .end local v5    # "days":Ljava/lang/StringBuilder;
    .end local v7    # "format":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsMonthlyOnLunarDayCount()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 137
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f0c0167

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v14, 0x7f0c0055

    .line 138
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 139
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/calendarcommon2/EventRecurrence;->repeatsMonthlyOnLunarYearCount()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 140
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f0c0167

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v14, 0x7f0c00a1

    .line 141
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 144
    :cond_6
    const v11, 0x7f0c0055

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 145
    .restart local v7    # "format":Ljava/lang/String;
    const v11, 0x7f0a0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, "ordinals":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bydayCount:I

    if-lez v11, :cond_7

    .line 147
    move-object/from16 v0, p1

    iget-object v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v11, v11, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v4, v11, 0x7

    .line 148
    .local v4, "dayNumber":I
    const v11, 0x7f0c0057

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 149
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v15, v9, v4

    aput-object v15, v11, v14

    const/4 v14, 0x1

    sget-object v15, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->days:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    aput-object v15, v11, v14

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 152
    .end local v4    # "dayNumber":I
    :cond_7
    move-object/from16 v0, p1

    iget v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    if-lez v11, :cond_0

    .line 153
    const v11, 0x7f0c0056

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 154
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget v15, v15, Landroid/text/format/Time;->monthDay:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 164
    .end local v7    # "format":Ljava/lang/String;
    .end local v9    # "ordinals":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Lcn/nubia/calendarcommon2/EventRecurrence;->startDate:Landroid/text/format/Time;

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 165
    .local v12, "when":J
    const v11, 0x7f0c00a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 166
    .restart local v7    # "format":Ljava/lang/String;
    const/4 v6, 0x0

    .line 167
    .local v6, "flags":I
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 168
    or-int/lit16 v6, v6, 0x80

    .line 170
    :cond_8
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 171
    move-object/from16 v0, p2

    invoke-static {v0, v12, v13, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    .line 170
    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 172
    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
