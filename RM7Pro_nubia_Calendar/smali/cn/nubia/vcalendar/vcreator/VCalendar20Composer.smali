.class public Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;
.super Ljava/lang/Object;
.source "VCalendar20Composer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$VCalendarConfig;,
        Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;,
        Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    }
.end annotation


# static fields
.field public static final FAILURE_IOEXCEPTION:Ljava/lang/String; = "IO Exception"

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCalendar composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCalendar20 composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCalender20Composer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final sEventProjection:[Ljava/lang/String;


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharsetString:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private mTerminateIsCalled:Z

.field private final mVCalVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->sEventProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;-><init>(Landroid/content/Context;IZ)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "version"    # I
    .param p3, "careHandlerErrors"    # Z

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const-string v0, "No error"

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mContext:Landroid/content/Context;

    .line 166
    iput p2, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mVCalVersion:I

    .line 167
    iput-boolean p3, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCareHandlerErrors:Z

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mContentResolver:Landroid/content/ContentResolver;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mHandlerList:Ljava/util/List;

    .line 170
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCharsetString:Ljava/lang/String;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCharsetString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method private createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 21
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "getEntityIteratorMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/nubia/vcalendar/vcreator/VCalendarException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 314
    .local v10, "contentValuesListMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v15, 0x0

    .line 316
    .local v15, "entityIterator":Landroid/content/EntityIterator;
    :try_start_0
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 317
    .local v2, "uri":Landroid/net/Uri;
    const-string v18, "_id=?"

    .line 318
    .local v18, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    .local v5, "selectionArgs":[Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 322
    const/4 v1, 0x0

    const/4 v3, 0x5

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    const-string v6, "_id=?"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput-object v6, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/EntityIterator;

    move-object v15, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :goto_0
    if-nez v15, :cond_4

    .line 345
    :try_start_2
    const-string v1, "VCalender20Composer"

    const-string v3, "EntityIterator is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    if-eqz v15, :cond_0

    .line 380
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    .line 376
    :cond_0
    :goto_1
    return-object v1

    .line 324
    :catch_0
    move-exception v12

    .line 325
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "VCalender20Composer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException has been thrown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 326
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 379
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .end local v18    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_1

    .line 380
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    .line 382
    :cond_1
    throw v1

    .line 327
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v18    # "selection":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 328
    .local v12, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v1, "VCalender20Composer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException has been thrown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 329
    invoke-virtual {v12}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .end local v12    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v12

    .line 331
    .local v12, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "VCalender20Composer"

    const-string v3, "InvocationTargetException has been thrown: "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v19

    .line 333
    .local v19, "stackTraceElements":[Ljava/lang/StackTraceElement;
    move-object/from16 v0, v19

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v13, v19, v1

    .line 334
    .local v13, "element":Ljava/lang/StackTraceElement;
    const-string v4, "VCalender20Composer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "    at "

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 336
    .end local v13    # "element":Ljava/lang/StackTraceElement;
    :cond_2
    new-instance v1, Lcn/nubia/vcalendar/vcreator/VCalendarException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InvocationTargetException has been thrown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcn/nubia/vcalendar/vcreator/VCalendarException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    .end local v12    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v19    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string v4, "_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v15

    goto/16 :goto_0

    .line 349
    :cond_4
    invoke-interface {v15}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 350
    const-string v1, "VCalender20Composer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data does not exist. eventId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    if-eqz v15, :cond_0

    .line 380
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_1

    .line 353
    :cond_5
    :try_start_5
    invoke-interface {v15}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Entity;

    .line 354
    .local v14, "entity":Landroid/content/Entity;
    invoke-virtual {v14}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 355
    .local v17, "namedContentValues":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 356
    .local v8, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 357
    .local v16, "key":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 359
    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 360
    .local v9, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v9, :cond_7

    .line 361
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .restart local v9    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v16

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_7
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 367
    .end local v8    # "contentValues":Landroid/content/ContentValues;
    .end local v9    # "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "namedContentValues":Landroid/content/Entity$NamedContentValues;
    :cond_8
    const-string v1, "VCalender20Composer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event Values:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v1, "VCalender20Composer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reminder Values:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v1, "VCalender20Composer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attendee Values:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    new-instance v11, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;

    const/4 v4, 0x0

    .line 372
    invoke-virtual {v14}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v6

    sget-object v1, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 373
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 374
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {v11, v4, v6, v1, v3}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;-><init>(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/util/List;Ljava/util/List;)V

    .line 375
    .local v11, "director":Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;
    new-instance v7, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;

    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mVCalVersion:I

    invoke-direct {v7, v1}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilder;-><init>(I)V

    .line 376
    .local v7, "builder":Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;
    invoke-virtual {v11, v7}, Lcn/nubia/vcalendar/vcreator/VCalendarBuilderDirector;->build(Lcn/nubia/vcalendar/vcreator/AbstractVCalendarBuilder;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 379
    if-eqz v15, :cond_0

    .line 380
    invoke-interface {v15}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_1
.end method


# virtual methods
.method public addHandler(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;)V
    .locals 1
    .param p1, "handler"    # Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_0
    return-void
.end method

.method public createOneEntry()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->createOneEntry(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Z
    .locals 9
    .param p1, "getEntityIteratorMethod"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 262
    iget-object v6, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 263
    :cond_0
    const-string v5, "The vCalendar composer object is not correctly initialized"

    iput-object v5, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    .line 304
    :goto_0
    return v4

    .line 268
    :cond_1
    :try_start_0
    iget v6, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mIdColumn:I

    if-ltz v6, :cond_3

    .line 269
    iget-object v6, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mIdColumn:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "vCalendar":Ljava/lang/String;
    const-string v6, "VCalender20Composer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createOneEntry: \n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcn/nubia/vcalendar/vcreator/VCalendarException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    iget-object v6, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 292
    iget-boolean v6, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCareHandlerErrors:Z

    if-eqz v6, :cond_4

    .line 293
    iget-object v6, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;

    .line 294
    .local v2, "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    invoke-interface {v2, v3}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 273
    .end local v2    # "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    .end local v3    # "vCalendar":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v6, "VCalender20Composer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect mIdColumn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mIdColumn:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcn/nubia/vcalendar/vcreator/VCalendarException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    iget-object v4, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v5

    .line 274
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lcn/nubia/vcalendar/vcreator/VCalendarException;
    :try_start_2
    const-string v5, "VCalender20Composer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VCardException has been thrown: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcn/nubia/vcalendar/vcreator/VCalendarException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 287
    iget-object v5, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 279
    .end local v0    # "e":Lcn/nubia/vcalendar/vcreator/VCalendarException;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "error":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v4, "VCalender20Composer"

    const-string v6, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    iget-object v4, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v5

    .line 285
    goto/16 :goto_0

    .line 287
    .end local v1    # "error":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 288
    throw v4

    .line 299
    .restart local v3    # "vCalendar":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mHandlerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;

    .line 300
    .restart local v2    # "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    invoke-interface {v2, v3}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_1

    .end local v2    # "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    :cond_5
    move v4, v5

    .line 304
    goto/16 :goto_0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->terminate()V

    .line 407
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 411
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0, v0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 203
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_3

    .line 204
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mHandlerList:Ljava/util/List;

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v8, "finishedList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;>;"
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;

    .line 207
    .local v9, "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;

    .line 209
    .local v7, "finished":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    invoke-interface {v7}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;->onTerminate()V

    goto :goto_1

    .line 211
    .end local v7    # "finished":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    .end local v8    # "finishedList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;>;"
    .end local v9    # "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    :cond_3
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;

    .line 217
    .restart local v9    # "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    iget-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_2

    .line 222
    .end local v9    # "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    :cond_4
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 223
    sget-object v2, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->sEventProjection:[Ljava/lang/String;

    .line 228
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    .line 231
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 232
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    goto :goto_0

    .line 225
    .end local v2    # "projection":[Ljava/lang/String;
    :cond_5
    const-string v0, "The Uri vCalendar20 composer received is not supported by the composer."

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    .line 226
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    .restart local v2    # "projection":[Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->getCount()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8

    .line 238
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    .line 243
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    .line 245
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 239
    :catch_0
    move-exception v6

    .line 240
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "VCalender20Composer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    .line 243
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    goto :goto_3

    .line 242
    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    .line 243
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mErrorReason:Ljava/lang/String;

    .line 244
    throw v0

    .line 248
    :cond_8
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mIdColumn:I

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 191
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 420
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 5

    .prologue
    .line 386
    iget-object v2, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mHandlerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;

    .line 387
    .local v1, "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    invoke-interface {v1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 390
    .end local v1    # "handler":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;
    :cond_0
    iget-object v2, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 392
    :try_start_0
    iget-object v2, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mCursor:Landroid/database/Cursor;

    .line 399
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->mTerminateIsCalled:Z

    .line 400
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v2, "VCalender20Composer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException on Cursor#close(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
