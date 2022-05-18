.class public Lcn/nubia/improve/database/MarkTable;
.super Ljava/lang/Object;
.source "MarkTable.java"


# static fields
.field public static final ADDEDTIME:Ljava/lang/String; = "addedtime"

.field public static final DATETAKEN:Ljava/lang/String; = "datetaken"

.field public static final HASHCODE:Ljava/lang/String; = "imageid"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final TABLENAME:Ljava/lang/String; = "recent"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPDATE_TABLE:Ljava/lang/String; = "ALTER TABLE recent ADD COLUMN datetaken long;"


# instance fields
.field private final DATABASE_CREATE:Ljava/lang/String;

.field private final ORDER_BY_ASC:Ljava/lang/String;

.field private final ORDER_BY_DESC:Ljava/lang/String;

.field private final PROJECTION:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "datetaken ASC, imageid ASC"

    .line 14
    iput-object v0, p0, Lcn/nubia/improve/database/MarkTable;->ORDER_BY_ASC:Ljava/lang/String;

    const-string v0, "datetaken DESC, imageid DESC"

    .line 16
    iput-object v0, p0, Lcn/nubia/improve/database/MarkTable;->ORDER_BY_DESC:Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "imageid"

    const-string v2, "type"

    const-string v3, "addedtime"

    const-string v4, "datetaken"

    .line 18
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/database/MarkTable;->PROJECTION:[Ljava/lang/String;

    const-string v0, "create table if not exists recent( _id integer primary key autoincrement,imageid text not null,type text not null,addedtime long not null,datetaken long not null)"

    .line 20
    iput-object v0, p0, Lcn/nubia/improve/database/MarkTable;->DATABASE_CREATE:Ljava/lang/String;

    return-void
.end method

.method public static getContentValues(IJI)Landroid/content/ContentValues;
    .locals 2

    .line 48
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "imageid"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "datetaken"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "addedtime"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 52
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table if not exists recent( _id integer primary key autoincrement,imageid text not null,type text not null,addedtime long not null,datetaken long not null)"

    .line 57
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS recent"

    .line 61
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getHashCode()Ljava/lang/String;
    .locals 1

    const-string v0, "imageid"

    return-object v0
.end method

.method public getOrderByTime()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportSortByASC()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "datetaken ASC, imageid ASC"

    goto :goto_0

    :cond_0
    const-string v0, "datetaken DESC, imageid DESC"

    :goto_0
    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/improve/database/MarkTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "recent"

    return-object v0
.end method
