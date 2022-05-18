.class Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;
.super Ljava/lang/Object;
.source "SuggestionsProvider.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/db/SuggestionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsCursor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;
    }
.end annotation


# instance fields
.field private final INTENT_ACTION_COLUMN:I

.field private final INTENT_DATA_COLUMN:I

.field private final INTENT_EXTRA_DATA_COLUMN:I

.field private final INTENT_ICON_COLUMN:I

.field private final INTENT_TEXT2_COLUMN:I

.field private final INTENT_TEXT_COLUMN:I

.field mColumnCount:I

.field mCurrentRow:I

.field mDatabaseCursor:Landroid/database/Cursor;

.field mQuery:Ljava/lang/String;

.field mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mVirtualColumns:[Ljava/lang/String;

.field final synthetic this$0:Lcn/nubia/calendar/db/SuggestionsProvider;


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/db/SuggestionsProvider;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 9
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    iput-object p1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->this$0:Lcn/nubia/calendar/db/SuggestionsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    .line 400
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "suggest_intent_data"

    aput-object v2, v1, v4

    const-string v2, "suggest_intent_action"

    aput-object v2, v1, v5

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v1, v6

    const-string v2, "suggest_text_1"

    aput-object v2, v1, v7

    const-string v2, "suggest_text_2"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "suggest_icon_1"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    .line 412
    iput v4, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->INTENT_DATA_COLUMN:I

    .line 413
    iput v5, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->INTENT_ACTION_COLUMN:I

    .line 414
    iput v6, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->INTENT_EXTRA_DATA_COLUMN:I

    .line 415
    iput v7, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->INTENT_TEXT_COLUMN:I

    .line 416
    iput v8, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->INTENT_TEXT2_COLUMN:I

    .line 417
    const/4 v1, 0x5

    iput v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->INTENT_ICON_COLUMN:I

    .line 160
    iput-object p2, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    .line 161
    iput-object p3, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mQuery:Ljava/lang/String;

    .line 163
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->computeRows()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private computeRows()V
    .locals 36

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 224
    .local v19, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v19

    if-ge v14, v0, :cond_d

    .line 225
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v8, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 226
    const-string v15, ""

    .line 227
    .local v15, "data":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 228
    .local v16, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 229
    .local v26, "eventId":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v9, 0x5

    .line 230
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 231
    .local v4, "startTimeMillis":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_9

    const/4 v11, 0x1

    .line 232
    .local v11, "isAllDay":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 233
    .local v30, "rRule":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v9, 0x7

    .line 234
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 236
    .local v29, "eventTimezone":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/16 v9, 0x9

    .line 238
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 241
    :cond_0
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->this$0:Lcn/nubia/calendar/db/SuggestionsProvider;

    invoke-virtual {v8}, Lcn/nubia/calendar/db/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 249
    .local v32, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->this$0:Lcn/nubia/calendar/db/SuggestionsProvider;

    invoke-virtual {v8}, Lcn/nubia/calendar/db/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->this$0:Lcn/nubia/calendar/db/SuggestionsProvider;

    .line 250
    invoke-static {v9}, Lcn/nubia/calendar/db/SuggestionsProvider;->access$000(Lcn/nubia/calendar/db/SuggestionsProvider;)Ljava/lang/Runnable;

    move-result-object v9

    .line 249
    invoke-static {v8, v9}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "localTimezone":Ljava/lang/String;
    const/16 v31, 0x0

    .line 252
    .local v31, "repeatString":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 253
    new-instance v28, Lcn/nubia/calendarcommon2/EventRecurrence;

    invoke-direct/range {v28 .. v28}, Lcn/nubia/calendarcommon2/EventRecurrence;-><init>()V

    .line 254
    .local v28, "eventRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 255
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    invoke-direct {v0, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 256
    .local v20, "date":Landroid/text/format/Time;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 257
    if-eqz v11, :cond_2

    .line 258
    const-string v8, "UTC"

    move-object/from16 v0, v20

    iput-object v8, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 260
    :cond_2
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcn/nubia/calendarcommon2/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 261
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcn/nubia/calendarcommon2/EventRecurrence;)Ljava/lang/String;

    move-result-object v31

    .line 265
    .end local v20    # "date":Landroid/text/format/Time;
    .end local v28    # "eventRecurrence":Lcn/nubia/calendarcommon2/EventRecurrence;
    :cond_3
    const/16 v23, 0x0

    .line 266
    .local v23, "duration":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 267
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/16 v9, 0xc

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 270
    :cond_4
    const-wide/16 v6, 0x0

    .line 271
    .local v6, "endTimeMillis":J
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 272
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    const/4 v9, 0x6

    .line 273
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 299
    :cond_5
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->this$0:Lcn/nubia/calendar/db/SuggestionsProvider;

    .line 300
    invoke-virtual {v12}, Lcn/nubia/calendar/db/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 297
    invoke-static/range {v4 .. v12}, Lcn/nubia/calendar/util/Utils;->getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    .line 302
    .local v21, "displayedDatetime":Ljava/lang/String;
    const/16 v22, 0x0

    .line 303
    .local v22, "displayedTimezone":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 304
    move-object/from16 v0, v29

    invoke-static {v4, v5, v10, v0}, Lcn/nubia/calendar/util/Utils;->getDisplayedTimezone(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 308
    :cond_6
    if-nez v22, :cond_c

    .line 309
    move-object/from16 v15, v21

    .line 324
    :goto_3
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 325
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 327
    :cond_7
    if-eqz v15, :cond_8

    if-eqz v16, :cond_8

    .line 328
    const-string v8, "content://suggestionsprovider/search"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 329
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    .line 330
    .local v18, "builder":Landroid/net/Uri$Builder;
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 331
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 332
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 333
    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    new-instance v12, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;-><init>(Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v18    # "builder":Landroid/net/Uri$Builder;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 231
    .end local v6    # "endTimeMillis":J
    .end local v10    # "localTimezone":Ljava/lang/String;
    .end local v11    # "isAllDay":Z
    .end local v21    # "displayedDatetime":Ljava/lang/String;
    .end local v22    # "displayedTimezone":Ljava/lang/String;
    .end local v23    # "duration":Ljava/lang/String;
    .end local v29    # "eventTimezone":Ljava/lang/String;
    .end local v30    # "rRule":Ljava/lang/String;
    .end local v31    # "repeatString":Ljava/lang/String;
    .end local v32    # "resources":Landroid/content/res/Resources;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 275
    .restart local v6    # "endTimeMillis":J
    .restart local v10    # "localTimezone":Ljava/lang/String;
    .restart local v11    # "isAllDay":Z
    .restart local v23    # "duration":Ljava/lang/String;
    .restart local v29    # "eventTimezone":Ljava/lang/String;
    .restart local v30    # "rRule":Ljava/lang/String;
    .restart local v31    # "repeatString":Ljava/lang/String;
    .restart local v32    # "resources":Landroid/content/res/Resources;
    :cond_a
    const-string v8, "P"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "S"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 277
    const/4 v8, 0x1

    .line 278
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 277
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    .line 279
    .local v24, "durationSeconds":I
    move/from16 v0, v24

    mul-int/lit16 v8, v0, 0x3e8

    int-to-long v8, v8

    add-long v6, v4, v8

    goto/16 :goto_2

    .line 281
    .end local v24    # "durationSeconds":I
    :catch_0
    move-exception v25

    .line 282
    .local v25, "e":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 284
    .end local v25    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v8, "P"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "D"

    .line 285
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 287
    const/4 v8, 0x1

    .line 288
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 287
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    .line 289
    .restart local v24    # "durationSeconds":I
    mul-int/lit8 v8, v24, 0x18

    mul-int/lit16 v8, v8, 0xe10

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    add-long v6, v4, v8

    goto/16 :goto_2

    .line 291
    .end local v24    # "durationSeconds":I
    :catch_1
    move-exception v25

    .line 292
    .restart local v25    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 311
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v21    # "displayedDatetime":Ljava/lang/String;
    .restart local v22    # "displayedTimezone":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v34

    .line 312
    .local v34, "timezoneIndex":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 313
    new-instance v33, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 315
    .local v33, "sb":Landroid/text/SpannableStringBuilder;
    new-instance v35, Landroid/text/style/ForegroundColorSpan;

    const v8, 0x7f0d00ed

    .line 317
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move-object/from16 v0, v35

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 319
    .local v35, "transparentColorSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x12

    .line 318
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 321
    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 336
    .end local v4    # "startTimeMillis":J
    .end local v6    # "endTimeMillis":J
    .end local v10    # "localTimezone":Ljava/lang/String;
    .end local v11    # "isAllDay":Z
    .end local v15    # "data":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    .end local v21    # "displayedDatetime":Ljava/lang/String;
    .end local v22    # "displayedTimezone":Ljava/lang/String;
    .end local v23    # "duration":Ljava/lang/String;
    .end local v26    # "eventId":J
    .end local v29    # "eventTimezone":Ljava/lang/String;
    .end local v30    # "rRule":Ljava/lang/String;
    .end local v31    # "repeatString":Ljava/lang/String;
    .end local v32    # "resources":Landroid/content/res/Resources;
    .end local v33    # "sb":Landroid/text/SpannableStringBuilder;
    .end local v34    # "timezoneIndex":I
    .end local v35    # "transparentColorSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_d
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 509
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 1
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 512
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 513
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 517
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 349
    invoke-virtual {p0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->getCount()I

    move-result v1

    .line 350
    .local v1, "count":I
    if-ltz p1, :cond_0

    add-int/lit8 v6, v1, 0x1

    if-le p1, v6, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 355
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->getPosition()I

    move-result v4

    .line 356
    .local v4, "oldpos":I
    move v5, p1

    .line 357
    .local v5, "pos":I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 358
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 359
    invoke-virtual {p0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->getColumnCount()I

    move-result v0

    .line 360
    .local v0, "columnNum":I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 361
    :goto_1
    invoke-virtual {p0, v5}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 362
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 363
    invoke-virtual {p0, v3}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "field":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 365
    invoke-virtual {p2, v2, v5, v3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 366
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 376
    .end local v2    # "field":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 370
    .restart local v2    # "field":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v5, v3}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v6

    if-nez v6, :cond_4

    .line 371
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 379
    .end local v0    # "columnNum":I
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "oldpos":I
    .end local v5    # "pos":I
    :catch_0
    move-exception v6

    .line 381
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 362
    .restart local v0    # "columnNum":I
    .restart local v2    # "field":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "oldpos":I
    .restart local v5    # "pos":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 378
    .end local v2    # "field":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_5
    :try_start_1
    invoke-virtual {p0, v4}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    .end local v0    # "columnNum":I
    .end local v4    # "oldpos":I
    .end local v5    # "pos":I
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    .line 382
    throw v6
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 520
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 2

    .prologue
    .line 420
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 425
    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    add-int/2addr v1, v0

    .line 429
    :goto_1
    return v1

    .line 424
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 429
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 525
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 529
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 433
    iget-object v3, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "x":[Ljava/lang/String;
    array-length v3, v1

    iget-object v4, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    new-array v2, v3, [Ljava/lang/String;

    .line 436
    .local v2, "y":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 437
    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 441
    array-length v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mVirtualColumns:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 444
    :cond_1
    return-object v2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 533
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 541
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 549
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 557
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 479
    iget v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    if-ge p1, v1, :cond_0

    .line 480
    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 503
    :goto_0
    return-object v1

    .line 483
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;

    .line 484
    .local v0, "row":Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;
    iget v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mColumnCount:I

    sub-int v1, p1, v1

    packed-switch v1, :pswitch_data_0

    .line 503
    const/4 v1, 0x0

    goto :goto_0

    .line 491
    :pswitch_0
    invoke-virtual {v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->getIntentData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 493
    :pswitch_1
    const-string v1, "android.intent.action.VIEW"

    goto :goto_0

    .line 495
    :pswitch_2
    invoke-virtual {v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->getData()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 497
    :pswitch_3
    invoke-virtual {v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 499
    :pswitch_4
    invoke-virtual {v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->getData()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 501
    :pswitch_5
    invoke-virtual {v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->getIcon()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 484
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getType(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 585
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 565
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 581
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 589
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 458
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 448
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 449
    iput p1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    .line 450
    iget-object v1, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;

    invoke-static {v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;->access$100(Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor$Row;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 451
    const/4 v0, 0x1

    .line 453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mCurrentRow:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 593
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 594
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 597
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 598
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 605
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 624
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 609
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 610
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 613
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 614
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 617
    iget-object v0, p0, Lcn/nubia/calendar/db/SuggestionsProvider$SuggestionsCursor;->mDatabaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 618
    return-void
.end method
