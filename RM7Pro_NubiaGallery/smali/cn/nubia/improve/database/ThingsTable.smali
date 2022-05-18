.class public Lcn/nubia/improve/database/ThingsTable;
.super Ljava/lang/Object;
.source "ThingsTable.java"


# static fields
.field public static final ADD_COLUMN:Ljava/lang/String; = "alter table things add remove integer"

.field public static final CONFIDENCE_THRESHOLD:F

.field public static final DATABASE_CREATE:Ljava/lang/String; = "create table if not exists things( _data text not null,_id integer not null,datetaken long not null,tag_name text,tag_confidence float,group_name text,remove integer,primary key (_data, tag_name))"

.field public static final DATETAKEN:Ljava/lang/String; = "datetaken"

.field public static final DISTINCT_PROJECTION_GROUPBY:[Ljava/lang/String;

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS things"

.field public static final GROUP_NAME:Ljava/lang/String; = "group_name"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMAGEPATH:Ljava/lang/String; = "_data"

.field public static final INDEX_COUNT:I = 0x6

.field public static final INDEX_GROUP_NAME:I = 0x5

.field public static final INDEX_ID:I = 0x1

.field public static final INDEX_TAG_NAME:I = 0x3

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_GROUPBY:[Ljava/lang/String;

.field public static final REMOVE:Ljava/lang/String; = "remove"

.field public static final TABLENAME:Ljava/lang/String; = "things"

.field private static final TAG:Ljava/lang/String; = "ThingsTable"

.field public static final TAG_CONFIDENCE:Ljava/lang/String; = "tag_confidence"

.field public static final TAG_NAME:Ljava/lang/String; = "tag_name"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 24
    sget-object v0, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->sModelDataProcesser:Lcn/nubia/improve/category/algorithm/IModel;

    invoke-interface {v0}, Lcn/nubia/improve/category/algorithm/IModel;->getClassifyThreshold()F

    move-result v0

    sput v0, Lcn/nubia/improve/database/ThingsTable;->CONFIDENCE_THRESHOLD:F

    const-string v1, "_data"

    const-string v2, "_id"

    const-string v3, "datetaken"

    const-string v4, "tag_name"

    const-string v5, "tag_confidence"

    const-string v6, "group_name"

    const-string v7, "remove"

    .line 25
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/ThingsTable;->PROJECTION:[Ljava/lang/String;

    const-string v1, "_data"

    const-string v2, "_id"

    const-string v3, "datetaken"

    const-string v4, "tag_name"

    const-string v5, "tag_confidence"

    const-string v6, "group_name"

    const-string v7, "remove"

    const-string v8, "count(_id)"

    .line 34
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/ThingsTable;->PROJECTION_GROUPBY:[Ljava/lang/String;

    const-string v0, "group_name"

    const-string v1, "tag_name"

    const-string v2, "count(DISTINCT _data)"

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/ThingsTable;->DISTINCT_PROJECTION_GROUPBY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValues(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 88
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 89
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "datetaken"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "tag_name"

    .line 92
    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContentValues(Ljava/lang/String;IJLjava/lang/String;FLjava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 98
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 99
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "datetaken"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "tag_name"

    .line 102
    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "tag_confidence"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string p0, "group_name"

    .line 104
    invoke-virtual {v0, p0, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "ThingsTable"

    const-string v1, "txh createTable"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create table if not exists things( _data text not null,_id integer not null,datetaken long not null,tag_name text,tag_confidence float,group_name text,remove integer,primary key (_data, tag_name))"

    .line 72
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS things"

    .line 76
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 80
    sget-object v0, Lcn/nubia/improve/database/ThingsTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "things"

    return-object v0
.end method
