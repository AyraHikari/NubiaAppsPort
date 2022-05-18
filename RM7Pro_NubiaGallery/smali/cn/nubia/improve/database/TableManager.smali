.class public Lcn/nubia/improve/database/TableManager;
.super Ljava/lang/Object;
.source "TableManager.java"


# static fields
.field public static final CLOUDTASK:I = 0x1

.field public static final FACE:I = 0x4

.field public static final FACE_OPERATION:I = 0x5

.field public static final MARK:I = 0x0

.field public static final PLACE:I = 0x2

.field public static final THINGS:I = 0x3

.field private static volatile mTableManager:Lcn/nubia/improve/database/TableManager;


# instance fields
.field private mCloudTaskTable:Lcn/nubia/improve/database/CloudTaskTable;

.field private mFaceOperationTable:Lcn/nubia/improve/database/FaceOperationTable;

.field private mFaceTable:Lcn/nubia/improve/database/FaceTable;

.field private mMarkTable:Lcn/nubia/improve/database/MarkTable;

.field private mPlaceTable:Lcn/nubia/improve/database/PlaceTable;

.field private mThingsTable:Lcn/nubia/improve/database/ThingsTable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mMarkTable:Lcn/nubia/improve/database/MarkTable;

    .line 17
    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mCloudTaskTable:Lcn/nubia/improve/database/CloudTaskTable;

    .line 18
    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mPlaceTable:Lcn/nubia/improve/database/PlaceTable;

    .line 19
    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mThingsTable:Lcn/nubia/improve/database/ThingsTable;

    .line 20
    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mFaceTable:Lcn/nubia/improve/database/FaceTable;

    .line 21
    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mFaceOperationTable:Lcn/nubia/improve/database/FaceOperationTable;

    .line 24
    new-instance v0, Lcn/nubia/improve/database/MarkTable;

    invoke-direct {v0}, Lcn/nubia/improve/database/MarkTable;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mMarkTable:Lcn/nubia/improve/database/MarkTable;

    .line 25
    new-instance v0, Lcn/nubia/improve/database/CloudTaskTable;

    invoke-direct {v0}, Lcn/nubia/improve/database/CloudTaskTable;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mCloudTaskTable:Lcn/nubia/improve/database/CloudTaskTable;

    .line 26
    new-instance v0, Lcn/nubia/improve/database/PlaceTable;

    invoke-direct {v0}, Lcn/nubia/improve/database/PlaceTable;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mPlaceTable:Lcn/nubia/improve/database/PlaceTable;

    .line 27
    new-instance v0, Lcn/nubia/improve/database/ThingsTable;

    invoke-direct {v0}, Lcn/nubia/improve/database/ThingsTable;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mThingsTable:Lcn/nubia/improve/database/ThingsTable;

    .line 28
    new-instance v0, Lcn/nubia/improve/database/FaceTable;

    invoke-direct {v0}, Lcn/nubia/improve/database/FaceTable;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mFaceTable:Lcn/nubia/improve/database/FaceTable;

    .line 29
    new-instance v0, Lcn/nubia/improve/database/FaceOperationTable;

    invoke-direct {v0}, Lcn/nubia/improve/database/FaceOperationTable;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/database/TableManager;->mFaceOperationTable:Lcn/nubia/improve/database/FaceOperationTable;

    return-void
.end method

.method public static getInstance()Lcn/nubia/improve/database/TableManager;
    .locals 2

    .line 33
    sget-object v0, Lcn/nubia/improve/database/TableManager;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcn/nubia/improve/database/TableManager;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcn/nubia/improve/database/TableManager;->mTableManager:Lcn/nubia/improve/database/TableManager;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcn/nubia/improve/database/TableManager;

    invoke-direct {v1}, Lcn/nubia/improve/database/TableManager;-><init>()V

    sput-object v1, Lcn/nubia/improve/database/TableManager;->mTableManager:Lcn/nubia/improve/database/TableManager;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/improve/database/TableManager;->mTableManager:Lcn/nubia/improve/database/TableManager;

    return-object v0
.end method


# virtual methods
.method public createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mMarkTable:Lcn/nubia/improve/database/MarkTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/MarkTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mCloudTaskTable:Lcn/nubia/improve/database/CloudTaskTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/CloudTaskTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mPlaceTable:Lcn/nubia/improve/database/PlaceTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/PlaceTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mThingsTable:Lcn/nubia/improve/database/ThingsTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/ThingsTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mFaceTable:Lcn/nubia/improve/database/FaceTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/FaceTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mFaceOperationTable:Lcn/nubia/improve/database/FaceOperationTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/FaceOperationTable;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mMarkTable:Lcn/nubia/improve/database/MarkTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/MarkTable;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mCloudTaskTable:Lcn/nubia/improve/database/CloudTaskTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/CloudTaskTable;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mPlaceTable:Lcn/nubia/improve/database/PlaceTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/PlaceTable;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mThingsTable:Lcn/nubia/improve/database/ThingsTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/ThingsTable;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mFaceTable:Lcn/nubia/improve/database/FaceTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/FaceTable;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 58
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mFaceOperationTable:Lcn/nubia/improve/database/FaceOperationTable;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/database/FaceOperationTable;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public getContentValues(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOrderByTime()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcn/nubia/improve/database/TableManager;->mMarkTable:Lcn/nubia/improve/database/MarkTable;

    invoke-virtual {v0}, Lcn/nubia/improve/database/MarkTable;->getOrderByTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProjection(I)[Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mFaceOperationTable:Lcn/nubia/improve/database/FaceOperationTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/FaceOperationTable;->getProjection()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mFaceTable:Lcn/nubia/improve/database/FaceTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/FaceTable;->getProjection()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 74
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mThingsTable:Lcn/nubia/improve/database/ThingsTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/ThingsTable;->getProjection()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mPlaceTable:Lcn/nubia/improve/database/PlaceTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/PlaceTable;->getProjection()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_4
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mCloudTaskTable:Lcn/nubia/improve/database/CloudTaskTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/CloudTaskTable;->getProjection()[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mMarkTable:Lcn/nubia/improve/database/MarkTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/MarkTable;->getProjection()[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTableHashCode(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mMarkTable:Lcn/nubia/improve/database/MarkTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/MarkTable;->getHashCode()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTableName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mFaceOperationTable:Lcn/nubia/improve/database/FaceOperationTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/FaceOperationTable;->getTableName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mFaceTable:Lcn/nubia/improve/database/FaceTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/FaceTable;->getTableName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mThingsTable:Lcn/nubia/improve/database/ThingsTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/ThingsTable;->getTableName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 97
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mPlaceTable:Lcn/nubia/improve/database/PlaceTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/PlaceTable;->getTableName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 94
    :cond_4
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mCloudTaskTable:Lcn/nubia/improve/database/CloudTaskTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/CloudTaskTable;->getTableName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/database/TableManager;->mMarkTable:Lcn/nubia/improve/database/MarkTable;

    invoke-virtual {p1}, Lcn/nubia/improve/database/MarkTable;->getTableName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
