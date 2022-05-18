.class public Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;
.super Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
.source "VCalendarBuilder.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "VCalendarBuilder"


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "vcalversion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/vcalendar/vcreator/VCalendarException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;-><init>(I)V

    .line 15
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 16
    new-instance v0, Lcn/nubia/vcalendar/vcreator/VCalendarException;

    const-string v1, "Version not 2.0 is the not supported version!"

    invoke-direct {v0, v1}, Lcn/nubia/vcalendar/vcreator/VCalendarException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method createVAlarmProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x4

    .line 200
    const-string v3, "minutes"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 201
    .local v1, "integerMinitues":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 202
    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v4, "DURATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "PT"

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v4, "REPEAT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-1"

    .line 210
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    const-string v3, "method"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 216
    .local v0, "integerMethod":Ljava/lang/Integer;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "AUDIO"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "AUDIO"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "PROCEDURE"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "PROCEDURE"

    aput-object v4, v2, v3

    .line 217
    .local v2, "strAction":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 219
    iget-object v3, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v4, "ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 222
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_1
    return-object p0
.end method

.method createVCalendarProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "VERSION:2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v1, "PRODID:vCal ID default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method createVEeventAtteedee(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 14
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 231
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v12, "ATTENDEE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v11, "attendeeName"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "strCN":Ljava/lang/String;
    invoke-static {v7}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 236
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "CN="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    const-string v11, "attendeeType"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 240
    .local v4, "integerType":Ljava/lang/Integer;
    const-string v11, "attendeeRelationship"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 241
    .local v3, "integerRelationship":Ljava/lang/Integer;
    const/4 v11, 0x3

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "NON"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "REQ"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "OPT"

    aput-object v12, v10, v11

    .line 242
    .local v10, "strType":[Ljava/lang/String;
    const/4 v11, 0x5

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "PARTICIPANT"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "PARTICIPANT"

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const-string v12, "CHAIR"

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const-string v12, "PARTICIPANT"

    aput-object v12, v9, v11

    const/4 v11, 0x4

    const-string v12, "CHAIR"

    aput-object v12, v9, v11

    .line 244
    .local v9, "strRelationship":[Ljava/lang/String;
    const/4 v11, 0x3

    new-array v0, v11, [I

    fill-array-data v0, :array_0

    .line 245
    .local v0, "ATTENDEE_RELATIONSHIP_PARTICIPANT_INDEX":[I
    const/4 v1, 0x0

    .line 246
    .local v1, "bIsParticipant":Z
    array-length v12, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_1

    aget v5, v0, v11

    .line 247
    .local v5, "relIndex":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v5, :cond_4

    .line 248
    const/4 v1, 0x1

    .line 252
    .end local v5    # "relIndex":I
    :cond_1
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ROLE="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    if-eqz v1, :cond_2

    .line 255
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, v10, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_2
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v11, "attendeeStatus"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 261
    .local v2, "integerAttendeeStatus":Ljava/lang/Integer;
    const/4 v11, 0x5

    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "NEEDS-ACTION"

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const-string v12, "ACCEPTED"

    aput-object v12, v6, v11

    const/4 v11, 0x2

    const-string v12, "DECLINED"

    aput-object v12, v6, v11

    const/4 v11, 0x3

    const-string v12, "NEEDS-ACTION"

    aput-object v12, v6, v11

    const/4 v11, 0x4

    const-string v12, "TENTATIVE"

    aput-object v12, v6, v11

    .line 263
    .local v6, "strAttendeeStatus":[Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 264
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ltz v11, :cond_5

    .line 265
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x5

    if-ge v11, v12, :cond_5

    .line 266
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "PARTSTAT="

    .line 267
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 268
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, v6, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :goto_1
    const-string v11, "attendeeEmail"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "strEmail":Ljava/lang/String;
    invoke-static {v8}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 279
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MAILTO:"

    .line 280
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 281
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_3
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    sget-object v12, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    return-object p0

    .line 246
    .end local v2    # "integerAttendeeStatus":Ljava/lang/Integer;
    .end local v6    # "strAttendeeStatus":[Ljava/lang/String;
    .end local v8    # "strEmail":Ljava/lang/String;
    .restart local v5    # "relIndex":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 270
    .end local v5    # "relIndex":I
    .restart local v2    # "integerAttendeeStatus":Ljava/lang/Integer;
    .restart local v6    # "strAttendeeStatus":[Ljava/lang/String;
    :cond_5
    iget-object v11, p0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "PARTSTAT="

    .line 271
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v6, v12

    .line 272
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 244
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
    .end array-data
.end method

.method createVEeventProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 24
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 29
    const-string v21, "VCalendarBuilder"

    const-string v22, "createVEeventProperty(in)"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v21, "VCalendarBuilder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "createVEeventProperty, args:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v21, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 33
    .local v20, "title":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "SUMMARY"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    .line 35
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ENCODING="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "QUOTED-PRINTABLE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 36
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "UTF-8"

    .line 37
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->enCodingQuotedPrintableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    const-string v21, "description"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "description":Ljava/lang/String;
    invoke-static {v5}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "DESCRIPTION"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    .line 44
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ENCODING="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "QUOTED-PRINTABLE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 45
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "UTF-8"

    .line 46
    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->enCodingQuotedPrintableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_1
    const-string v21, "eventLocation"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "event_location":Ljava/lang/String;
    invoke-static {v6}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "LOCATION"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ";"

    .line 53
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ENCODING="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "QUOTED-PRINTABLE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 54
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "UTF-8"

    .line 55
    move-object/from16 v0, v22

    invoke-static {v6, v0}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->enCodingQuotedPrintableString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 56
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_2
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    const-string v22, "TENTATIVE"

    aput-object v22, v17, v21

    const/16 v21, 0x1

    const-string v22, "CONFIRMED"

    aput-object v22, v17, v21

    const/16 v21, 0x2

    const-string v22, "CANCELED"

    aput-object v22, v17, v21

    .line 61
    .local v17, "strStatus":[Ljava/lang/String;
    const-string v21, "eventStatus"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 62
    .local v10, "integerStatus":Ljava/lang/Integer;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-ltz v21, :cond_3

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "STATUS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 64
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 65
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aget-object v22, v17, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 66
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_3
    const-string v21, "dtstart"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 71
    .local v9, "integerDtStart":Ljava/lang/Long;
    const-string v21, "VCalendarBuilder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DTSTART integer values is :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v21, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 74
    .local v14, "strIsAllDay":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-nez v21, :cond_a

    const/16 v21, 0x0

    :goto_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 75
    .local v4, "bIsAllDay":Ljava/lang/Boolean;
    if-eqz v9, :cond_4

    .line 76
    new-instance v19, Landroid/text/format/Time;

    const-string v21, "UTC"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 77
    .local v19, "time":Landroid/text/format/Time;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "DTSTART"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_b

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 81
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v21, "VCalendarBuilder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DTSTART string values is :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 83
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 82
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v19    # "time":Landroid/text/format/Time;
    :cond_4
    :goto_1
    const-string v21, "dtend"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 97
    .local v8, "integerDtEnd":Ljava/lang/Long;
    if-eqz v8, :cond_5

    .line 98
    new-instance v19, Landroid/text/format/Time;

    const-string v21, "UTC"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v19    # "time":Landroid/text/format/Time;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "DTEND"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_c

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 103
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .end local v19    # "time":Landroid/text/format/Time;
    :cond_5
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "X-MICROSOFT-CDO-ALLDAYEVENT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "TRUE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_6
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v12, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "PUBLIC"

    aput-object v22, v12, v21

    const/16 v21, 0x1

    const-string v22, "CONFIDENTIAL"

    aput-object v22, v12, v21

    const/16 v21, 0x2

    const-string v22, "PRIVATE"

    aput-object v22, v12, v21

    const/16 v21, 0x3

    const-string v22, "PUBLIC"

    aput-object v22, v12, v21

    .line 122
    .local v12, "strClass":[Ljava/lang/String;
    const-string v21, "accessLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 123
    .local v7, "integerClass":Ljava/lang/Integer;
    if-eqz v7, :cond_d

    .line 124
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-ltz v21, :cond_d

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "CLASS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 126
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 127
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aget-object v22, v12, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 128
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_3
    const-string v21, "availability"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 145
    .local v11, "integerTransp":Ljava/lang/Integer;
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    const-string v22, "OPAQUE"

    aput-object v22, v18, v21

    const/16 v21, 0x1

    const-string v22, "TRANSPARENT"

    aput-object v22, v18, v21

    const/16 v21, 0x2

    const-string v22, "OPAQUE"

    aput-object v22, v18, v21

    .line 146
    .local v18, "strTransp":[Ljava/lang/String;
    if-eqz v11, :cond_e

    .line 147
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-ltz v21, :cond_e

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_e

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "TRANSP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 149
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 150
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v22

    aget-object v22, v18, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 151
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :goto_4
    const-string v21, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 163
    .local v13, "strDuration":Ljava/lang/String;
    invoke-static {v13}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "DURATION"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 165
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 166
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 167
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_7
    const-string v21, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 172
    .local v16, "strRrule":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "RRULE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 174
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 175
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 176
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_8
    const-string v21, "organizer"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 181
    .local v15, "strOrganizer":Ljava/lang/String;
    invoke-static {v15}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "ORGANIZER"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 183
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "MAILTO:"

    .line 184
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 185
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 186
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_9
    return-object p0

    .line 74
    .end local v4    # "bIsAllDay":Ljava/lang/Boolean;
    .end local v7    # "integerClass":Ljava/lang/Integer;
    .end local v8    # "integerDtEnd":Ljava/lang/Long;
    .end local v11    # "integerTransp":Ljava/lang/Integer;
    .end local v12    # "strClass":[Ljava/lang/String;
    .end local v13    # "strDuration":Ljava/lang/String;
    .end local v15    # "strOrganizer":Ljava/lang/String;
    .end local v16    # "strRrule":Ljava/lang/String;
    .end local v18    # "strTransp":[Ljava/lang/String;
    :cond_a
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 86
    .restart local v4    # "bIsAllDay":Ljava/lang/Boolean;
    .restart local v19    # "time":Landroid/text/format/Time;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "VALUE=DATE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 87
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%Y%m%d"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 88
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v21, "VCalendarBuilder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DTSTART string values is :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%Y%m%d"

    .line 90
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 89
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 105
    .restart local v8    # "integerDtEnd":Ljava/lang/Long;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "VALUE=DATE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 106
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%Y%m%d"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 107
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 132
    .end local v19    # "time":Landroid/text/format/Time;
    .restart local v7    # "integerClass":Ljava/lang/Integer;
    .restart local v12    # "strClass":[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "CLASS"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 133
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v12, v22

    .line 134
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 135
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 155
    .restart local v11    # "integerTransp":Ljava/lang/Integer;
    .restart local v18    # "strTransp":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->strBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v21, v0

    const-string v22, "TRANSP"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    .line 156
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v18, v22

    .line 157
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;->ENTER:Ljava/lang/String;

    .line 158
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4
.end method

.method createVTimezoneProperty(Landroid/content/ContentValues;)Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 194
    return-object p0
.end method
