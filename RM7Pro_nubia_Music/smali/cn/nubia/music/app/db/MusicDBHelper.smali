.class public Lcn/nubia/music/app/db/MusicDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MusicDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/db/MusicDBHelper$a;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "nubiaMp3DB.db"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final DOWNLOAD_ITEMS:I = 0x4

.field public static final DOWNLOAD_ITEM_ID:I = 0x5

.field public static final TABLE_DOWNLOAD:Ljava/lang/String; = "download"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static instance:Lcn/nubia/music/app/db/MusicDBHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->instance:Lcn/nubia/music/app/db/MusicDBHelper;

    .line 26
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 32
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubiaMp3"

    const-string v2, "download"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "nubiaMp3"

    const-string v2, "download/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 29
    iput-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    iput-object p1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicDBHelper;->openDataBase()V

    .line 40
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS download( _id INTEGER PRIMARY KEY,_data TEXT ,url TEXT , url_md TEXT ,singer_img TEXT,lyric_url TEXT , track_title TEXT,artist TEXT,album TEXT,file_type INTEGER , postfix TEXT ,total_bytes INTEGER,current_bytes INTEGER, save_path TEXT ,save_name TEXT,file_name TEXT,visibility INTEGER,control INTEGER,status INTEGER,added_time INTEGER,last_mod INTEGER ,scanned INTEGER ,bitrate TEXT ,song_id INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "++++couldn\'t create table in downloads database"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 89
    throw v0
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 95
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS download"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "++++ouldn\'t drop table in downloads database"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 98
    throw v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcn/nubia/music/app/db/MusicDBHelper;
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->instance:Lcn/nubia/music/app/db/MusicDBHelper;

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->instance:Lcn/nubia/music/app/db/MusicDBHelper;

    .line 56
    :goto_0
    return-object v0

    .line 46
    :cond_0
    const-class v1, Lcn/nubia/music/app/db/MusicDBHelper;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->instance:Lcn/nubia/music/app/db/MusicDBHelper;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Lcn/nubia/music/app/db/MusicDBHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcn/nubia/music/app/db/MusicDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->instance:Lcn/nubia/music/app/db/MusicDBHelper;

    .line 51
    :cond_1
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->instance:Lcn/nubia/music/app/db/MusicDBHelper;

    iget-object v0, v0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->instance:Lcn/nubia/music/app/db/MusicDBHelper;

    .line 55
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->instance:Lcn/nubia/music/app/db/MusicDBHelper;

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 152
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++insertInternal,uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",match:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v1

    .line 161
    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 177
    goto :goto_0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 165
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/nubia/music/app/db/MusicDBConfig$DownloadItemColumns;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++insert DOWNLOAD_ITEMS,newUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeDataBase()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    sget-object v1, Lcn/nubia/music/app/db/MusicDBHelper;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++delete,uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 253
    iget-object v1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 271
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 272
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicDBHelper;->closeDataBase()V

    .line 273
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/music/app/db/MusicDBHelper;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/app/db/MusicDBHelper;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 145
    iget-object v1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 147
    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 60
    const-string v0, "+++DatabaseHelper create new database!!!"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 62
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/MusicDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++updateDatabase,fromVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",toVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/MusicDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 70
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/MusicDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void
.end method

.method public final openDataBase()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/music/app/db/MusicDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    const-string v0, "+++DatabaseHelper open database!!!"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    iput-object v1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    .line 80
    iput-object v1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 104
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++query,url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",table:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 108
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 109
    iget-object v2, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v5

    .line 114
    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 117
    :cond_2
    const-string v7, "added_time DESC"

    .line 119
    :goto_1
    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 121
    if-eqz p4, :cond_3

    .line 122
    array-length v2, p4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, p4, v1

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query string selectionArgs: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 126
    :cond_3
    iget-object v1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_4

    .line 130
    new-instance v0, Lcn/nubia/music/app/db/MusicDBHelper$a;

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/app/db/MusicDBHelper$a;-><init>(Lcn/nubia/music/app/db/MusicDBHelper;Landroid/database/Cursor;)V

    :goto_3
    move-object v5, v0

    .line 132
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v7, p5

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 185
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/app/db/MusicDBHelper;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 190
    .line 192
    sget-object v0, Lcn/nubia/music/app/db/MusicDBHelper;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+++update,uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",match:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 237
    :cond_1
    :goto_0
    return v0

    .line 199
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 233
    const-string v0, "++unknown uri!"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 234
    goto :goto_0

    .line 201
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 203
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v0, v1

    .line 211
    :goto_1
    if-eqz p5, :cond_1

    .line 212
    iget-object v1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    move v0, v1

    .line 207
    goto :goto_1

    :cond_3
    move v0, v1

    .line 209
    goto :goto_1

    .line 216
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++DOWNLOAD_ITEM_ID,update ,mywhere:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download"

    invoke-virtual {v1, v2, p2, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 228
    :goto_2
    if-eqz p5, :cond_1

    .line 229
    iget-object v1, p0, Lcn/nubia/music/app/db/MusicDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 226
    goto :goto_2

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
