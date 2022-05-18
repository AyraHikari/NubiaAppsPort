.class public Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;
.super Landroid/app/Activity;
.source "GoogleCalendarUriIntentFilter.java"


# static fields
.field private static final EVENT_INDEX_DURATION:I = 0x3

.field private static final EVENT_INDEX_END:I = 0x2

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_START:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GoogleCalendarUriIntentFilter"

.field static final debug:Z


# instance fields
.field private alertDialog:Lcn/nubia/commonui/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method private extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 83
    :try_start_0
    const-string v9, "eid"

    invoke-virtual {p1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "eidParam":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 151
    .end local v4    # "eidParam":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v8

    .line 90
    .restart local v4    # "eidParam":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 94
    .local v0, "decodedBytes":[B
    const/4 v7, 0x0

    .local v7, "spacePosn":I
    :goto_1
    array-length v9, v0

    if-ge v7, v9, :cond_0

    .line 95
    aget-byte v9, v0, v7

    const/16 v10, 0x20

    if-ne v9, v10, :cond_4

    .line 96
    array-length v9, v0

    sub-int/2addr v9, v7

    add-int/lit8 v6, v9, -0x1

    .line 97
    .local v6, "emailLen":I
    if-eqz v7, :cond_0

    const/4 v9, 0x3

    if-lt v6, v9, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "domain":Ljava/lang/String;
    array-length v9, v0

    add-int/lit8 v9, v9, -0x2

    aget-byte v9, v0, v9

    const/16 v10, 0x40

    if-ne v9, v10, :cond_2

    .line 104
    add-int/lit8 v6, v6, -0x1

    .line 106
    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v0, v9

    sparse-switch v9, :sswitch_data_0

    .line 123
    const-string v9, "GoogleCalendarUriIntentFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected one letter domain: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    aget-byte v11, v0, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/calendar/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v1, "%"

    .line 132
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v3, v0, v9, v7}, Ljava/lang/String;-><init>([BII)V

    .line 133
    .local v3, "eid":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    invoke-direct {v5, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V

    .line 141
    .local v5, "email":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    :cond_3
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v5, v9, v10

    move-object v8, v9

    goto :goto_0

    .line 108
    .end local v3    # "eid":Ljava/lang/String;
    .end local v5    # "email":Ljava/lang/String;
    :sswitch_0
    const-string v1, "gmail.com"

    .line 109
    goto :goto_2

    .line 111
    :sswitch_1
    const-string v1, "group.calendar.google.com"

    .line 112
    goto :goto_2

    .line 114
    :sswitch_2
    const-string v1, "holiday.calendar.google.com"

    .line 115
    goto :goto_2

    .line 117
    :sswitch_3
    const-string v1, "import.calendar.google.com"

    .line 118
    goto :goto_2

    .line 120
    :sswitch_4
    const-string v1, "group.v.calendar.google.com"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_2

    .line 94
    .end local v1    # "domain":Ljava/lang/String;
    .end local v6    # "emailLen":I
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 148
    .end local v0    # "decodedBytes":[B
    .end local v4    # "eidParam":Ljava/lang/String;
    .end local v7    # "spacePosn":I
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v9, "GoogleCalendarUriIntentFilter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Punting malformed URI "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/calendar/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_1
        0x68 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6d -> :sswitch_0
        0x76 -> :sswitch_4
    .end sparse-switch
.end method

.method private init()V
    .locals 24

    .prologue
    .line 201
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->getIntent()Landroid/content/Intent;

    move-result-object v20

    .line 202
    .local v20, "intent":Landroid/content/Intent;
    if-eqz v20, :cond_4

    .line 203
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    .line 204
    .local v21, "uri":Landroid/net/Uri;
    if-eqz v21, :cond_6

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->extractEidAndEmail(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v15

    .line 209
    .local v15, "eidParts":[Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_sync_id LIKE \"%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v15, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ownerAccount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIKE \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v15, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, "selection":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "calendar_access_level desc"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 222
    .local v18, "eventCursor":Landroid/database/Cursor;
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 223
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 224
    const-string v4, "GoogleCalendarUriIntentFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOTE: found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matches on event with id=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/calendar/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 233
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 234
    .local v19, "eventId":I
    const/4 v4, 0x1

    .line 235
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 236
    .local v22, "startMillis":J
    const/4 v4, 0x2

    .line 237
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 248
    .local v16, "endMillis":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-nez v4, :cond_1

    .line 249
    const/4 v4, 0x3

    .line 250
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 253
    .local v13, "duration":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 258
    :try_start_0
    new-instance v12, Lcn/nubia/calendarcommon2/Duration;

    invoke-direct {v12}, Lcn/nubia/calendarcommon2/Duration;-><init>()V

    .line 259
    .local v12, "d":Lcn/nubia/calendarcommon2/Duration;
    invoke-virtual {v12, v13}, Lcn/nubia/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v12}, Lcn/nubia/calendarcommon2/Duration;->getMillis()J
    :try_end_0
    .catch Lcn/nubia/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-long v16, v22, v4

    .line 266
    cmp-long v4, v16, v22

    if-ltz v4, :cond_0

    .line 276
    .end local v12    # "d":Lcn/nubia/calendarcommon2/Duration;
    .end local v13    # "duration":Ljava/lang/String;
    :cond_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 277
    const/16 v18, 0x0

    .line 280
    const/4 v10, 0x0

    .line 281
    .local v10, "attendeeStatus":I
    const-string v4, "RESPOND"

    const-string v5, "action"

    .line 282
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 284
    :try_start_1
    const-string v4, "rst"

    .line 285
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 303
    :cond_2
    :goto_1
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v8, v0

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 305
    .local v11, "calendarUri":Landroid/net/Uri;
    new-instance v20, Landroid/content/Intent;

    .end local v20    # "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 306
    .restart local v20    # "intent":Landroid/content/Intent;
    const-class v4, Lcn/nubia/calendar/EventInfoActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const-string v4, "beginTime"

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 308
    const-string v4, "endTime"

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 309
    if-eqz v10, :cond_3

    .line 310
    const-string v4, "attendeeStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 312
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->startActivity(Landroid/content/Intent;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->finish()V

    .line 329
    .end local v7    # "selection":Ljava/lang/String;
    .end local v10    # "attendeeStatus":I
    .end local v11    # "calendarUri":Landroid/net/Uri;
    .end local v15    # "eidParts":[Ljava/lang/String;
    .end local v16    # "endMillis":J
    .end local v18    # "eventCursor":Landroid/database/Cursor;
    .end local v19    # "eventId":I
    .end local v21    # "uri":Landroid/net/Uri;
    .end local v22    # "startMillis":J
    :cond_4
    :goto_2
    return-void

    .line 269
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v13    # "duration":Ljava/lang/String;
    .restart local v15    # "eidParts":[Ljava/lang/String;
    .restart local v16    # "endMillis":J
    .restart local v18    # "eventCursor":Landroid/database/Cursor;
    .restart local v19    # "eventId":I
    .restart local v21    # "uri":Landroid/net/Uri;
    .restart local v22    # "startMillis":J
    :catch_0
    move-exception v14

    .line 272
    .local v14, "e":Lcn/nubia/calendarcommon2/DateException;
    goto/16 :goto_0

    .line 287
    .end local v13    # "duration":Ljava/lang/String;
    .end local v14    # "e":Lcn/nubia/calendarcommon2/DateException;
    .restart local v10    # "attendeeStatus":I
    :pswitch_0
    const/4 v10, 0x1

    .line 288
    goto :goto_1

    .line 290
    :pswitch_1
    const/4 v10, 0x2

    .line 291
    goto :goto_1

    .line 293
    :pswitch_2
    const/4 v10, 0x4

    goto :goto_1

    .line 317
    .end local v10    # "attendeeStatus":I
    .end local v16    # "endMillis":J
    .end local v19    # "eventId":I
    .end local v22    # "startMillis":J
    :cond_5
    if-eqz v18, :cond_6

    .line 318
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 324
    .end local v7    # "selection":Ljava/lang/String;
    .end local v15    # "eidParts":[Ljava/lang/String;
    .end local v18    # "eventCursor":Landroid/database/Cursor;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 325
    :catch_1
    move-exception v4

    goto :goto_2

    .line 296
    .restart local v7    # "selection":Ljava/lang/String;
    .restart local v10    # "attendeeStatus":I
    .restart local v15    # "eidParts":[Ljava/lang/String;
    .restart local v16    # "endMillis":J
    .restart local v18    # "eventCursor":Landroid/database/Cursor;
    .restart local v19    # "eventId":I
    .restart local v22    # "startMillis":J
    :catch_2
    move-exception v4

    goto :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 176
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 177
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setStatusBarColor(Landroid/app/Activity;)V

    .line 162
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->init()V

    .line 164
    invoke-virtual {p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->finish()V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v2

    invoke-static {p0, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 194
    iget-object v0, p0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->alertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 198
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->showPermissionDialog()V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-direct {p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->init()V

    .line 185
    invoke-virtual {p0}, Lcn/nubia/calendar/GoogleCalendarUriIntentFilter;->finish()V

    goto :goto_0
.end method
