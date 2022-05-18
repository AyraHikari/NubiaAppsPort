.class public final Lcn/nubia/music/app/db/DataSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataSQLiteHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/db/DataSQLiteHelper$COLUMN_NAME;
    }
.end annotation


# static fields
.field private static final CREATE_TABLE_ALBUMS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS albums ( album_id INTEGER PRIMARY KEY,album TEXT UNIQUE NOT NULL,album_key TEXT,album_letter TEXT,album_art TEXT,album_img TEXT )"

.field private static final CREATE_TABLE_ARTISTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS artists ( artist_id INTEGER PRIMARY KEY,artist TEXT UNIQUE NOT NULL,artist_key TEXT,artist_letter TEXT,artist_netid TEXT,avg_80_80 TEXT,avg_120_120 TEXT,avg_220_220 TEXT,avg_330_330 TEXT,avg_400_400 TEXT,avg_640_640 TEXT,avg_720_720 TEXT,artist_img TEXT )"

.field public static final CREATE_TABLE_BLACKWHITELISTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS whitelists(_id INTEGER PRIMARY KEY AUTOINCREMENT,folder_name TEXT NOT NULL,folder_description TEXT NOT NULL,folder_is_checked INTEGER DEFAULT 0, folder_is_whitelist INTEGER DEFAULT 0, folder_is_selected INTEGER DEFAULT 0,folder_path TEXT NOT NULL )"

.field private static final CREATE_TABLE_FAVORITES:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS favorites ( _id INTEGER PRIMARY KEY AUTOINCREMENT,audio_id INTEGER )"

.field private static final CREATE_TABLE_IMAGES:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS images ( _id INTEGER PRIMARY KEY AUTOINCREMENT,album TEXT,artist TEXT,image_url TEXT,image_url_80_80 TEXT,image_url_120_120 TEXT,image_url_220_220 TEXT,image_url_330_330 TEXT,image_url_400_400 TEXT,image_url_640_640 TEXT,image_url_720_720 TEXT,image_path TEXT )"

.field private static final CREATE_TABLE_LYRICS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS lyrics ( lyric_id INTEGER PRIMARY KEY AUTOINCREMENT,lyric_name TEXT UNIQUE NOT NULL,lyric_path TEXT )"

.field public static final CREATE_TABLE_METADATA:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS metadata ( _id INTEGER PRIMARY KEY AUTOINCREMENT,data TEXT UNIQUE NOT NULL,title TEXT ,album TEXT,artist TEXT )"

.field public static final CREATE_TABLE_MUSICINFOS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS musicInfos ( _id INTEGER PRIMARY KEY AUTOINCREMENT,music_id INTEGER,data TEXT UNIQUE NOT NULL,title TEXT NOT NULL,title_key TEXT,title_letter TEXT,size INTEGER,duration INTEGER,artist_id INTEGER,album_id INTEGER,parent_path TEXT,song_id TEXT,type INTEGER DEFAULT 0,date_modified INTEGER DEFAULT 0,lyric_id INTEGER,insert_tag INTEGER DEFAULT 0,available_flag INTEGER DEFAULT 0 )"

.field private static final CREATE_TABLE_NOWPLAYINGS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS nowplayings ( _id INTEGER PRIMARY KEY AUTOINCREMENT,audio_id INTEGER DEFAULT 0)"

.field public static final CREATE_TABLE_PLAYHISTORY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS playhistory ( _id INTEGER PRIMARY KEY AUTOINCREMENT,history_audio_id INTEGER,palytime LONG )"

.field private static final CREATE_TABLE_PLAYLISTDATAS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS playlistdatas ( _id INTEGER PRIMARY KEY AUTOINCREMENT,playlist_id INTEGER,audio_id INTEGER )"

.field private static final CREATE_TABLE_PLAYLISTS:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS playlists ( playlist_id INTEGER PRIMARY KEY AUTOINCREMENT,playlist_name TEXT,playlist_type TEXT,playlist_media_id TEXT,playlist_image_url TEXT,image_url_80_80 TEXT,image_url_120_120 TEXT,image_url_220_220 TEXT,image_url_330_330 TEXT,image_url_400_400 TEXT,image_url_640_640 TEXT,image_url_720_720 TEXT )"

.field private static final CREATE_TRIGGER_ALBUMS:Ljava/lang/String; = "CREATE TRIGGER IF NOT EXISTS album_trigger DELETE ON albums BEGIN  DELETE FROM musicInfos WHERE album_id = old.album_id; END"

.field private static final CREATE_TRIGGER_ARTISTS:Ljava/lang/String; = "CREATE TRIGGER IF NOT EXISTS artist_trigger DELETE ON artists BEGIN  DELETE FROM musicInfos WHERE artist_id = old.artist_id; END"

.field private static final CREATE_TRIGGER_MUSIC:Ljava/lang/String; = "CREATE TRIGGER IF NOT EXISTS music_trigger DELETE ON musicInfos BEGIN DELETE FROM playlistdatas WHERE audio_id = old._id;DELETE FROM favorites WHERE audio_id = old._id;DELETE FROM nowplayings WHERE audio_id = old._id; END"

.field private static final CREATE_TRIGGER_PLAYLISTS:Ljava/lang/String; = "CREATE TRIGGER IF NOT EXISTS playlist_trigger DELETE ON playlists BEGIN  DELETE FROM playlistdatas WHERE playlist_id = old.playlist_id; END"

.field private static final CREATE_VIEW_ALUBMINFO:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS album_infos AS  SELECT audios.album_id, album, album_key, album_letter, album_art, album_img, image_url, image_url_80_80, image_url_120_120, image_url_220_220, image_url_330_330, image_url_400_400, image_url_640_640, image_url_720_720,  count(*) AS num_of_songs, artist FROM audios WHERE type =0  GROUP BY audios.album_id"

.field private static final CREATE_VIEW_ARTISTINFO:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS artist_infos AS  SELECT audios.artist_id, artist, artist_key, artist_letter, avg_80_80, avg_120_120, avg_220_220, avg_330_330, avg_400_400, avg_640_640, avg_720_720, artist_img,  COUNT(DISTINCT album ) AS num_of_albums,  COUNT(*) AS num_of_songs FROM audios WHERE type =0  GROUP BY audios.artist_id"

.field private static final CREATE_VIEW_AUDIO:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS audios AS SELECT * FROM musicInfos LEFT OUTER JOIN albums ON musicInfos.album_id = albums.album_id LEFT OUTER JOIN artists ON musicInfos.artist_id = artists.artist_id LEFT OUTER JOIN lyrics ON musicInfos.lyric_id = lyrics.lyric_id LEFT OUTER JOIN images ON albums.album = images.album AND artists.artist = images.artist"

.field private static final CREATE_VIEW_IMAGEINFO:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS image_infos AS  SELECT * FROM images"

.field private static final CREATE_VIEW_PLAYLISTINFO:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS playlist_infos AS  SELECT playlist_id,playlist_name,playlist_type,playlist_media_id,playlist_image_url,image_url_80_80,image_url_120_120,image_url_220_220,image_url_330_330,image_url_400_400,image_url_640_640,image_url_720_720,count(audio_id) AS playlist_num_songs from (select playlists.playlist_id,playlists.playlist_name,playlists.playlist_type,playlists.playlist_media_id,playlists.playlist_image_url,playlists.image_url_80_80,playlists.image_url_120_120,playlists.image_url_220_220,playlists.image_url_330_330,playlists.image_url_400_400,playlists.image_url_640_640,playlists.image_url_720_720,audio_id from  playlists left outer join playlistdatas on playlists.playlist_id = playlistdatas.playlist_id and playlistdatas.audio_id not null ) group by playlist_id"

.field private static final DATABASE_CLEAN_VERSION:I = 0x10

.field private static final DATABASE_NAME:Ljava/lang/String; = "nubiamusic.db"

.field private static final DATABASE_VERSION:I = 0x10

.field public static final TAB_ALBUMS:Ljava/lang/String; = "albums"

.field public static final TAB_ARTISTS:Ljava/lang/String; = "artists"

.field public static final TAB_DOWNLOADS:Ljava/lang/String; = "downloads"

.field public static final TAB_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final TAB_IMAGES:Ljava/lang/String; = "images"

.field public static final TAB_LYRICS:Ljava/lang/String; = "lyrics"

.field public static final TAB_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAB_MUSICINFOS:Ljava/lang/String; = "musicInfos"

.field public static final TAB_NOWPLAYINGS:Ljava/lang/String; = "nowplayings"

.field public static final TAB_PLAYHISTORY:Ljava/lang/String; = "playhistory"

.field public static final TAB_PLAYLISTDATAS:Ljava/lang/String; = "playlistdatas"

.field public static final TAB_PLAYLISTS:Ljava/lang/String; = "playlists"

.field public static final TAB_WHITELISTS:Ljava/lang/String; = "whitelists"

.field public static final TRIGGER_ALBUMS:Ljava/lang/String; = "album_trigger"

.field public static final TRIGGER_ARTISTS:Ljava/lang/String; = "artist_trigger"

.field public static final TRIGGER_MUSIC:Ljava/lang/String; = "music_trigger"

.field public static final TRIGGER_PLAYLISTS:Ljava/lang/String; = "playlist_trigger"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"

.field public static final VIEW_ALBUM:Ljava/lang/String; = "album_infos"

.field public static final VIEW_ARTIST:Ljava/lang/String; = "artist_infos"

.field public static final VIEW_AUDIO:Ljava/lang/String; = "audios"

.field public static final VIEW_IMAGE:Ljava/lang/String; = "image_infos"

.field public static final VIEW_PLAYLIST:Ljava/lang/String; = "playlist_infos"

.field private static mInstance:Lcn/nubia/music/app/db/DataSQLiteHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/db/DataSQLiteHelper;->mInstance:Lcn/nubia/music/app/db/DataSQLiteHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 341
    iput-object p1, p0, Lcn/nubia/music/app/db/DataSQLiteHelper;->mContext:Landroid/content/Context;

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 336
    iput-object p1, p0, Lcn/nubia/music/app/db/DataSQLiteHelper;->mContext:Landroid/content/Context;

    .line 337
    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 411
    const-string v0, "CREATE TABLE IF NOT EXISTS musicInfos ( _id INTEGER PRIMARY KEY AUTOINCREMENT,music_id INTEGER,data TEXT UNIQUE NOT NULL,title TEXT NOT NULL,title_key TEXT,title_letter TEXT,size INTEGER,duration INTEGER,artist_id INTEGER,album_id INTEGER,parent_path TEXT,song_id TEXT,type INTEGER DEFAULT 0,date_modified INTEGER DEFAULT 0,lyric_id INTEGER,insert_tag INTEGER DEFAULT 0,available_flag INTEGER DEFAULT 0 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 412
    const-string v0, "CREATE TABLE IF NOT EXISTS metadata ( _id INTEGER PRIMARY KEY AUTOINCREMENT,data TEXT UNIQUE NOT NULL,title TEXT ,album TEXT,artist TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 413
    const-string v0, "CREATE TABLE IF NOT EXISTS albums ( album_id INTEGER PRIMARY KEY,album TEXT UNIQUE NOT NULL,album_key TEXT,album_letter TEXT,album_art TEXT,album_img TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    const-string v0, "CREATE TABLE IF NOT EXISTS artists ( artist_id INTEGER PRIMARY KEY,artist TEXT UNIQUE NOT NULL,artist_key TEXT,artist_letter TEXT,artist_netid TEXT,avg_80_80 TEXT,avg_120_120 TEXT,avg_220_220 TEXT,avg_330_330 TEXT,avg_400_400 TEXT,avg_640_640 TEXT,avg_720_720 TEXT,artist_img TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 416
    const-string v0, "CREATE TABLE IF NOT EXISTS lyrics ( lyric_id INTEGER PRIMARY KEY AUTOINCREMENT,lyric_name TEXT UNIQUE NOT NULL,lyric_path TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    const-string v0, "CREATE TABLE IF NOT EXISTS favorites ( _id INTEGER PRIMARY KEY AUTOINCREMENT,audio_id INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 418
    const-string v0, "CREATE TABLE IF NOT EXISTS playlists ( playlist_id INTEGER PRIMARY KEY AUTOINCREMENT,playlist_name TEXT,playlist_type TEXT,playlist_media_id TEXT,playlist_image_url TEXT,image_url_80_80 TEXT,image_url_120_120 TEXT,image_url_220_220 TEXT,image_url_330_330 TEXT,image_url_400_400 TEXT,image_url_640_640 TEXT,image_url_720_720 TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 419
    const-string v0, "CREATE TABLE IF NOT EXISTS playlistdatas ( _id INTEGER PRIMARY KEY AUTOINCREMENT,playlist_id INTEGER,audio_id INTEGER )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 420
    const-string v0, "CREATE TABLE IF NOT EXISTS nowplayings ( _id INTEGER PRIMARY KEY AUTOINCREMENT,audio_id INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    const-string v0, "CREATE TABLE IF NOT EXISTS images ( _id INTEGER PRIMARY KEY AUTOINCREMENT,album TEXT,artist TEXT,image_url TEXT,image_url_80_80 TEXT,image_url_120_120 TEXT,image_url_220_220 TEXT,image_url_330_330 TEXT,image_url_400_400 TEXT,image_url_640_640 TEXT,image_url_720_720 TEXT,image_path TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    const-string v0, "CREATE TABLE IF NOT EXISTS whitelists(_id INTEGER PRIMARY KEY AUTOINCREMENT,folder_name TEXT NOT NULL,folder_description TEXT NOT NULL,folder_is_checked INTEGER DEFAULT 0, folder_is_whitelist INTEGER DEFAULT 0, folder_is_selected INTEGER DEFAULT 0,folder_path TEXT NOT NULL )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    const-string v0, "CREATE TABLE IF NOT EXISTS playhistory ( _id INTEGER PRIMARY KEY AUTOINCREMENT,history_audio_id INTEGER,palytime LONG )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 425
    const-string v0, "create"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 436
    const-string v0, "CREATE TRIGGER IF NOT EXISTS music_trigger DELETE ON musicInfos BEGIN DELETE FROM playlistdatas WHERE audio_id = old._id;DELETE FROM favorites WHERE audio_id = old._id;DELETE FROM nowplayings WHERE audio_id = old._id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const-string v0, "CREATE TRIGGER IF NOT EXISTS album_trigger DELETE ON albums BEGIN  DELETE FROM musicInfos WHERE album_id = old.album_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 438
    const-string v0, "CREATE TRIGGER IF NOT EXISTS artist_trigger DELETE ON artists BEGIN  DELETE FROM musicInfos WHERE artist_id = old.artist_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 439
    const-string v0, "CREATE TRIGGER IF NOT EXISTS playlist_trigger DELETE ON playlists BEGIN  DELETE FROM playlistdatas WHERE playlist_id = old.playlist_id; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method private createViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 397
    const-string v0, "CREATE VIEW IF NOT EXISTS audios AS SELECT * FROM musicInfos LEFT OUTER JOIN albums ON musicInfos.album_id = albums.album_id LEFT OUTER JOIN artists ON musicInfos.artist_id = artists.artist_id LEFT OUTER JOIN lyrics ON musicInfos.lyric_id = lyrics.lyric_id LEFT OUTER JOIN images ON albums.album = images.album AND artists.artist = images.artist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    const-string v0, "CREATE VIEW IF NOT EXISTS album_infos AS  SELECT audios.album_id, album, album_key, album_letter, album_art, album_img, image_url, image_url_80_80, image_url_120_120, image_url_220_220, image_url_330_330, image_url_400_400, image_url_640_640, image_url_720_720,  count(*) AS num_of_songs, artist FROM audios WHERE type =0  GROUP BY audios.album_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 400
    const-string v0, "CREATE VIEW IF NOT EXISTS artist_infos AS  SELECT audios.artist_id, artist, artist_key, artist_letter, avg_80_80, avg_120_120, avg_220_220, avg_330_330, avg_400_400, avg_640_640, avg_720_720, artist_img,  COUNT(DISTINCT album ) AS num_of_albums,  COUNT(*) AS num_of_songs FROM audios WHERE type =0  GROUP BY audios.artist_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    const-string v0, "CREATE VIEW IF NOT EXISTS image_infos AS  SELECT * FROM images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 402
    const-string v0, "CREATE VIEW IF NOT EXISTS playlist_infos AS  SELECT playlist_id,playlist_name,playlist_type,playlist_media_id,playlist_image_url,image_url_80_80,image_url_120_120,image_url_220_220,image_url_330_330,image_url_400_400,image_url_640_640,image_url_720_720,count(audio_id) AS playlist_num_songs from (select playlists.playlist_id,playlists.playlist_name,playlists.playlist_type,playlists.playlist_media_id,playlists.playlist_image_url,playlists.image_url_80_80,playlists.image_url_120_120,playlists.image_url_220_220,playlists.image_url_330_330,playlists.image_url_400_400,playlists.image_url_640_640,playlists.image_url_720_720,audio_id from  playlists left outer join playlistdatas on playlists.playlist_id = playlistdatas.playlist_id and playlistdatas.audio_id not null ) group by playlist_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 372
    const-string v0, "DROP TABLE IF EXISTS musicInfos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    const-string v0, "DROP TABLE IF EXISTS metadata"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    const-string v0, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    const-string v0, "DROP TABLE IF EXISTS artists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    const-string v0, "DROP TABLE IF EXISTS lyrics"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    const-string v0, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    const-string v0, "DROP TABLE IF EXISTS playlistdatas"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 380
    const-string v0, "DROP TABLE IF EXISTS playlists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 381
    const-string v0, "DROP TABLE IF EXISTS downloads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 382
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    const-string v0, "DROP TABLE IF EXISTS nowplayings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    const-string v0, "DROP TABLE IF EXISTS whitelists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method private dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 429
    const-string v0, "DROP TRIGGER IF EXISTS music_trigger"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 430
    const-string v0, "DROP TRIGGER IF EXISTS album_trigger"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    const-string v0, "DROP TRIGGER IF EXISTS artist_trigger"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    const-string v0, "DROP TRIGGER IF EXISTS playlist_trigger"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method private dropViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 388
    const-string v0, "DROP VIEW IF EXISTS audios"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 389
    const-string v0, "DROP VIEW IF EXISTS album_infos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    const-string v0, "DROP VIEW IF EXISTS artist_infos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 392
    const-string v0, "DROP VIEW IF EXISTS image_infos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 393
    const-string v0, "DROP VIEW IF EXISTS playlist_infos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/music/app/db/DataSQLiteHelper;
    .locals 4

    .prologue
    .line 328
    const-class v1, Lcn/nubia/music/app/db/DataSQLiteHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/music/app/db/DataSQLiteHelper;->mInstance:Lcn/nubia/music/app/db/DataSQLiteHelper;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcn/nubia/music/app/db/DataSQLiteHelper;

    const-string v2, "nubiamusic.db"

    const/16 v3, 0x10

    invoke-direct {v0, p0, v2, v3}, Lcn/nubia/music/app/db/DataSQLiteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/app/db/DataSQLiteHelper;->mInstance:Lcn/nubia/music/app/db/DataSQLiteHelper;

    .line 331
    :cond_0
    sget-object v0, Lcn/nubia/music/app/db/DataSQLiteHelper;->mInstance:Lcn/nubia/music/app/db/DataSQLiteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inserDefaultWhiteList(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    const v7, 0x7f0b00ee

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 475
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/app/db/DataSQLiteHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 476
    :cond_0
    const-string v0, "inserDefaultWhiteList, db is Null!"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 480
    :cond_1
    const-string v0, "inserDefaultWhiteList"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 481
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 485
    const-string v1, "folder_is_selected"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string v1, "folder_path"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "folder_is_whitelist"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    const v1, 0x7f0b01b4

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    const-string v2, "qqmusic"

    .line 495
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 501
    const v1, 0x7f0b01ad

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 503
    const-string v2, "Baidu_music"

    .line 504
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 507
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 510
    const v1, 0x7f0b01a7

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    const-string v2, "Download"

    .line 513
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 518
    const v1, 0x7f0b01b1

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 520
    const-string v2, "tencent/MobileQQ"

    .line 521
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 527
    const v1, 0x7f0b01b0

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 529
    const-string v2, "kgmusic"

    .line 530
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 536
    const v1, 0x7f0b01aa

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 538
    const-string v2, "LuooFM"

    .line 539
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 545
    const v1, 0x7f0b00ed

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    const-string v2, "NubiaMusic"

    .line 548
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 554
    const v1, 0x7f0b00ec

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 556
    const-string v2, "MusicCut"

    .line 557
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 563
    invoke-static {v7}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 565
    const-string v2, "NubiaRecorder"

    .line 566
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 571
    invoke-static {v7}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 573
    const-string v2, "neoRecorder"

    .line 574
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 579
    const v1, 0x7f0b01b3

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 581
    const-string v2, "puddingMusic"

    .line 582
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 588
    const v1, 0x7f0b00ef

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 590
    const-string v2, "record"

    .line 591
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 594
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 597
    const v1, 0x7f0b01ab

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 599
    const-string v2, "tencent/Qqmail"

    .line 600
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 603
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 606
    const v1, 0x7f0b01b6

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    const-string v2, "ttpod"

    .line 609
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 615
    const v1, 0x7f0b01ac

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 617
    const-string v2, "UCdownload"

    .line 618
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 621
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 624
    const v1, 0x7f0b01b7

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    const-string v2, "wandoujia"

    .line 627
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 633
    const v1, 0x7f0b01b8

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 635
    const-string v2, "xiami"

    .line 636
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 642
    const v1, 0x7f0b01a8

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 644
    const-string v2, "KuwoMusic"

    .line 645
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 651
    const v1, 0x7f0b01a5

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 653
    const-string v2, "DUOMI"

    .line 654
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 660
    const v1, 0x7f0b01a4

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 662
    const-string v2, "12530"

    .line 663
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 666
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 669
    const v1, 0x7f0b01a6

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 671
    const-string v2, "Doreso"

    .line 672
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 678
    const v1, 0x7f0b01b2

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 680
    const-string v2, "netease/cloudmusic"

    .line 681
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 687
    const v1, 0x7f0b01af

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 689
    const-string v2, "jdMusic"

    .line 690
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 693
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 696
    const v1, 0x7f0b01a9

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 698
    const-string v2, "KwTingShu"

    .line 699
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 705
    const v1, 0x7f0b01ae

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 707
    const-string v2, "bluetooth"

    .line 708
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v1, "folder_is_checked"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 714
    const v1, 0x7f0b01b5

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 716
    const-string v2, "ting"

    .line 717
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 723
    const v1, 0x7f0b00eb

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 725
    const-string v2, "Music"

    .line 726
    const-string v3, "folder_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v2, "folder_description"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v1, "folder_is_checked"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    const-string v1, "whitelists"

    invoke-virtual {p1, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method

.method private reCreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 406
    const-string v0, "DROP VIEW IF EXISTS audios"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const-string v0, "CREATE VIEW IF NOT EXISTS audios AS SELECT * FROM musicInfos LEFT OUTER JOIN albums ON musicInfos.album_id = albums.album_id LEFT OUTER JOIN artists ON musicInfos.artist_id = artists.artist_id LEFT OUTER JOIN lyrics ON musicInfos.lyric_id = lyrics.lyric_id LEFT OUTER JOIN images ON albums.album = images.album AND artists.artist = images.artist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 444
    if-le p2, p3, :cond_0

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Did you forget to wipe data?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 454
    :cond_0
    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    .line 455
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->dropViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 456
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 457
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->dropTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 459
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 460
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 461
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 463
    invoke-direct {p0, p1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->inserDefaultWhiteList(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 472
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 357
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/db/DataSQLiteHelper;->mInstance:Lcn/nubia/music/app/db/DataSQLiteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 362
    monitor-enter p0

    const/4 v0, 0x0

    .line 364
    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 368
    :goto_0
    monitor-exit p0

    return-object v0

    .line 365
    :catch_0
    move-exception v1

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/music/app/db/DataSQLiteHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 347
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/app/db/DataSQLiteHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 352
    return-void
.end method
