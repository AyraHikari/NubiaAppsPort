.class public Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;
.super Ljava/lang/Object;
.source "CategoryAlgorithmHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CategoryAlgorithmDataHelper"

.field private static mSingleton:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFaceClassifyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mModel:[B

.field private mThingsClassifier:Lcn/nubia/improve/category/algorithm/ThingsClassifier;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mFaceClassifyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "CategoryAlgorithmDataHelper"

    const-string v1, "txh new CategoryAlgorithmHelper"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->initCategoryModel()V

    return-void
.end method

.method private getImageIdList()[I
    .locals 7

    .line 69
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcn/nubia/improve/category/CategoryDbHelper;->IMAGE_URI:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 77
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 79
    aput v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 73
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "getAllImageId: cannot get cursor for image"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "CategoryAlgorithmDataHelper"

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImageIdList failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x0

    .line 87
    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v1

    :catchall_1
    move-exception v1

    invoke-static {v0}, Lcn/nubia/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    .line 88
    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;
    .locals 2

    const-class v0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mSingleton:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    if-nez v1, :cond_1

    .line 33
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    sget-object v1, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mSingleton:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    invoke-direct {v1, p0}, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mSingleton:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mSingleton:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initCategoryModel()V
    .locals 6

    const-string v0, "CategoryAlgorithmDataHelper"

    const-string v1, "txh initCategoryModel begin"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 51
    iget-object v3, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mModel:[B

    if-nez v3, :cond_0

    .line 52
    iget-object v3, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/improve/category/CategoryUtils;->getModel(Landroid/content/res/Resources;)[B

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mModel:[B

    .line 54
    :cond_0
    iget-object v3, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mThingsClassifier:Lcn/nubia/improve/category/algorithm/ThingsClassifier;

    if-nez v3, :cond_1

    .line 55
    new-instance v3, Lcn/nubia/improve/category/algorithm/ThingsClassifier;

    iget-object v4, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Application;

    iget-object v5, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mModel:[B

    invoke-direct {v3, v4, v5}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;-><init>(Landroid/app/Application;[B)V

    iput-object v3, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mThingsClassifier:Lcn/nubia/improve/category/algorithm/ThingsClassifier;

    .line 57
    :cond_1
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportFaceClassify()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 58
    iget-object v3, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mFaceClassifyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    invoke-direct {p0}, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->getImageIdList()[I

    move-result-object v3

    const-string v4, "/data/data/cn.nubia.gallery3d/databases/"

    invoke-static {v4, v3}, Lcn/nubia/improve/category/algorithm/FaceClassify;->FaceClassifyInit(Ljava/lang/String;[I)V

    .line 63
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-float v1, v3

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "txh initCategoryModel done, costTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public classify(Landroid/graphics/Bitmap;II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mThingsClassifier:Lcn/nubia/improve/category/algorithm/ThingsClassifier;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->classify(Landroid/graphics/Bitmap;II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public release()V
    .locals 4

    const-string v0, "CategoryAlgorithmDataHelper"

    const-string v1, "txh release"

    .line 97
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mModel:[B

    .line 99
    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mThingsClassifier:Lcn/nubia/improve/category/algorithm/ThingsClassifier;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1}, Lcn/nubia/improve/category/algorithm/ThingsClassifier;->release()V

    .line 101
    iput-object v0, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mThingsClassifier:Lcn/nubia/improve/category/algorithm/ThingsClassifier;

    .line 103
    :cond_0
    invoke-static {}, Lcn/nubia/improve/ImproveConfig;->isSupportFaceClassify()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mFaceClassifyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-static {}, Lcn/nubia/improve/category/algorithm/FaceClassify;->FaceClassifyUnInit()V

    .line 108
    :cond_1
    sput-object v0, Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;->mSingleton:Lcn/nubia/improve/category/algorithm/CategoryAlgorithmHelper;

    return-void
.end method
