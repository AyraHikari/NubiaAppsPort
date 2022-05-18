.class public Lcn/nubia/improve/database/FaceOperationTable;
.super Ljava/lang/Object;
.source "FaceOperationTable.java"


# static fields
.field public static final ADD_COLUMN:Ljava/lang/String; = "alter table face_operation add default_cover integer"

.field public static final COVER_PATH:Ljava/lang/String; = "_data"

.field public static final DATABASE_CREATE:Ljava/lang/String; = "create table if not exists face_operation( face_id integer not null,name text,hide integer,ignore integer,_data text,default_cover integer,primary key (face_id))"

.field public static final DEFAULT_COVER_ID:Ljava/lang/String; = "default_cover"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS face_operation"

.field public static final FACE_ID:Ljava/lang/String; = "face_id"

.field public static final FACE_NAME:Ljava/lang/String; = "name"

.field public static final HIDE:Ljava/lang/String; = "hide"

.field public static final IGNORE:Ljava/lang/String; = "ignore"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLENAME:Ljava/lang/String; = "face_operation"

.field private static final TAG:Ljava/lang/String; = "FaceOperationTable"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "face_id"

    const-string v1, "name"

    const-string v2, "hide"

    const-string v3, "ignore"

    const-string v4, "_data"

    const-string v5, "default_cover"

    .line 20
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/FaceOperationTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentValues(II)Landroid/content/ContentValues;
    .locals 2

    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "face_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "ignore"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static getContentValues(ILjava/lang/String;IILjava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .line 66
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "face_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "name"

    .line 68
    invoke-virtual {v0, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "hide"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "ignore"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "_data"

    .line 71
    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "FaceOperationTable"

    const-string v1, "txh createTable"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create table if not exists face_operation( face_id integer not null,name text,hide integer,ignore integer,_data text,default_cover integer,primary key (face_id))"

    .line 49
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS face_operation"

    .line 53
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcn/nubia/improve/database/FaceOperationTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "face_operation"

    return-object v0
.end method
