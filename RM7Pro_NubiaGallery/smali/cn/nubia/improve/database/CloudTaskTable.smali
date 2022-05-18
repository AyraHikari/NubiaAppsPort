.class public Lcn/nubia/improve/database/CloudTaskTable;
.super Ljava/lang/Object;
.source "CloudTaskTable.java"


# static fields
.field public static final ADD_DELETED_COLUMN:Ljava/lang/String; = "ALTER TABLE cloudtask ADD COLUMN deleted integer;"

.field public static final ADD_DIRTY_COLUMN:Ljava/lang/String; = "ALTER TABLE cloudtask ADD COLUMN dirty integer;"

.field public static final ADD_SERVER_ID_COLUMN:Ljava/lang/String; = "ALTER TABLE cloudtask ADD COLUMN serverid integer;"

.field public static final DATABASE_CREATE:Ljava/lang/String; = "create table if not exists cloudtask( _id integer primary key autoincrement,taskid integer not null,tasktype integer not null,sourcetype integer not null,cloudpath text not null,localpath text not null,totalsize integer not null,currentsize integer not null,state integer not null,donetime integer,foldername text,rate integer,deleted integer,dirty integer,serverid integer)"


# instance fields
.field private final PROJECTION:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_id"

    const-string v1, "taskid"

    const-string v2, "tasktype"

    const-string v3, "sourcetype"

    const-string v4, "cloudpath"

    const-string v5, "localpath"

    const-string v6, "currentsize"

    const-string v7, "state"

    const-string v8, "rate"

    const-string v9, "foldername"

    const-string v10, "serverid"

    const-string v11, "deleted"

    const-string v12, "totalsize"

    const-string v13, "donetime"

    const-string v14, "dirty"

    .line 9
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/database/CloudTaskTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table if not exists cloudtask( _id integer primary key autoincrement,taskid integer not null,tasktype integer not null,sourcetype integer not null,cloudpath text not null,localpath text not null,totalsize integer not null,currentsize integer not null,state integer not null,donetime integer,foldername text,rate integer,deleted integer,dirty integer,serverid integer)"

    .line 55
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS cloudtask"

    .line 59
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcn/nubia/improve/database/CloudTaskTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "cloudtask"

    return-object v0
.end method
