.class public Lcn/nubia/improve/database/FaceTable;
.super Ljava/lang/Object;
.source "FaceTable.java"


# static fields
.field public static final DATABASE_CREATE:Ljava/lang/String; = "create table if not exists face( _data text not null,_id integer not null,datetaken long not null,face_id integer,face_x integer,face_y integer,face_width integer,face_height integer,quality float,merge_id integer,remove integer,primary key (_data, face_id))"

.field public static final DATETAKEN:Ljava/lang/String; = "datetaken"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS face"

.field public static final FACE_HEIGHT:Ljava/lang/String; = "face_height"

.field public static final FACE_ID:Ljava/lang/String; = "face_id"

.field public static final FACE_WIDTH:Ljava/lang/String; = "face_width"

.field public static final FACE_X:Ljava/lang/String; = "face_x"

.field public static final FACE_Y:Ljava/lang/String; = "face_y"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMAGEPATH:Ljava/lang/String; = "_data"

.field public static final MERGE_ID:Ljava/lang/String; = "merge_id"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_GROUPBY:[Ljava/lang/String;

.field public static final QUALITY:Ljava/lang/String; = "quality"

.field public static final REMOVE:Ljava/lang/String; = "remove"

.field public static final TABLENAME:Ljava/lang/String; = "face"

.field private static final TAG:Ljava/lang/String; = "FaceTable"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "_data"

    const-string v1, "_id"

    const-string v2, "datetaken"

    const-string v3, "face_id"

    const-string v4, "face_x"

    const-string v5, "face_y"

    const-string v6, "face_width"

    const-string v7, "face_height"

    const-string v8, "quality"

    const-string v9, "merge_id"

    const-string v10, "remove"

    .line 25
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/FaceTable;->PROJECTION:[Ljava/lang/String;

    const-string v1, "_data"

    const-string v2, "_id"

    const-string v3, "datetaken"

    const-string v4, "face_id"

    const-string v5, "face_x"

    const-string v6, "face_y"

    const-string v7, "face_width"

    const-string v8, "face_height"

    const-string v9, "quality"

    const-string v10, "merge_id"

    const-string v11, "remove"

    const-string v12, "count(_id)"

    .line 38
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/FaceTable;->PROJECTION_GROUPBY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValues(Ljava/lang/String;IJI)Landroid/content/ContentValues;
    .locals 2

    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 92
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "datetaken"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "face_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "merge_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static getContentValues(Ljava/lang/String;IJIIIIIF)Landroid/content/ContentValues;
    .locals 2

    .line 102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 103
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "datetaken"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 106
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "face_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "face_x"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "face_y"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "face_width"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "face_height"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    invoke-static {p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "quality"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 112
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "merge_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "FaceTable"

    const-string v1, "txh createTable"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create table if not exists face( _data text not null,_id integer not null,datetaken long not null,face_id integer,face_x integer,face_y integer,face_width integer,face_height integer,quality float,merge_id integer,remove integer,primary key (_data, face_id))"

    .line 75
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS face"

    .line 79
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcn/nubia/improve/database/FaceTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "face"

    return-object v0
.end method
