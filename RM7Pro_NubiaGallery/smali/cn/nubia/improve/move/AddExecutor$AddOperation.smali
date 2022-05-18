.class Lcn/nubia/improve/move/AddExecutor$AddOperation;
.super Ljava/lang/Object;
.source "AddExecutor.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/move/AddExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final COPY_OPERATION:I

.field private final CUT_OPERATION:I

.field private isFirstItem:Z

.field private mFaceOperaClause:Ljava/lang/StringBuilder;

.field private final mFolderPath:Ljava/lang/String;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSize:I

.field private final mListener:Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

.field private final mMediaItemCount:I

.field private mOperation:I

.field private mScanDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowDialog:Z

.field private mWhereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhereClause:Ljava/lang/StringBuilder;

.field private mWhereCloudClause:Ljava/lang/StringBuilder;

.field private noSpace:Z

.field private result:I

.field private scanPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/improve/move/AddExecutor;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/move/AddExecutor;ILjava/lang/String;Ljava/util/ArrayList;Lcn/nubia/improve/move/AddExecutor$AddProgressListener;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;",
            "Lcn/nubia/improve/move/AddExecutor$AddProgressListener;",
            "ZZ)V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->scanPaths:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 252
    iput p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    .line 254
    iput-boolean v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isFirstItem:Z

    .line 255
    iput p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->COPY_OPERATION:I

    const/4 v1, 0x2

    .line 256
    iput v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->CUT_OPERATION:I

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereArgs:Ljava/util/ArrayList;

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mScanDatas:Ljava/util/ArrayList;

    .line 263
    iput v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mOperation:I

    .line 267
    iput p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mMediaItemCount:I

    .line 268
    iput-object p3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    .line 269
    iput-object p4, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItems:Ljava/util/ArrayList;

    .line 270
    iput-object p5, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mListener:Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

    .line 271
    iput-boolean p6, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mShowDialog:Z

    .line 272
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItemsSize:I

    if-eqz p7, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 273
    :goto_0
    iput p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mOperation:I

    return-void
.end method

.method private UpdateArgs(Ljava/lang/String;Lcn/nubia/gallery3d/data/RecycledData;I)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mScanDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, p3, :cond_0

    .line 423
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mScanDatas:Ljava/util/ArrayList;

    iget-object p3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Lcn/nubia/gallery3d/util/GalleryUtils;->bulkUpdate(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private deletImagesFromCategoryDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "_id in (%s)"

    .line 452
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 453
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 454
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    const/4 v0, 0x4

    .line 455
    invoke-virtual {p1, v0, p2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    const/4 v0, 0x2

    .line 456
    invoke-virtual {p1, v0, p2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    const/4 v0, 0x3

    .line 457
    invoke-virtual {p1, v0, p2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->deleteItem(ILjava/lang/String;)Z

    return-void
.end method

.method private delete(Ljava/lang/String;II)V
    .locals 2

    .line 428
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 433
    rem-int/2addr p3, p2

    if-nez p3, :cond_1

    .line 434
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->flush(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 435
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method

.method private deleteCloudTaskRecord(Ljava/lang/String;II)V
    .locals 2

    .line 475
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 482
    rem-int/2addr p3, p2

    if-nez p3, :cond_1

    .line 483
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteCloudTaskRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method

.method private deleteCut(Ljava/lang/String;II)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 445
    rem-int/2addr p3, p2

    if-nez p3, :cond_1

    .line 446
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->deletImagesFromCategoryDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method

.method private deleteInvalidData(ILcn/nubia/gallery3d/data/RecycledData;Ljava/lang/String;)V
    .locals 2

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "srcFile not exist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddExecutor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/RecycledData;->dumpData()V

    .line 501
    iget-object p2, p2, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    const/16 v0, 0x32

    invoke-direct {p0, p2, v0, p1}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->delete(Ljava/lang/String;II)V

    .line 502
    invoke-direct {p0, p3, v0, p1}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->deleteCloudTaskRecord(Ljava/lang/String;II)V

    .line 503
    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    add-int/lit8 p1, p1, 0x1

    iget-object p3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mListener:Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

    invoke-static {p2, p1, p3}, Lcn/nubia/improve/move/AddExecutor;->access$1000(Lcn/nubia/improve/move/AddExecutor;ILcn/nubia/improve/move/AddExecutor$AddProgressListener;)V

    return-void
.end method

.method private doCopyOperation(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)V
    .locals 9

    .line 325
    iget v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItemsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 326
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x3

    .line 327
    iput p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    goto/16 :goto_2

    .line 330
    :cond_0
    iget-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/RecycledData;

    .line 331
    iget-object v3, v2, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    const-string v4, "/"

    .line 332
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 333
    invoke-direct {p0, v3, v4}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isAddtoSrcfolder(Ljava/lang/String;I)Z

    move-result v5

    const-string v6, "AddExecutor"

    if-eqz v5, :cond_1

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add srcfile to srcfilepath i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 339
    :cond_1
    iget-wide v7, v2, Lcn/nubia/gallery3d/data/RecycledData;->fileSize:J

    .line 340
    iget-object v5, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    invoke-static {v5, v7, v8}, Lcn/nubia/gallery3d/util/GalleryUtils;->storageHasEnoughCapacity(Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_2

    const-string p1, "Has not enough storage"

    .line 341
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iput-boolean v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    .line 343
    iget p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItemsSize:I

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_5

    .line 344
    iput-boolean v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isFirstItem:Z

    goto :goto_2

    .line 349
    :cond_2
    iget-object v5, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    iget-object v6, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    iget v7, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mMediaItemCount:I

    invoke-static {v5, v6, v3, v7, v4}, Lcn/nubia/improve/move/AddExecutor;->access$800(Lcn/nubia/improve/move/AddExecutor;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v4

    .line 350
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 352
    invoke-direct {p0, p2, v2, v3}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->deleteInvalidData(ILcn/nubia/gallery3d/data/RecycledData;Ljava/lang/String;)V

    goto :goto_1

    .line 355
    :cond_3
    iget-object v3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v3, v4, v5}, Lcn/nubia/improve/move/AddExecutor;->access$900(Lcn/nubia/improve/move/AddExecutor;Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 p1, 0x2

    .line 356
    iput p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    goto :goto_2

    .line 359
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-direct {p0, v3, v2, v4}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->insert(Ljava/lang/String;Lcn/nubia/gallery3d/data/RecycledData;I)V

    .line 360
    iget-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    add-int/lit8 p2, p2, 0x1

    iget-object v3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mListener:Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

    invoke-static {v2, p2, v3}, Lcn/nubia/improve/move/AddExecutor;->access$1000(Lcn/nubia/improve/move/AddExecutor;ILcn/nubia/improve/move/AddExecutor$AddProgressListener;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 362
    :cond_5
    :goto_2
    invoke-direct {p0, v1}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->doFinishingWork(Z)V

    return-void
.end method

.method private doCutOperation(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)V
    .locals 9

    .line 366
    iget v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItemsSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 367
    invoke-interface {p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x3

    .line 368
    iput p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    goto/16 :goto_2

    .line 371
    :cond_0
    iget-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/RecycledData;

    .line 372
    iget-object v3, v2, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    const-string v4, "/"

    .line 373
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 374
    invoke-direct {p0, v3, v4}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isAddtoSrcfolder(Ljava/lang/String;I)Z

    move-result v5

    const-string v6, "AddExecutor"

    if-eqz v5, :cond_1

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add srcfile to srcfilepath i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 380
    :cond_1
    iget-wide v7, v2, Lcn/nubia/gallery3d/data/RecycledData;->fileSize:J

    .line 381
    iget-object v5, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    invoke-static {v5, v7, v8}, Lcn/nubia/gallery3d/util/GalleryUtils;->storageHasEnoughCapacity(Ljava/lang/String;J)Z

    move-result v5

    if-nez v5, :cond_2

    const-string p1, "Has not enough storage"

    .line 382
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iput-boolean v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    .line 384
    iget p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItemsSize:I

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_5

    .line 385
    iput-boolean v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isFirstItem:Z

    goto :goto_2

    .line 390
    :cond_2
    iget-object v5, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    iget-object v6, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    iget v7, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mMediaItemCount:I

    invoke-static {v5, v6, v3, v7, v4}, Lcn/nubia/improve/move/AddExecutor;->access$800(Lcn/nubia/improve/move/AddExecutor;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v4

    .line 391
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 393
    invoke-direct {p0, p2, v2, v3}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->deleteInvalidData(ILcn/nubia/gallery3d/data/RecycledData;Ljava/lang/String;)V

    goto :goto_1

    .line 396
    :cond_3
    invoke-static {v5, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->renameForMove(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 p1, 0x2

    .line 397
    iput p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    goto :goto_2

    .line 400
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x32

    invoke-direct {p0, v4, v2, v5}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->insert(Ljava/lang/String;Lcn/nubia/gallery3d/data/RecycledData;I)V

    .line 401
    iget-object v2, v2, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-direct {p0, v2, v5, p2}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->deleteCut(Ljava/lang/String;II)V

    .line 402
    invoke-direct {p0, v3, v5, p2}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->updateFaceCoverFromDB(Ljava/lang/String;II)V

    .line 403
    invoke-direct {p0, v3, v5, p2}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->deleteCloudTaskRecord(Ljava/lang/String;II)V

    .line 404
    iget-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    add-int/lit8 p2, p2, 0x1

    iget-object v3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mListener:Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

    invoke-static {v2, p2, v3}, Lcn/nubia/improve/move/AddExecutor;->access$1000(Lcn/nubia/improve/move/AddExecutor;ILcn/nubia/improve/move/AddExecutor$AddProgressListener;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 406
    invoke-direct {p0, p1}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->doFinishingWork(Z)V

    return-void
.end method

.method private doFinishingWork(Z)V
    .locals 3

    .line 507
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x5

    .line 508
    iput p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v0}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mScanDatas:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->bulkInsert(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-nez p1, :cond_1

    .line 512
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->flushCut(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 513
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->updateFaceCoverFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 514
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object p1

    .line 515
    invoke-virtual {p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->updateFaceOperationDB()V

    .line 516
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-static {p1, v0}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteCloudTaskRecord(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private insert(Ljava/lang/String;Lcn/nubia/gallery3d/data/RecycledData;I)V
    .locals 1

    .line 410
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mScanDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, p3, :cond_0

    .line 414
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mScanDatas:Ljava/util/ArrayList;

    iget-object p3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Lcn/nubia/gallery3d/util/GalleryUtils;->bulkInsert(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private isAddtoSrcfolder(Ljava/lang/String;I)Z
    .locals 2

    .line 489
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 490
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 491
    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method private updateFaceCoverFromDB(Ljava/lang/String;II)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 468
    rem-int/2addr p3, p2

    if-nez p3, :cond_1

    .line 469
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {p1}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->updateFaceCoverFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 9

    .line 279
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 281
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "AddExecutor"

    const-string v3, "Has not enough storage to create folder"

    .line 284
    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput-boolean v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isFirstItem:Z

    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 319
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    iget v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    iget-boolean v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    iget-object v3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mListener:Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

    invoke-static {p1, v0, v2, v3}, Lcn/nubia/improve/move/AddExecutor;->access$700(Lcn/nubia/improve/move/AddExecutor;IZLcn/nubia/improve/move/AddExecutor$AddProgressListener;)V

    return-object v1

    .line 288
    :cond_1
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_data"

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "format"

    const/16 v5, 0x3001

    .line 290
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    iget-object v4, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v4}, Lcn/nubia/improve/move/AddExecutor;->access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryApp;->getContentProvider()Lcn/nubia/gallery3d/app/ContentProviderProxy;

    move-result-object v4

    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcn/nubia/gallery3d/app/ContentProviderProxy;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 292
    iget-object v3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v3}, Lcn/nubia/improve/move/AddExecutor;->access$200(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->getAlbumPreference()Lcn/nubia/gallery3d/util/AlbumPreference;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mFolderPath:Ljava/lang/String;

    .line 293
    invoke-static {v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcn/nubia/gallery3d/util/AlbumPreference;->put(Ljava/lang/String;)Z

    .line 296
    :cond_2
    sget-object v3, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    :try_start_2
    iget-object v4, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v4}, Lcn/nubia/improve/move/AddExecutor;->access$600(Lcn/nubia/improve/move/AddExecutor;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    invoke-static {v5}, Lcn/nubia/improve/move/AddExecutor;->access$600(Lcn/nubia/improve/move/AddExecutor;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    iget v7, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mItemsSize:I

    const v8, 0x7f10008a

    invoke-virtual {v5, v6, v8, v7, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    iget v4, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mOperation:I

    const/4 v5, 0x0

    if-eq v4, v2, :cond_4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    goto :goto_0

    .line 304
    :cond_3
    invoke-direct {p0, p1, v5}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->doCutOperation(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)V

    goto :goto_0

    .line 301
    :cond_4
    invoke-direct {p0, p1, v5}, Lcn/nubia/improve/move/AddExecutor$AddOperation;->doCopyOperation(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;I)V

    .line 309
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    iget-boolean p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    if-ne p1, v2, :cond_5

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isFirstItem:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 309
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 311
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "AddExecutor"

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to execute Operation ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mOperation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 314
    iget-boolean p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    if-ne p1, v2, :cond_5

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isFirstItem:Z

    if-eqz p1, :cond_5

    .line 316
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 319
    :cond_5
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    iget v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    iget-boolean v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    iget-object v3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mListener:Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

    invoke-static {p1, v0, v2, v3}, Lcn/nubia/improve/move/AddExecutor;->access$700(Lcn/nubia/improve/move/AddExecutor;IZLcn/nubia/improve/move/AddExecutor$AddProgressListener;)V

    return-object v1

    .line 314
    :goto_2
    iget-boolean v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    if-ne v1, v2, :cond_6

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->isFirstItem:Z

    if-eqz v1, :cond_6

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 319
    :cond_6
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->this$0:Lcn/nubia/improve/move/AddExecutor;

    iget v1, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->result:I

    iget-boolean v2, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->noSpace:Z

    iget-object v3, p0, Lcn/nubia/improve/move/AddExecutor$AddOperation;->mListener:Lcn/nubia/improve/move/AddExecutor$AddProgressListener;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/improve/move/AddExecutor;->access$700(Lcn/nubia/improve/move/AddExecutor;IZLcn/nubia/improve/move/AddExecutor$AddProgressListener;)V

    .line 320
    throw p1
.end method
