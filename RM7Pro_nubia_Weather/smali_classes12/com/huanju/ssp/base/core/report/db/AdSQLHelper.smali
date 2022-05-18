.class public Lcom/huanju/ssp/base/core/report/db/AdSQLHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AdSQLHelper.java"


# static fields
.field public static final AD_CONFIG_TABLE:Ljava/lang/String; = "ad_config"

.field private static final CREATE_AD_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ad_cache( _id INTEGER UNIQUE, request_time TEXT NOT NULL, ad_cache TEXT NOT NULL );"

.field private static final CREATE_AD_SSP_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS ad_config( _id INTEGER UNIQUE, request_time TEXT NOT NULL, slot_id TEXT NOT NULL, config TEXT NOT NULL );"

.field private static final CREATE_ERO_CACHE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS error_cache( _id INTEGER PRIMARY KEY AUTOINCREMENT, error_msg TEXT NOT NULL);"

.field private static final CREATE_EXCEPTION_CACHE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS exception_cache( _id INTEGER PRIMARY KEY AUTOINCREMENT, exception_msg TEXT NOT NULL);"

.field private static final CREATE_REPORT_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS report_config( _id INTEGER UNIQUE, request_time TEXT NOT NULL, config TEXT NOT NULL );"

.field private static final CREATE_TRACKERS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS trackers( _id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT NOT NULL , last_request_time TEXT NOT NULL );"

.field private static final DATABASE_NAME:Ljava/lang/String; = "nubia_ad.db"

.field private static final DATABASE_VERSION:I = 0x5

.field public static final ERROR_TABLE:Ljava/lang/String; = "error_cache"

.field public static final EXCEPTION_TABLE:Ljava/lang/String; = "exception_cache"

.field public static final LOCK_AD_CACHE_INFO:Ljava/lang/String; = "ad_cache"

.field public static final REPORT_CONFIG_TABLE:Ljava/lang/String; = "report_config"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string v0, "nubia_ad.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 97
    const-string v0, "CREATE TABLE IF NOT EXISTS trackers( _id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT NOT NULL , last_request_time TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "CREATE TABLE IF NOT EXISTS error_cache( _id INTEGER PRIMARY KEY AUTOINCREMENT, error_msg TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const-string v0, "CREATE TABLE IF NOT EXISTS exception_cache( _id INTEGER PRIMARY KEY AUTOINCREMENT, exception_msg TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    const-string v0, "CREATE TABLE IF NOT EXISTS ad_cache( _id INTEGER UNIQUE, request_time TEXT NOT NULL, ad_cache TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 101
    const-string v0, "CREATE TABLE IF NOT EXISTS report_config( _id INTEGER UNIQUE, request_time TEXT NOT NULL, config TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "CREATE TABLE IF NOT EXISTS ad_config( _id INTEGER UNIQUE, request_time TEXT NOT NULL, slot_id TEXT NOT NULL, config TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v1, 0x4

    .line 107
    if-ge p2, v1, :cond_0

    .line 108
    const-string v0, "DROP TABLE IF EXISTS trackers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    const-string v0, "DROP TABLE IF EXISTS error_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    const-string v0, "DROP TABLE IF EXISTS exception_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE TABLE IF NOT EXISTS trackers( _id INTEGER PRIMARY KEY AUTOINCREMENT, url TEXT NOT NULL , last_request_time TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "CREATE TABLE IF NOT EXISTS error_cache( _id INTEGER PRIMARY KEY AUTOINCREMENT, error_msg TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "CREATE TABLE IF NOT EXISTS exception_cache( _id INTEGER PRIMARY KEY AUTOINCREMENT, exception_msg TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "CREATE TABLE IF NOT EXISTS ad_cache( _id INTEGER UNIQUE, request_time TEXT NOT NULL, ad_cache TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    :cond_0
    const/4 v0, 0x5

    if-lt p3, v0, :cond_1

    if-gt p2, v1, :cond_1

    .line 117
    const-string v0, "DROP TABLE IF EXISTS report_config"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "DROP TABLE IF EXISTS ad_config"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "CREATE TABLE IF NOT EXISTS report_config( _id INTEGER UNIQUE, request_time TEXT NOT NULL, config TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "CREATE TABLE IF NOT EXISTS ad_config( _id INTEGER UNIQUE, request_time TEXT NOT NULL, slot_id TEXT NOT NULL, config TEXT NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    :cond_1
    return-void
.end method
