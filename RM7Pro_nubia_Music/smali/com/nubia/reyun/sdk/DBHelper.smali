.class public Lcom/nubia/reyun/sdk/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field static final DB_NAME:Ljava/lang/String; = "Reyun.db"

.field private static final VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 14
    const-string v0, "Reyun.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 19
    const-string v0, "CREATE TABLE IF NOT EXISTS game(_id INTEGER PRIMARY KEY AUTOINCREMENT, what char, value BLOB, priority INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    const-string v0, "CREATE TABLE IF NOT EXISTS audit(_id INTEGER PRIMARY KEY AUTOINCREMENT, account_id char, day INTEGER, event_name TEXT, count INTEGER, timestamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 33
    const-string v0, "CREATE TABLE IF NOT EXISTS audit(_id INTEGER PRIMARY KEY AUTOINCREMENT, account_id char, day INTEGER, event_name TEXT, count INTEGER, timestamp INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method
