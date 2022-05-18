.class Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CommonAdDBHelper.java"


# static fields
.field static final ADD_SQL:Ljava/lang/String; = "REPLACE INTO common_ad_info( common_ad_id , common_ad_data ) VALUES (?,?)"

.field static final COMMONAD_DATA:Ljava/lang/String; = "common_ad_data"

.field static final COMMONAD_ID:Ljava/lang/String; = "common_ad_id"

.field private static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS common_ad_info ( common_ad_id TEXT UNIQUE , common_ad_data TEXT )"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ssp_common_ad_info.db"

.field private static final DATABASE_VERSION:I = 0x1

.field static final DELETE_SQL:Ljava/lang/String; = "DELETE FROM common_ad_info WHERE common_ad_id = ?"

.field static final FIND_SQL:Ljava/lang/String; = "SELECT * FROM common_ad_info WHERE common_ad_id = ?"

.field static final TABLE_NAME:Ljava/lang/String; = "common_ad_info"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string v0, "ssp_common_ad_info.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS common_ad_info ( common_ad_id TEXT UNIQUE , common_ad_data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 47
    const-string v0, "DROP TABLE IF EXISTS common_ad_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "CREATE TABLE IF NOT EXISTS common_ad_info ( common_ad_id TEXT UNIQUE , common_ad_data TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method
