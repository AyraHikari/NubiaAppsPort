.class public Lcn/nubia/improve/database/GalleryDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "GalleryDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;,
        Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;
    }
.end annotation


# static fields
.field private static final DATABASENAME:Ljava/lang/String; = "gallery.db"

.field private static final DB_VERSION_10:I = 0xa

.field private static final DB_VERSION_11:I = 0xb

.field private static final DB_VERSION_12:I = 0xc

.field private static final DB_VERSION_13:I = 0xd

.field private static final DB_VERSION_14:I = 0xe

.field private static final DB_VERSION_2:I = 0x2

.field private static final DB_VERSION_3:I = 0x3

.field private static final DB_VERSION_4:I = 0x4

.field private static final DB_VERSION_5:I = 0x5

.field private static final DB_VERSION_6:I = 0x6

.field private static final DB_VERSION_7:I = 0x7

.field private static final DB_VERSION_8:I = 0x8

.field private static final DB_VERSION_9:I = 0x9

.field private static DEBUG:Z = true

.field private static TAG:Ljava/lang/String; = "GalleryDatabaseHelper"

.field private static final UPDATE_SQL:Ljava/lang/String; = "select face_id from face_operation where face_id not in (select merge_id from face where merge_id == face_operation.face_id and merge_id >= 0 and (remove is NULL or remove <> 1) group by merge_id)"

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mSingleton:Lcn/nubia/improve/database/GalleryDatabaseHelper;

.field private static mTableManager:Lcn/nubia/improve/database/TableManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifierMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "gallery.db"

    const/4 v1, 0x0

    const/16 v2, 0xe

    .line 56
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mListeners:Ljava/util/WeakHashMap;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mNotifierMap:Landroid/util/SparseArray;

    .line 57
    sget-boolean v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "txh creating database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iput-object p1, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 706
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " LIMIT 0"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    invoke-interface {v0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    move v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 709
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 710
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkColumnExist e="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    :cond_0
    :goto_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v1

    :goto_1
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 713
    throw p1
.end method

.method private deleteFaceDB()V
    .locals 4

    .line 718
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/cn.nubia.gallery3d/databases/FaceClassifier.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 720
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 725
    sget-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFaceDB e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private dropHideTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS hide"

    .line 425
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private getContentValues(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 1

    .line 244
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/nubia/improve/database/TableManager;->getContentValues(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getFaceOperationSelection(I)Ljava/lang/String;
    .locals 3

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "face_id"

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;
    .locals 2

    const-class v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mSingleton:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-direct {v1, p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mSingleton:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    .line 67
    :cond_0
    sget-object p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-nez p0, :cond_1

    .line 68
    invoke-static {}, Lcn/nubia/improve/database/TableManager;->getInstance()Lcn/nubia/improve/database/TableManager;

    move-result-object p0

    sput-object p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    .line 70
    :cond_1
    sget-object p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p0, :cond_2

    .line 71
    sget-object p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mSingleton:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    sput-object p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    :cond_2
    sget-object p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mSingleton:Lcn/nubia/improve/database/GalleryDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTableName(I)Ljava/lang/String;
    .locals 1

    .line 236
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/TableManager;->getTableName(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getTableProjection(I)[Ljava/lang/String;
    .locals 1

    .line 251
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/TableManager;->getProjection(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private modifyCloudTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE cloudtask ADD COLUMN deleted integer;"

    .line 419
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE cloudtask ADD COLUMN dirty integer;"

    .line 420
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE cloudtask ADD COLUMN serverid integer;"

    .line 421
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private operatesForVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS multishoot"

    .line 414
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS bigshow"

    .line 415
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private wipeAndRecreateFaceDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteFaceDB()V

    const-string v0, "DROP TABLE IF EXISTS face"

    .line 152
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS face_operation"

    .line 153
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists face( _data text not null,_id integer not null,datetaken long not null,face_id integer,face_x integer,face_y integer,face_width integer,face_height integer,quality float,merge_id integer,remove integer,primary key (_data, face_id))"

    .line 154
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists face_operation( face_id integer not null,name text,hide integer,ignore integer,_data text,default_cover integer,primary key (face_id))"

    .line 155
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized bulkMergeFaceAlbum(Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x4

    .line 574
    :try_start_0
    invoke-direct {p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "merge_id"

    .line 576
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "merge_id"

    .line 578
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    sget-object v4, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    .line 582
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    const-string v5, "\'"

    .line 583
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 586
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 588
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 590
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :try_start_2
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 592
    :try_start_3
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bulkMergeFaceAlbum exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 595
    :try_start_4
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 597
    :goto_2
    invoke-virtual {p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 598
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 599
    monitor-exit p0

    return-void

    .line 595
    :goto_3
    :try_start_5
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 596
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deleteItem(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public deleteItem(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .line 311
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    sget-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 313
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 314
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V

    return p2
.end method

.method public deleteItemWithoutNotification(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    .line 321
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object p1

    .line 322
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOrderByTime()Ljava/lang/String;
    .locals 1

    .line 367
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcn/nubia/improve/database/TableManager;->getOrderByTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableHashCode(I)Ljava/lang/String;
    .locals 1

    .line 360
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/TableManager;->getTableHashCode(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized hideOrShowFace(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v2, 0x5

    .line 631
    :try_start_0
    invoke-direct {v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    sget-object v3, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v14, 0x0

    move v15, v14

    const/16 v16, 0x0

    .line 637
    :goto_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_2

    .line 638
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "hide"

    .line 639
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v9, p1

    .line 640
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v3, "face_id"

    .line 641
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    .line 642
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    .line 643
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v7, p2

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and ("

    .line 644
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is NULL or "

    .line 645
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ignore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <> 1)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    sget-object v3, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "face_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    .line 647
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v4, v0

    move-object/from16 v7, v17

    move v2, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object v13, v10

    move-object/from16 v10, v20

    .line 646
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    .line 648
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 650
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 651
    invoke-virtual {v1, v2, v4}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mergeFaceAlbum(II)V

    .line 653
    :cond_0
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v12, v14, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v4, "face_id"

    .line 654
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    sget-object v4, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v13, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "face_id"

    .line 657
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0, v6, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 660
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v11, v14, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v16, v3

    const/4 v2, 0x5

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_2

    .line 662
    :cond_2
    :try_start_3
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 667
    :try_start_4
    invoke-static/range {v16 .. v16}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 668
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v2, 0x5

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 664
    :goto_2
    :try_start_5
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideFace exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 667
    :try_start_6
    invoke-static/range {v16 .. v16}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 668
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 670
    :goto_3
    invoke-virtual {v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 672
    monitor-exit p0

    return-void

    .line 667
    :goto_4
    :try_start_7
    invoke-static/range {v16 .. v16}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 668
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 669
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ignoreFace(ILjava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    monitor-enter p0

    .line 542
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "ignore"

    .line 544
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    move v3, v2

    .line 549
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 550
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 551
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p3, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v5, "face_id"

    .line 552
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    sget-object v5, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "face_id"

    .line 555
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    sget-object v4, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v0, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 559
    :cond_1
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :try_start_2
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    :goto_1
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p2

    .line 561
    :try_start_3
    sget-object p3, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreFace exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 564
    :try_start_4
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 566
    :goto_2
    invoke-virtual {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 567
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 568
    monitor-exit p0

    return-void

    .line 564
    :goto_3
    :try_start_5
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 565
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public insertValues(ILandroid/content/ContentValues;)J
    .locals 3

    .line 220
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    sget-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 222
    invoke-virtual {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 223
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V

    return-wide v0
.end method

.method public insertValues(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .line 213
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    .line 214
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V

    return-wide p1
.end method

.method public insertValuesWithoutNotification(ILandroid/content/ContentValues;)J
    .locals 2

    .line 229
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object p1

    .line 230
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public mergeFaceAlbum(II)V
    .locals 5

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 605
    invoke-direct {p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v1

    .line 606
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 607
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v3, "merge_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 608
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 612
    :try_start_0
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 613
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :goto_0
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 615
    :try_start_1
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mergeFaceAlbum exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 620
    :goto_1
    invoke-virtual {p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 621
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V

    return-void

    .line 618
    :goto_2
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 619
    throw p1
.end method

.method public modifyMarkTime(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const-string v0, "ALTER TABLE recent ADD COLUMN datetaken long;"

    .line 374
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/improve/database/TableManager;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "imageid"

    .line 376
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_2

    .line 381
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 382
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 383
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    const-string v5, ","

    .line 384
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 388
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 389
    throw p1

    :cond_2
    :goto_1
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "_id in (%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 392
    iget-object v3, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id"

    const-string v4, "datetaken"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 398
    :goto_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 399
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 400
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 401
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 402
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "imageid=?"

    new-array v7, v2, [Ljava/lang/String;

    .line 404
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v1

    .line 403
    invoke-virtual {p1, v0, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 407
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 408
    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method public notifyMediaSetToUpdateData()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 347
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;

    .line 348
    invoke-interface {v1}, Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;->onDataUpdate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMediaSetToUpdateData(I)V
    .locals 1

    .line 353
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mNotifierMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;->onDataUpdate()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 93
    sget-boolean v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "txh oncreate..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-static {}, Lcn/nubia/improve/database/TableManager;->getInstance()Lcn/nubia/improve/database/TableManager;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    .line 97
    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/TableManager;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 160
    sget-boolean p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 161
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    const-string p3, "txh onDowngrade"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    invoke-virtual {p2, p1}, Lcn/nubia/improve/database/TableManager;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 164
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    invoke-virtual {p2, p1}, Lcn/nubia/improve/database/TableManager;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 102
    sget-boolean v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "txh onUpgrade old version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p3, "create table if not exists things( _data text not null,_id integer not null,datetaken long not null,tag_name text,tag_confidence float,group_name text,remove integer,primary key (_data, tag_name))"

    const-string v0, "create table if not exists place( _data text primary key,_id integer not null,country text,city text,is_permanent integer,latitude double not null,longitude double not null,datetaken long,language text,city_classification text)"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p2, "create table if not exists cloudtask( _id integer primary key autoincrement,taskid integer not null,tasktype integer not null,sourcetype integer not null,cloudpath text not null,localpath text not null,totalsize integer not null,currentsize integer not null,state integer not null,donetime integer,foldername text,rate integer,deleted integer,dirty integer,serverid integer)"

    .line 107
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 109
    :pswitch_1
    invoke-virtual {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->modifyMarkTime(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    :pswitch_2
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->operatesForVersion5(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    :pswitch_3
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->modifyCloudTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 116
    :pswitch_4
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->dropHideTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    :pswitch_5
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "create table if not exists face( _data text not null,_id integer not null,datetaken long not null,face_id integer,face_x integer,face_y integer,face_width integer,face_height integer,quality float,merge_id integer,remove integer,primary key (_data, face_id))"

    .line 120
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "create table if not exists face_operation( face_id integer not null,name text,hide integer,ignore integer,_data text,default_cover integer,primary key (face_id))"

    .line 121
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    :pswitch_6
    iget-object p2, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "DROP TABLE IF EXISTS place"

    .line 124
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    :cond_1
    :pswitch_7
    iget-object p2, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "things"

    const-string v0, "remove"

    .line 129
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->checkColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "alter table things add remove integer"

    .line 130
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    :cond_2
    :pswitch_8
    iget-object p2, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "face_operation"

    const-string v0, "default_cover"

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->checkColumnExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "alter table face_operation add default_cover integer"

    .line 135
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    :cond_3
    :pswitch_9
    iget-object p2, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "DROP TABLE IF EXISTS things"

    .line 139
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    :cond_4
    :pswitch_a
    iget-object p2, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcn/nubia/improve/ImproveConfig;->isSupportCategory(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 144
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->wipeAndRecreateFaceDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public queryItem(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .line 258
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryItem(ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 262
    invoke-virtual/range {v0 .. v7}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 268
    invoke-virtual/range {v0 .. v8}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    monitor-enter p0

    .line 273
    :try_start_0
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    monitor-exit p0

    return-object v1

    .line 276
    :cond_0
    :try_start_1
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-nez v0, :cond_1

    .line 277
    invoke-static {}, Lcn/nubia/improve/database/TableManager;->getInstance()Lcn/nubia/improve/database/TableManager;

    move-result-object v0

    sput-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    .line 279
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2

    move-object v4, p2

    goto :goto_0

    .line 284
    :cond_2
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableProjection(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    .line 288
    :goto_0
    :try_start_2
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 291
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    :goto_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queryItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 298
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 301
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public registerListener(ILcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V
    .locals 3

    .line 188
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mNotifierMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mNotifierMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;-><init>(Lcn/nubia/improve/database/GalleryDatabaseHelper$1;)V

    .line 192
    iget-object v2, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mNotifierMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v1, p2}, Lcn/nubia/improve/database/GalleryDatabaseHelper$DBListenerBroker;->registerNotifier(Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 194
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerListener(Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeFace(Lcn/nubia/gallery3d/data/FaceAlbum;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/FaceAlbum;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 470
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/FaceAlbum;->getBucketId()I

    move-result v0

    .line 471
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/FaceAlbum;->getCoverPath()Ljava/lang/String;

    move-result-object v1

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 474
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    const-string v4, "\'"

    .line 475
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    .line 478
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 481
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "merge_id"

    .line 482
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    .line 483
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_data"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " IN ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 487
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "remove"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 489
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 491
    :try_start_0
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "face"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 492
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :goto_1
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 494
    :try_start_1
    sget-object v2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFace exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    const-string v0, ""

    .line 530
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_3

    :cond_2
    const/4 p1, 0x4

    .line 533
    invoke-virtual {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 534
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V

    goto :goto_4

    .line 531
    :cond_3
    :goto_3
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/FaceAlbum;->setCoverPath(Ljava/lang/String;)V

    :goto_4
    return-void

    .line 497
    :goto_5
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 498
    throw p1
.end method

.method public removeThing(Lcn/nubia/gallery3d/data/ThingsAlbum;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/gallery3d/data/ThingsAlbum;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 429
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/ThingsAlbum;->getDbColumnName()Ljava/lang/String;

    move-result-object p1

    .line 431
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportThingsGroup()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tag_name"

    goto :goto_0

    :cond_0
    const-string v0, "group_name"

    .line 435
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 436
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string v3, "\'"

    .line 437
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v2, 0x1

    if-lez p2, :cond_2

    .line 440
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 443
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    .line 445
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 449
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "remove"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 453
    :try_start_0
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "things"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :goto_2
    sget-object p1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 456
    :try_start_1
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFace exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    const/4 p1, 0x3

    .line 462
    invoke-virtual {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 463
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V

    return-void

    .line 459
    :goto_4
    sget-object p2, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    throw p1
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 79
    sput-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 81
    :cond_0
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-eqz v0, :cond_1

    .line 82
    sput-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mTableManager:Lcn/nubia/improve/database/TableManager;

    .line 84
    :cond_1
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mSingleton:Lcn/nubia/improve/database/GalleryDatabaseHelper;

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->close()V

    .line 86
    sput-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mSingleton:Lcn/nubia/improve/database/GalleryDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterListener(Lcn/nubia/improve/database/GalleryDatabaseHelper$GalleryDatabaseListener;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public declared-synchronized update(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 329
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    sget-object v1, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    .line 332
    invoke-virtual {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData(I)V

    .line 333
    invoke-virtual {p0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->notifyMediaSetToUpdateData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateFaceOperationDB()V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "select face_id from face_operation where face_id not in (select merge_id from face where merge_id == face_operation.face_id and merge_id >= 0 and (remove is NULL or remove <> 1) group by merge_id)"

    .line 675
    invoke-virtual {p0, v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 677
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "updateFaceOperationDB query FaceOperationTable database failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 678
    monitor-exit p0

    return-void

    .line 680
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    const-string v3, ""

    .line 681
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hide"

    const/4 v3, 0x0

    .line 682
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ignore"

    .line 683
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_data"

    const-string v4, ""

    .line 684
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 686
    :goto_0
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 687
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x5

    .line 689
    invoke-direct {p0, v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getFaceOperationSelection(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    .line 688
    invoke-virtual {p0, v4, v1, v2, v5}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->updateWithoutNotification(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 692
    :cond_1
    :try_start_3
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 694
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 692
    :try_start_4
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 693
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateWithoutNotification(ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    invoke-direct {p0, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getTableName(I)Ljava/lang/String;

    move-result-object p1

    .line 341
    sget-object v0, Lcn/nubia/improve/database/GalleryDatabaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
