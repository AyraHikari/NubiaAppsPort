.class public Lcn/nubia/deskclock/util/AlarmUtils;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# static fields
.field public static mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatAddAlarmClockText(Landroid/content/Context;J)Ljava/lang/String;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v8, p1, v22

    .line 108
    .local v8, "delta":J
    const-wide/32 v22, 0x36ee80

    div-long v14, v8, v22

    .line 109
    .local v14, "hours":J
    const-wide/32 v22, 0xea60

    div-long v22, v8, v22

    const-wide/16 v24, 0x3c

    rem-long v18, v22, v24

    .line 110
    .local v18, "minutes":J
    const-wide/16 v22, 0x18

    div-long v6, v14, v22

    .line 111
    .local v6, "days":J
    const-wide/16 v22, 0x3e8

    div-long v22, v8, v22

    const-wide/16 v24, 0x3c

    rem-long v20, v22, v24

    .line 112
    .local v20, "seconds":J
    const-wide/16 v22, 0x18

    rem-long v14, v14, v22

    .line 114
    const-wide/32 v22, 0xea60

    cmp-long v22, v8, v22

    if-lez v22, :cond_0

    const-wide/16 v22, 0x1e

    cmp-long v22, v20, v22

    if-ltz v22, :cond_0

    .line 115
    const-wide/16 v22, 0x1

    add-long v18, v18, v22

    .line 116
    const-wide/16 v22, 0x3c

    cmp-long v22, v18, v22

    if-nez v22, :cond_0

    .line 117
    const-wide/16 v18, 0x0

    .line 118
    const-wide/16 v22, 0x1

    add-long v14, v14, v22

    .line 119
    const-wide/16 v22, 0x18

    cmp-long v22, v14, v22

    if-nez v22, :cond_0

    .line 120
    const-wide/16 v14, 0x0

    .line 121
    const-wide/16 v22, 0x1

    add-long v6, v6, v22

    .line 126
    :cond_0
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-nez v22, :cond_1

    const-string v4, ""

    .line 130
    .local v4, "daySeq":Ljava/lang/String;
    :goto_0
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-nez v22, :cond_3

    const-string v17, ""

    .line 134
    .local v17, "minSeq":Ljava/lang/String;
    :goto_1
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-nez v22, :cond_5

    const-string v13, ""

    .line 138
    .local v13, "hourSeq":Ljava/lang/String;
    :goto_2
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-lez v22, :cond_7

    const/4 v5, 0x1

    .line 139
    .local v5, "dispDays":Z
    :goto_3
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-lez v22, :cond_8

    const/4 v10, 0x1

    .line 140
    .local v10, "dispHour":Z
    :goto_4
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-lez v22, :cond_9

    const/4 v11, 0x1

    .line 142
    .local v11, "dispMinute":Z
    :goto_5
    if-eqz v5, :cond_a

    const/16 v22, 0x1

    move/from16 v23, v22

    :goto_6
    if-eqz v10, :cond_b

    const/16 v22, 0x2

    :goto_7
    or-int v23, v23, v22

    if-eqz v11, :cond_c

    const/16 v22, 0x4

    :goto_8
    or-int v16, v23, v22

    .line 145
    .local v16, "index":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f0b0000

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "formats":[Ljava/lang/String;
    aget-object v22, v12, v16

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v17, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    return-object v22

    .line 126
    .end local v4    # "daySeq":Ljava/lang/String;
    .end local v5    # "dispDays":Z
    .end local v10    # "dispHour":Z
    .end local v11    # "dispMinute":Z
    .end local v12    # "formats":[Ljava/lang/String;
    .end local v13    # "hourSeq":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v17    # "minSeq":Ljava/lang/String;
    :cond_1
    const-wide/16 v22, 0x1

    cmp-long v22, v6, v22

    if-nez v22, :cond_2

    const v22, 0x7f0d0055

    .line 127
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const v22, 0x7f0d0057

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 128
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 127
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 130
    .restart local v4    # "daySeq":Ljava/lang/String;
    :cond_3
    const-wide/16 v22, 0x1

    cmp-long v22, v18, v22

    if-nez v22, :cond_4

    const v22, 0x7f0d0070

    .line 131
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_4
    const v22, 0x7f0d0072

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 132
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 131
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 134
    .restart local v17    # "minSeq":Ljava/lang/String;
    :cond_5
    const-wide/16 v22, 0x1

    cmp-long v22, v14, v22

    if-nez v22, :cond_6

    const v22, 0x7f0d0068

    .line 135
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_6
    const v22, 0x7f0d006a

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 136
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 135
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 138
    .restart local v13    # "hourSeq":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 139
    .restart local v5    # "dispDays":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 140
    .restart local v10    # "dispHour":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 142
    .restart local v11    # "dispMinute":Z
    :cond_a
    const/16 v22, 0x0

    move/from16 v23, v22

    goto/16 :goto_6

    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_7

    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_8
.end method

.method public static formatCloseRecent(Landroid/content/Context;J)Ljava/lang/String;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v4, p1, v20

    .line 152
    .local v4, "delta":J
    const-wide/32 v20, 0x36ee80

    div-long v10, v4, v20

    .line 153
    .local v10, "hours":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 154
    .local v2, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 155
    const/16 v19, 0xb

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move/from16 v0, v19

    int-to-long v8, v0

    .line 156
    .local v8, "hourday":J
    add-long v20, v8, v10

    const-wide/16 v22, 0x18

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v3, v0

    .line 158
    .local v3, "days":I
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    .line 159
    .local v15, "todayDate":Ljava/util/Date;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const v19, 0x7f0d0033

    .line 160
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 161
    .local v12, "sd":Ljava/text/SimpleDateFormat;
    invoke-virtual {v12, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 163
    .local v14, "today":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 164
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0d00bd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0d0035

    .line 165
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 178
    :goto_0
    return-object v19

    .line 166
    :cond_0
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_1

    .line 167
    const/16 v19, 0x5

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 168
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    .line 169
    .local v17, "tomorrowDate":Ljava/util/Date;
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 170
    .local v16, "tomorrow":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0d00bd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0d0036

    .line 171
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 173
    .end local v16    # "tomorrow":Ljava/lang/String;
    .end local v17    # "tomorrowDate":Ljava/util/Date;
    :cond_1
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Ljava/util/Calendar;->add(II)V

    .line 174
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 175
    .local v7, "fewDaysLaterDate":Ljava/util/Date;
    invoke-virtual {v12, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, "fewDaysLater":Ljava/lang/String;
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v19, "EEEE"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    .local v13, "sd1":Ljava/text/SimpleDateFormat;
    invoke-virtual {v13, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 178
    .local v18, "week":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0d00bd

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f0d0032

    .line 179
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_0
.end method

.method public static formatToast(Landroid/content/Context;J)Ljava/lang/String;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v8, p1, v22

    .line 63
    .local v8, "delta":J
    const-wide/32 v22, 0x36ee80

    div-long v14, v8, v22

    .line 64
    .local v14, "hours":J
    const-wide/32 v22, 0xea60

    div-long v22, v8, v22

    const-wide/16 v24, 0x3c

    rem-long v18, v22, v24

    .line 65
    .local v18, "minutes":J
    const-wide/16 v22, 0x18

    div-long v6, v14, v22

    .line 66
    .local v6, "days":J
    const-wide/16 v22, 0x3e8

    div-long v22, v8, v22

    const-wide/16 v24, 0x3c

    rem-long v20, v22, v24

    .line 67
    .local v20, "seconds":J
    const-wide/16 v22, 0x18

    rem-long v14, v14, v22

    .line 69
    const-wide/32 v22, 0xea60

    cmp-long v22, v8, v22

    if-lez v22, :cond_0

    const-wide/16 v22, 0x1e

    cmp-long v22, v20, v22

    if-ltz v22, :cond_0

    .line 70
    const-wide/16 v22, 0x1

    add-long v18, v18, v22

    .line 71
    const-wide/16 v22, 0x3c

    cmp-long v22, v18, v22

    if-nez v22, :cond_0

    .line 72
    const-wide/16 v18, 0x0

    .line 73
    const-wide/16 v22, 0x1

    add-long v14, v14, v22

    .line 74
    const-wide/16 v22, 0x18

    cmp-long v22, v14, v22

    if-nez v22, :cond_0

    .line 75
    const-wide/16 v14, 0x0

    .line 76
    const-wide/16 v22, 0x1

    add-long v6, v6, v22

    .line 81
    :cond_0
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-nez v22, :cond_1

    const-string v4, ""

    .line 85
    .local v4, "daySeq":Ljava/lang/String;
    :goto_0
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-nez v22, :cond_3

    const-string v17, ""

    .line 89
    .local v17, "minSeq":Ljava/lang/String;
    :goto_1
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-nez v22, :cond_5

    const-string v13, ""

    .line 93
    .local v13, "hourSeq":Ljava/lang/String;
    :goto_2
    const-wide/16 v22, 0x0

    cmp-long v22, v6, v22

    if-lez v22, :cond_7

    const/4 v5, 0x1

    .line 94
    .local v5, "dispDays":Z
    :goto_3
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-lez v22, :cond_8

    const/4 v10, 0x1

    .line 95
    .local v10, "dispHour":Z
    :goto_4
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-lez v22, :cond_9

    const/4 v11, 0x1

    .line 97
    .local v11, "dispMinute":Z
    :goto_5
    if-eqz v5, :cond_a

    const/16 v22, 0x1

    move/from16 v23, v22

    :goto_6
    if-eqz v10, :cond_b

    const/16 v22, 0x2

    :goto_7
    or-int v23, v23, v22

    if-eqz v11, :cond_c

    const/16 v22, 0x4

    :goto_8
    or-int v16, v23, v22

    .line 100
    .local v16, "index":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0b0002

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 102
    .local v12, "formats":[Ljava/lang/String;
    aget-object v22, v12, v16

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v17, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    return-object v22

    .line 81
    .end local v4    # "daySeq":Ljava/lang/String;
    .end local v5    # "dispDays":Z
    .end local v10    # "dispHour":Z
    .end local v11    # "dispMinute":Z
    .end local v12    # "formats":[Ljava/lang/String;
    .end local v13    # "hourSeq":Ljava/lang/String;
    .end local v16    # "index":I
    .end local v17    # "minSeq":Ljava/lang/String;
    :cond_1
    const-wide/16 v22, 0x1

    cmp-long v22, v6, v22

    if-nez v22, :cond_2

    const v22, 0x7f0d0055

    .line 82
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const v22, 0x7f0d0057

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 83
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 82
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 85
    .restart local v4    # "daySeq":Ljava/lang/String;
    :cond_3
    const-wide/16 v22, 0x1

    cmp-long v22, v18, v22

    if-nez v22, :cond_4

    const v22, 0x7f0d0070

    .line 86
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_4
    const v22, 0x7f0d0072

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 87
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 86
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 89
    .restart local v17    # "minSeq":Ljava/lang/String;
    :cond_5
    const-wide/16 v22, 0x1

    cmp-long v22, v14, v22

    if-nez v22, :cond_6

    const v22, 0x7f0d0068

    .line 90
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_6
    const v22, 0x7f0d006a

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 91
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 90
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 93
    .restart local v13    # "hourSeq":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 94
    .restart local v5    # "dispDays":Z
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 95
    .restart local v10    # "dispHour":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 97
    .restart local v11    # "dispMinute":Z
    :cond_a
    const/16 v22, 0x0

    move/from16 v23, v22

    goto/16 :goto_6

    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_7

    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_8
.end method

.method public static getNextAlarmText(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;IZ)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "daysOfWeek"    # Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .param p4, "id"    # I
    .param p5, "isHoliday"    # Z

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3, p5}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 57
    .local v2, "timeInMillis":J
    invoke-static {p0, v2, v3}, Lcn/nubia/deskclock/util/AlarmUtils;->formatCloseRecent(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "text":Ljava/lang/String;
    return-object v0
.end method

.method public static isAlarmWithin24Hours(Lcn/nubia/deskclock/model/Alarm;Landroid/content/Context;)Z
    .locals 8
    .param p0, "alarmInstance"    # Lcn/nubia/deskclock/model/Alarm;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    .local v0, "nextAlarmTime":Ljava/util/Calendar;
    iget-wide v4, p0, Lcn/nubia/deskclock/model/Alarm;->time:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 188
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 189
    .local v2, "nextAlarmTimeMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static popAlarmSetToast(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;IZ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "daysOfWeek"    # Lcn/nubia/deskclock/model/Alarm$DaysOfWeek;
    .param p4, "id"    # I
    .param p5, "isHoliday"    # Z

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p3, p5}, Lcn/nubia/deskclock/model/Alarms;->calculateAlarm(Landroid/content/Context;IILcn/nubia/deskclock/model/Alarm$DaysOfWeek;Z)Ljava/util/Calendar;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 50
    .local v0, "timeInMillis":J
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcn/nubia/deskclock/util/AlarmUtils;->popAlarmSetToast(Landroid/content/Context;J)V

    .line 51
    return-void
.end method

.method public static popAlarmSetToast(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeInMillis"    # J

    .prologue
    .line 37
    invoke-static {p0, p1, p2}, Lcn/nubia/deskclock/util/AlarmUtils;->formatToast(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "toastText":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 39
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 40
    return-void
.end method

.method public static setCurrentAlertAlarm(Lcn/nubia/deskclock/model/Alarm;)V
    .locals 0
    .param p0, "alertAlarm"    # Lcn/nubia/deskclock/model/Alarm;

    .prologue
    .line 193
    sput-object p0, Lcn/nubia/deskclock/util/AlarmUtils;->mCurrentAlertAlarm:Lcn/nubia/deskclock/model/Alarm;

    .line 194
    return-void
.end method
