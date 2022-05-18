.class public Lcn/nubia/improve/database/PlaceTable;
.super Ljava/lang/Object;
.source "PlaceTable.java"


# static fields
.field public static final CITY:Ljava/lang/String; = "city"

.field public static final CITYCLASSIFICATION:Ljava/lang/String; = "city_classification"

.field public static final COUNTRY:Ljava/lang/String; = "country"

.field public static final DATABASE_CREATE:Ljava/lang/String; = "create table if not exists place( _data text primary key,_id integer not null,country text,city text,is_permanent integer,latitude double not null,longitude double not null,datetaken long,language text,city_classification text)"

.field public static final DATETAKEN:Ljava/lang/String; = "datetaken"

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS place"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMAGEPATH:Ljava/lang/String; = "_data"

.field public static final INDEX_CITYCLASSIFICATION:I = 0x9

.field public static final INDEX_COUNT:I = 0xa

.field public static final INDEX_ID:I = 0x1

.field public static final ISPERMANENT:Ljava/lang/String; = "is_permanent"

.field private static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final PROJECTION_GROUPBY:[Ljava/lang/String;

.field public static final TABLENAME:Ljava/lang/String; = "place"

.field private static final TAG:Ljava/lang/String; = "PlaceTable"


# instance fields
.field private final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "_data"

    const-string v1, "_id"

    const-string v2, "country"

    const-string v3, "city"

    const-string v4, "is_permanent"

    const-string v5, "latitude"

    const-string v6, "longitude"

    const-string v7, "datetaken"

    const-string v8, "language"

    const-string v9, "city_classification"

    const-string v10, "count(_id)"

    .line 40
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/PlaceTable;->PROJECTION_GROUPBY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_data"

    const-string v1, "_id"

    const-string v2, "country"

    const-string v3, "city"

    const-string v4, "is_permanent"

    const-string v5, "latitude"

    const-string v6, "longitude"

    const-string v7, "datetaken"

    const-string v8, "language"

    const-string v9, "city_classification"

    .line 27
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/database/PlaceTable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getContentValues(Lcn/nubia/improve/category/PlaceTag;)Landroid/content/ContentValues;
    .locals 3

    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/improve/category/PlaceTag$Param;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/improve/category/PlaceTag$Param;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getCity()Ljava/lang/String;

    move-result-object v1

    const-string v2, "city"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/improve/category/PlaceTag$Param;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 106
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/improve/category/PlaceTag$Param;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 107
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getParam()Lcn/nubia/improve/category/PlaceTag$Param;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/improve/category/PlaceTag$Param;->getDateTaken()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "datetaken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "language"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/improve/category/PlaceTag;->getCityClassification()Ljava/lang/String;

    move-result-object p0

    const-string v1, "city_classification"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContentValues(Ljava/lang/String;IDD)Landroid/content/ContentValues;
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
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "latitude"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 95
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "PlaceTable"

    const-string v1, "txh createTable"

    .line 73
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "create table if not exists place( _data text primary key,_id integer not null,country text,city text,is_permanent integer,latitude double not null,longitude double not null,datetaken long,language text,city_classification text)"

    .line 74
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS place"

    .line 78
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/nubia/improve/database/PlaceTable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    const-string v0, "place"

    return-object v0
.end method
