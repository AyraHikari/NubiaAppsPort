.class public Lcn/nubia/calendar/db/CustomCalendarProvider;
.super Landroid/content/ContentProvider;
.source "CustomCalendarProvider.java"


# static fields
.field public static final AGENDA_AS_ICS_URI:Landroid/net/Uri;

.field public static final AGENDA_AS_VCALENDAR:I = 0x4

.field private static final AGENDA_FILENAME:Ljava/lang/String; = "Invite"

.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.calendar.provider.eventdata"

.field public static final CONTENT_EVENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.zte.calendar.provider.eventdata"

.field public static final CONTENT_EVENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.zte.calendar.provider.eventdata"

.field public static final CONTENT_ICS_TYPE:Ljava/lang/String; = "text/calendar"

.field public static final CONTENT_REMINDER_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.zte.calendar.provider.reminderdata"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEBUG:Z = false

.field public static final EVENT:I = 0x1

.field public static final EVENT_ID:I = 0x2

.field public static final REMINDER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "CustomCalendarProvider"

.field private static final sMatcher:Landroid/content/UriMatcher;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcn/nubia/calendar/db/CustomDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    const-string v0, "content://cn.nubia.calendar.provider.eventdata/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "content://cn.nubia.calendar.provider.eventdata/as_vcalendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->AGENDA_AS_ICS_URI:Landroid/net/Uri;

    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 55
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.calendar.provider.eventdata"

    const-string v2, "event"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.calendar.provider.eventdata"

    const-string v2, "event/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.calendar.provider.eventdata"

    const-string v2, "reminder"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.calendar.provider.eventdata"

    const-string v2, "as_vcalendar/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "stream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 305
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 306
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 307
    .local v0, "byteData":[B
    const-string v3, "Invite"

    .line 308
    invoke-static {v0, v3}, Lcn/nubia/calendar/util/CalendarReflectUtils;->parcelFileDescriptor_FromData([BLjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 309
    .local v2, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    array-length v3, v0

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, Lcn/nubia/calendar/db/CustomCalendarProvider;->makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 318
    .end local v0    # "byteData":[B
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v1

    .line 311
    .restart local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private makeAssetFileDescriptor(Landroid/os/ParcelFileDescriptor;J)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "length"    # J

    .prologue
    .line 332
    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private outputEventAsVCalendar(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;

    invoke-virtual {p0}, Lcn/nubia/calendar/db/CustomCalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;-><init>(Landroid/content/Context;)V

    .line 347
    .local v0, "vCalComposer":Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;
    new-instance v1, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$HandlerForOutputStream;-><init>(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;Ljava/io/OutputStream;)V

    .line 348
    invoke-virtual {v0, v1}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->addHandler(Lcn/nubia/vcalendar/vcreator/VCalendar20Composer$OneEntryHandler;)V

    .line 351
    invoke-virtual {v0, p2, p3}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 358
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    invoke-virtual {v0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->createOneEntry()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 365
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/vcalendar/vcreator/VCalendar20Composer;->terminate()V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 67
    sget-object v2, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unkonwn UrI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "customEventTable"

    .line 70
    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "count":I
    :goto_0
    return v0

    .line 74
    .end local v0    # "count":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "customEventTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " and ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v3, v4, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 83
    .restart local v0    # "count":I
    goto :goto_0

    .line 80
    .end local v0    # "count":I
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 85
    .end local v1    # "id":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "customReminderTable"

    .line 86
    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 88
    .restart local v0    # "count":I
    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 103
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType unknown uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.zte.calendar.provider.eventdata"

    .line 111
    :goto_0
    return-object v0

    .line 107
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.zte.calendar.provider.eventdata"

    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.zte.calendar.provider.reminderdata"

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "text/calendar"

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 126
    sget-object v4, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 127
    iget-object v4, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "customEventTable"

    .line 128
    invoke-virtual {v4, v5, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 130
    .local v2, "rowId":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    .line 131
    sget-object v4, Lcn/nubia/calendar/db/CustomCalendarProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 135
    .local v0, "eventUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/nubia/calendar/db/CustomCalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 136
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 160
    .end local v0    # "eventUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 139
    .end local v2    # "rowId":J
    :cond_0
    sget-object v4, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 140
    iget-object v4, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "customReminderTable"

    .line 141
    invoke-virtual {v4, v5, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 143
    .restart local v2    # "rowId":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    .line 144
    sget-object v4, Lcn/nubia/calendar/db/CustomDbHelper$CustomReminderTableColumn;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 149
    .restart local v0    # "eventUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcn/nubia/calendar/db/CustomCalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 157
    .end local v0    # "eventUri":Landroid/net/Uri;
    .end local v2    # "rowId":J
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert unknown uri"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v2    # "rowId":J
    :cond_2
    move-object v0, v1

    .line 160
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 169
    :try_start_0
    new-instance v1, Lcn/nubia/calendar/db/CustomDbHelper;

    invoke-virtual {p0}, Lcn/nubia/calendar/db/CustomCalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/calendar/db/CustomDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->dbHelper:Lcn/nubia/calendar/db/CustomDbHelper;

    .line 170
    iget-object v1, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->dbHelper:Lcn/nubia/calendar/db/CustomDbHelper;

    invoke-virtual {v1}, Lcn/nubia/calendar/db/CustomDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 280
    sget-object v4, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 293
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update unknown uri"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    :pswitch_0
    new-array v3, v5, [Ljava/lang/String;

    .line 283
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "lookupKey":Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 288
    const-string v2, "_id=?"

    .line 289
    .local v2, "selection":Ljava/lang/String;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 290
    .local v0, "localStream":Ljava/io/ByteArrayOutputStream;
    const-string v4, "_id=?"

    invoke-direct {p0, v0, v4, v3}, Lcn/nubia/calendar/db/CustomCalendarProvider;->outputEventAsVCalendar(Ljava/io/OutputStream;Ljava/lang/String;[Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v0}, Lcn/nubia/calendar/db/CustomCalendarProvider;->buildAssetFileDescriptor(Ljava/io/ByteArrayOutputStream;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    return-object v4

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 187
    sget-object v0, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query unknown uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "customEventTable"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    .line 190
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 225
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_0

    .line 226
    invoke-virtual {p0}, Lcn/nubia/calendar/db/CustomCalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 228
    :cond_0
    return-object v8

    .line 195
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 196
    .local v9, "id":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "customEventTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    .line 197
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 205
    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 202
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 207
    .end local v9    # "id":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "customReminderTable"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    .line 208
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 211
    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 213
    .end local v8    # "cursor":Landroid/database/Cursor;
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 214
    .local v10, "lookupKey":Ljava/lang/String;
    const-string v11, "SELECT \'Invite_\' || ? || \'.ics\' AS _display_name, NULL AS _size"

    .line 217
    .local v11, "sql":Ljava/lang/String;
    iget-object v0, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    invoke-virtual {v0, v11, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 218
    .restart local v8    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 238
    sget-object v2, Lcn/nubia/calendar/db/CustomCalendarProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update unknown uri"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 240
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "customEventTable"

    .line 241
    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/calendar/db/CustomCalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 271
    return v0

    .line 245
    .end local v0    # "count":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "customEventTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 252
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {v3, v4, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 255
    .restart local v0    # "count":I
    goto :goto_0

    .line 252
    .end local v0    # "count":I
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 257
    .end local v1    # "id":Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/calendar/db/CustomCalendarProvider;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "customReminderTable"

    .line 258
    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 260
    .restart local v0    # "count":I
    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
