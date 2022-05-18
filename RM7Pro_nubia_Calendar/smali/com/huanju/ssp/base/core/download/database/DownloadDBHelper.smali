.class public Lcom/huanju/ssp/base/core/download/database/DownloadDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DownloadDBHelper.java"


# static fields
.field static final ADD_INSTALL_FAILED_INFO:Ljava/lang/String; = "REPLACE INTO install_failed_table_name(app_name , app_package_name , count ) VALUES (?,?,count+1)"

.field static final ADD_SQL:Ljava/lang/String; = "REPLACE INTO download_info(name , size , desc , down_url , downloaded_tracker , installed_tracker , open_tracker , click_tracker , deep_link_tracker , deep_link_path , down_path , file_state , download_expiration_time , start_time , net_type , e_tag) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

.field private static final APP_ICON:Ljava/lang/String; = "app_icon"

.field static final APP_NAME:Ljava/lang/String; = "app_name"

.field static final APP_PACKAGE_NAME:Ljava/lang/String; = "app_package_name"

.field private static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final CLICK_TRACKER:Ljava/lang/String; = "click_tracker"

.field static final COUNT:Ljava/lang/String; = "count"

.field private static final CREATE_INSTALL_FAILED_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS install_failed_table_name ( app_name TEXT , app_package_name TEXT , count INTEGER DEFAULT 0 , PRIMARY KEY(app_name , app_package_name));"

.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS download_info ( name TEXT , size INTEGER , desc TEXT , down_url TEXT , downloaded_tracker TEXT , installed_tracker TEXT , app_icon TEXT , app_version TEXT , reserve_1 TEXT , reserve_2 TEXT , open_tracker TEXT , click_tracker TEXT , deep_link_tracker TEXT , deep_link_path TEXT , down_path TEXT , file_state INTEGER , download_expiration_time INTEGER , start_time INTEGER , net_type INTEGER , e_tag TEXT ,PRIMARY KEY(down_url));"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ssp_download_info.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final DEEP_LINK_PATH:Ljava/lang/String; = "deep_link_path"

.field public static final DEEP_LINK_TRACKER:Ljava/lang/String; = "deep_link_tracker"

.field public static final DOWNLOADED_TRACKER:Ljava/lang/String; = "downloaded_tracker"

.field static final DOWNLOAD_EXPIRATION_TIME:Ljava/lang/String; = "download_expiration_time"

.field static final E_TAG:Ljava/lang/String; = "e_tag"

.field static final FILE_DESC:Ljava/lang/String; = "desc"

.field static final FILE_DOWN_PATH:Ljava/lang/String; = "down_path"

.field static final FILE_DOWN_URL:Ljava/lang/String; = "down_url"

.field static final FILE_NAME:Ljava/lang/String; = "name"

.field static final FILE_SIZE:Ljava/lang/String; = "size"

.field static final FILE_STATE:Ljava/lang/String; = "file_state"

.field public static final INSTALLED_TRACKER:Ljava/lang/String; = "installed_tracker"

.field static final INSTALL_FAILED_TABLE_NAME:Ljava/lang/String; = "install_failed_table_name"

.field static final NET_TYPE:Ljava/lang/String; = "net_type"

.field public static final OPEN_TRACKER:Ljava/lang/String; = "open_tracker"

.field private static final RESERVE_1:Ljava/lang/String; = "reserve_1"

.field private static final RESERVE_2:Ljava/lang/String; = "reserve_2"

.field static final START_TIME:Ljava/lang/String; = "start_time"

.field public static final S_DOWNLOADED_TRACKER:Ljava/lang/String; = "s_downloaded_tracker"

.field static final TABLE_NAME:Ljava/lang/String; = "download_info"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    const-string v0, "ssp_download_info.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 114
    const-string v0, "CREATE TABLE IF NOT EXISTS download_info ( name TEXT , size INTEGER , desc TEXT , down_url TEXT , downloaded_tracker TEXT , installed_tracker TEXT , app_icon TEXT , app_version TEXT , reserve_1 TEXT , reserve_2 TEXT , open_tracker TEXT , click_tracker TEXT , deep_link_tracker TEXT , deep_link_path TEXT , down_path TEXT , file_state INTEGER , download_expiration_time INTEGER , start_time INTEGER , net_type INTEGER , e_tag TEXT ,PRIMARY KEY(down_url));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "CREATE TABLE IF NOT EXISTS install_failed_table_name ( app_name TEXT , app_package_name TEXT , count INTEGER DEFAULT 0 , PRIMARY KEY(app_name , app_package_name));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 121
    const-string v0, "DROP TABLE IF EXISTS download_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "DROP TABLE IF EXISTS install_failed_table_name"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "CREATE TABLE IF NOT EXISTS download_info ( name TEXT , size INTEGER , desc TEXT , down_url TEXT , downloaded_tracker TEXT , installed_tracker TEXT , app_icon TEXT , app_version TEXT , reserve_1 TEXT , reserve_2 TEXT , open_tracker TEXT , click_tracker TEXT , deep_link_tracker TEXT , deep_link_path TEXT , down_path TEXT , file_state INTEGER , download_expiration_time INTEGER , start_time INTEGER , net_type INTEGER , e_tag TEXT ,PRIMARY KEY(down_url));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "CREATE TABLE IF NOT EXISTS install_failed_table_name ( app_name TEXT , app_package_name TEXT , count INTEGER DEFAULT 0 , PRIMARY KEY(app_name , app_package_name));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    return-void
.end method
