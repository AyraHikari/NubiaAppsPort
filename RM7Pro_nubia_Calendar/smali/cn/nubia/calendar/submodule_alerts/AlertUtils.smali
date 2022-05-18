.class public Lcn/nubia/calendar/submodule_alerts/AlertUtils;
.super Ljava/lang/Object;
.source "AlertUtils.java"


# static fields
.field public static final EVENT_END_KEY:Ljava/lang/String; = "eventend"

.field public static final EVENT_IDS_KEY:Ljava/lang/String; = "eventids"

.field public static final EVENT_ID_KEY:Ljava/lang/String; = "eventid"

.field public static final EVENT_START_KEY:Ljava/lang/String; = "eventstart"

.field public static final EXPIRED_GROUP_NOTIFICATION_ID:I = 0x0

.field public static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "notificationid"

.field public static final SHOW_EVENT_KEY:Ljava/lang/String; = "showevent"

.field public static final SNOOZE_DELAY:J = 0x493e0L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEventViewIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;
    .locals 5
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "eventId"    # J
    .param p3, "begin"    # J
    .param p5, "end"    # J

    .prologue
    .line 267
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v1, "i":Landroid/content/Intent;
    sget-object v2, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 269
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "events/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 270
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 271
    const-class v2, Lcn/nubia/calendar/EventInfoActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 272
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 273
    const-string v2, "endTime"

    invoke-virtual {v1, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 274
    return-object v1
.end method

.method static formatTime(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "allDay"    # Z

    .prologue
    const/4 v11, 0x0

    .line 222
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, "tz":Ljava/lang/String;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 224
    .local v8, "time":Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/text/format/Time;->setToNow()V

    .line 225
    invoke-virtual {v8, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 226
    .local v9, "today":I
    invoke-virtual {v8, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 227
    invoke-virtual {v8, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 229
    .local v0, "eventDay":I
    const/high16 v6, 0x80000

    .line 230
    .local v6, "flags":I
    if-nez p3, :cond_3

    .line 231
    or-int/lit8 v6, v6, 0x1

    .line 232
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    or-int/lit16 v6, v6, 0x80

    .line 239
    :cond_0
    :goto_0
    if-lt v0, v9, :cond_1

    add-int/lit8 v1, v9, 0x1

    if-le v0, v1, :cond_2

    .line 240
    :cond_1
    or-int/lit8 v6, v6, 0x10

    .line 243
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v1 .. v6}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 236
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    or-int/lit16 v6, v6, 0x2000

    goto :goto_0
.end method

.method static formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "allDay"    # Z
    .param p4, "location"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    .line 121
    .local v12, "tz":Ljava/lang/String;
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 122
    .local v10, "time":Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 124
    .local v11, "today":I
    invoke-virtual {v10, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, v10, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 127
    .local v0, "eventDay":I
    const/high16 v6, 0x80000

    .line 128
    .local v6, "flags":I
    if-nez p3, :cond_6

    .line 129
    or-int/lit8 v6, v6, 0x1

    .line 130
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    or-int/lit16 v6, v6, 0x80

    .line 137
    :cond_0
    :goto_0
    if-lt v0, v11, :cond_1

    add-int/lit8 v1, v11, 0x1

    if-le v0, v1, :cond_2

    .line 138
    :cond_1
    or-int/lit8 v6, v6, 0x10

    .line 141
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    invoke-static/range {v1 .. v6}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .local v9, "sb":Ljava/lang/StringBuilder;
    if-nez p3, :cond_3

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    if-eq v12, v1, :cond_3

    .line 146
    invoke-virtual {v10, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 147
    iget v1, v10, Landroid/text/format/Time;->isDst:I

    if-eqz v1, :cond_7

    const/4 v7, 0x1

    .line 148
    .local v7, "isDST":Z
    :goto_1
    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 149
    invoke-virtual {v2, v7, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v7    # "isDST":Z
    :cond_3
    add-int/lit8 v1, v11, 0x1

    if-ne v0, v1, :cond_4

    .line 155
    const-string v1, ", "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const v1, 0x7f0c0096

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .local v8, "loc":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 161
    const-string v1, ", "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .end local v8    # "loc":Ljava/lang/String;
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 134
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    or-int/lit16 v6, v6, 0x2000

    goto :goto_0

    .line 147
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    const/4 v7, 0x0

    goto :goto_1
.end method

.method static formatTimeLocation(Landroid/content/Context;JZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "allDay"    # Z
    .param p4, "location"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v15

    .line 170
    .local v15, "tz":Ljava/lang/String;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13, v15}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 171
    .local v13, "time":Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 172
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-wide v6, v13, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v14

    .line 173
    .local v14, "today":I
    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 174
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-wide v6, v13, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 176
    .local v9, "eventDay":I
    const/high16 v8, 0x80000

    .line 177
    .local v8, "flags":I
    if-nez p3, :cond_7

    .line 178
    or-int/lit8 v8, v8, 0x1

    .line 179
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    or-int/lit16 v8, v8, 0x80

    .line 186
    :cond_0
    :goto_0
    if-lt v9, v14, :cond_1

    add-int/lit8 v3, v14, 0x1

    if-le v9, v3, :cond_2

    .line 187
    :cond_1
    or-int/lit8 v8, v8, 0x10

    .line 190
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lcn/nubia/calendar/util/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .local v12, "sb":Ljava/lang/StringBuilder;
    if-nez p3, :cond_3

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    if-eq v15, v3, :cond_3

    .line 195
    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 196
    iget v3, v13, Landroid/text/format/Time;->isDst:I

    if-eqz v3, :cond_8

    const/4 v10, 0x1

    .line 197
    .local v10, "isDST":Z
    :goto_1
    const-string v3, " "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    invoke-static {v15}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 198
    invoke-virtual {v4, v10, v5, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .end local v10    # "isDST":Z
    :cond_3
    add-int/lit8 v3, v14, 0x1

    if-ne v9, v3, :cond_4

    .line 204
    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const v3, 0x7f0c0096

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .local v11, "loc":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 210
    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .end local v11    # "loc":Ljava/lang/String;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .local v2, "des":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 215
    const-string v3, ", "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .end local v2    # "des":Ljava/lang/String;
    :cond_6
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    .end local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    or-int/lit16 v8, v8, 0x2000

    goto/16 :goto_0

    .line 196
    .restart local v12    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .locals 6
    .param p0, "eventId"    # J
    .param p2, "begin"    # J
    .param p4, "end"    # J
    .param p6, "alarmTime"    # J
    .param p8, "minutes"    # I

    .prologue
    const/4 v5, 0x0

    .line 251
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 254
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 257
    .local v0, "currentTime":J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    return-object v2
.end method

.method public static scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "alarmTime"    # J

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->scheduleAlarmHelper(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    .line 73
    return-void
.end method

.method private static scheduleAlarmHelper(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "alarmTime"    # J
    .param p4, "quietUpdate"    # Z

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-string v4, "alarm"

    .line 89
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "manager":Landroid/app/AlarmManager;
    check-cast p1, Landroid/app/AlarmManager;

    .line 92
    .restart local p1    # "manager":Landroid/app/AlarmManager;
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, "alarmType":I
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "intent":Landroid/content/Intent;
    const-class v4, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    if-eqz p4, :cond_1

    .line 96
    const/4 v0, 0x1

    .line 106
    :goto_0
    const-string v4, "alarmTime"

    invoke-virtual {v2, v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 107
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p0, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 109
    .local v3, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p1, v0, p2, p3, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 110
    return-void

    .line 101
    .end local v3    # "pi":Landroid/app/PendingIntent;
    :cond_1
    sget-object v4, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 102
    .local v1, "builder":Landroid/net/Uri$Builder;
    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 103
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static scheduleNextNotificationRefresh(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "manager"    # Landroid/app/AlarmManager;
    .param p2, "alarmTime"    # J

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcn/nubia/calendar/submodule_alerts/AlertUtils;->scheduleAlarmHelper(Landroid/content/Context;Landroid/app/AlarmManager;JZ)V

    .line 83
    return-void
.end method
