.class Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ExpressionDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calculator2/ExpressionDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExpressionDBHelper"
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "Expressions.db"

.field public static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Expressions.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 146
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "CREATE TABLE expressions (_id INTEGER PRIMARY KEY,expression BLOB,flags INTEGER,timeStamp INTEGER)"

    .line 149
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX timestamp_index ON expressions(timeStamp)"

    .line 150
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP INDEX IF EXISTS timestamp_index"

    .line 154
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS expressions"

    .line 155
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/calculator2/ExpressionDB$ExpressionDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
