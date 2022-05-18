.class Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
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
.field private filePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceOperaClause:Ljava/lang/StringBuilder;

.field private final mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

.field private final mOperation:I

.field private mRecycledData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation
.end field

.field private mScanDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation
.end field

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

.field private result:I

.field final synthetic this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;",
            "Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;",
            ")V"
        }
    .end annotation

    .line 611
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereClause:Ljava/lang/StringBuilder;

    .line 605
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    .line 607
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereArgs:Ljava/util/ArrayList;

    .line 608
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mScanDatas:Ljava/util/ArrayList;

    .line 612
    iput p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    .line 613
    iput-object p3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->filePaths:Ljava/util/ArrayList;

    .line 614
    iput-object p4, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    .line 615
    iput-object p5, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    return-void
.end method

.method private UpdateArgs(Ljava/lang/String;Lcn/nubia/gallery3d/data/RecycledData;I)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mScanDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, p3, :cond_0

    .line 808
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mScanDatas:Ljava/util/ArrayList;

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Lcn/nubia/gallery3d/util/GalleryUtils;->bulkUpdate(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private delete(Ljava/lang/String;II)V
    .locals 2

    .line 813
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 818
    rem-int/2addr p3, p2

    if-nez p3, :cond_1

    .line 819
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->flush(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 820
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereClause:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method

.method private deleteCloudTaskRecord(Ljava/lang/String;II)V
    .locals 2

    .line 825
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 832
    rem-int/2addr p3, p2

    if-nez p3, :cond_1

    .line 833
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 833
    invoke-static {p1, p2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteCloudTaskRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 835
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method

.method private insert(Ljava/lang/String;Lcn/nubia/gallery3d/data/RecycledData;I)V
    .locals 1

    .line 795
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mScanDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p1, p3, :cond_0

    .line 799
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mScanDatas:Ljava/util/ArrayList;

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Lcn/nubia/gallery3d/util/GalleryUtils;->bulkInsert(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFaceCoverFromDB(Ljava/lang/String;II)V
    .locals 2

    .line 840
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    .line 847
    rem-int/2addr p3, p2

    if-nez p3, :cond_1

    .line 848
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->updateFaceCoverFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 849
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 598
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 623
    :try_start_0
    sget-object v3, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 624
    :try_start_1
    iget v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    const v4, 0x7f090013

    const/4 v6, 0x0

    if-eq v0, v4, :cond_f

    const/16 v7, 0x32

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_b

    .line 626
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 627
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v9, v6

    move v10, v9

    .line 628
    :goto_0
    iget-object v11, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_7

    .line 629
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x3

    goto/16 :goto_3

    .line 634
    :cond_0
    iget-object v11, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/nubia/gallery3d/data/RecycledData;

    .line 635
    iget-object v12, v11, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 636
    invoke-static {v12}, Lcn/nubia/gallery3d/util/RecycleHelper;->buildRecyclePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "MenuExecutor"

    .line 637
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recycle srcPath="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ", destPath="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 640
    invoke-static {v13}, Lcn/nubia/gallery3d/util/RecycleHelper;->renameDstFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v4, 0x2f

    .line 641
    invoke-virtual {v13, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 642
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 643
    invoke-virtual {v12, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 644
    invoke-virtual {v12, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 645
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "MenuExecutor"

    .line 647
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renameSrcPath="

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ", destPath="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcn/nubia/gallery3d/data/RecycledData;->setFilePath(Ljava/lang/String;)V

    :cond_1
    if-eqz v13, :cond_6

    const-string v4, "unsupported-path"

    if-ne v13, v4, :cond_3

    .line 653
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$500(Lcn/nubia/gallery3d/ui/MenuExecutor;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_2

    .line 654
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$502(Lcn/nubia/gallery3d/ui/MenuExecutor;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 656
    :cond_2
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$500(Lcn/nubia/gallery3d/ui/MenuExecutor;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v4, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$302(Lcn/nubia/gallery3d/ui/MenuExecutor;Z)Z

    goto :goto_2

    .line 659
    :cond_3
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12, v13}, Lcn/nubia/gallery3d/util/RecycleHelper;->recycleItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 661
    invoke-static {v11, v13}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getContentValuse(Lcn/nubia/gallery3d/data/RecycledData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object v4, v11, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-direct {v1, v4, v7, v10}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->delete(Ljava/lang/String;II)V

    .line 663
    invoke-direct {v1, v12, v7, v10}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->updateFaceCoverFromDB(Ljava/lang/String;II)V

    .line 665
    invoke-direct {v1, v12, v7, v10}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->deleteCloudTaskRecord(Ljava/lang/String;II)V

    .line 667
    iget-object v4, v11, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 669
    :cond_4
    invoke-static {v12}, Lcn/nubia/gallery3d/util/GalleryUtils;->isFileValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x4

    goto :goto_3

    .line 673
    :cond_5
    iget-object v4, v11, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-direct {v1, v4, v7, v10}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->delete(Ljava/lang/String;II)V

    .line 675
    invoke-direct {v1, v12, v7, v10}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->updateFaceCoverFromDB(Ljava/lang/String;II)V

    .line 677
    invoke-direct {v1, v12, v7, v10}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->deleteCloudTaskRecord(Ljava/lang/String;II)V

    .line 679
    iget-object v4, v11, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :goto_1
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    add-int/lit8 v5, v10, 0x1

    iget-object v11, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-static {v4, v10, v11}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1000(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v10, v5

    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_7
    move v5, v2

    .line 686
    :goto_3
    :try_start_2
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v4

    iget-object v6, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/nubia/gallery3d/util/GalleryUtils;->flush(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 687
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v4

    iget-object v6, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 687
    invoke-static {v4, v6}, Lcn/nubia/gallery3d/util/GalleryUtils;->updateFaceCoverFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 689
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v4

    .line 690
    invoke-virtual {v4}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->updateFaceOperationDB()V

    .line 691
    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object v4

    .line 692
    invoke-virtual {v4, v0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->bulkInsert(Ljava/util/List;)V

    .line 693
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 693
    invoke-static {v0, v4}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteCloudTaskRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 695
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 696
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 698
    :cond_8
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    .line 699
    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/app/GalleryApp;

    .line 700
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-static {v0, v2}, Lcn/nubia/gallery3d/data/FavorHelper;->bulkSetUnFavorByGalleryDatabase(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_a

    .line 704
    :pswitch_1
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v6

    .line 706
    :goto_4
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v6, v5, :cond_b

    .line 707
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x3

    goto :goto_5

    .line 712
    :cond_9
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/RecycledData;

    .line 713
    iget-object v8, v5, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 714
    iget-object v9, v5, Lcn/nubia/gallery3d/data/RecycledData;->destPath:Ljava/lang/String;

    const-string v10, "MenuExecutor"

    .line 715
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recover srcPath="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", destPath="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v10, v5, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-object v10, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v10}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v10

    invoke-interface {v10}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8, v9}, Lcn/nubia/gallery3d/util/RecycleHelper;->recoverItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 719
    invoke-direct {v1, v9, v5, v7}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->insert(Ljava/lang/String;Lcn/nubia/gallery3d/data/RecycledData;I)V

    .line 724
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    add-int/lit8 v8, v4, 0x1

    iget-object v9, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-static {v5, v4, v9}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1000(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v6, v6, 0x1

    move v4, v8

    goto :goto_4

    :cond_a
    const/4 v5, 0x4

    goto :goto_5

    :cond_b
    move v5, v2

    .line 726
    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_c

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 729
    :cond_c
    iget-object v2, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->delete(Ljava/lang/String;)V

    .line 730
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    iget-object v2, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mScanDatas:Ljava/util/ArrayList;

    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereArgs:Ljava/util/ArrayList;

    invoke-static {v0, v2, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->bulkInsert(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_a

    .line 756
    :pswitch_2
    :try_start_5
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v6

    :goto_6
    if-ge v6, v0, :cond_e

    .line 758
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v2, 0x3

    goto :goto_7

    .line 762
    :cond_d
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/RecycledData;

    .line 763
    iget-object v8, v5, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 764
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcn/nubia/gallery3d/util/GalleryUtils;->deleteFile(Ljava/io/File;)Z

    .line 765
    iget-object v5, v5, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-direct {v1, v5, v7, v4}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->delete(Ljava/lang/String;II)V

    .line 766
    invoke-direct {v1, v8, v7, v4}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->updateFaceCoverFromDB(Ljava/lang/String;II)V

    .line 768
    invoke-direct {v1, v8, v7, v4}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->deleteCloudTaskRecord(Ljava/lang/String;II)V

    .line 770
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    add-int/lit8 v8, v4, 0x1

    iget-object v9, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-static {v5, v4, v9}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1000(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    add-int/lit8 v6, v6, 0x1

    move v4, v8

    goto :goto_6

    .line 772
    :cond_e
    :goto_7
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->flush(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 773
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mFaceOperaClause:Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 773
    invoke-static {v0, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->updateFaceCoverFromDB(Lcn/nubia/gallery3d/app/GalleryApp;Ljava/lang/String;)V

    .line 775
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->updateFaceOperationDB()V

    .line 777
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mWhereCloudClause:Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 777
    invoke-static {v0, v4}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->deleteCloudTaskRecord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_b

    .line 734
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v6

    .line 736
    :goto_8
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v6, v5, :cond_11

    .line 737
    invoke-interface/range {p1 .. p1}, Lcn/nubia/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x3

    goto :goto_9

    .line 742
    :cond_10
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mRecycledData:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/RecycledData;

    .line 743
    iget-object v7, v5, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 744
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcn/nubia/gallery3d/util/GalleryUtils;->deleteFile(Ljava/io/File;)Z

    .line 745
    iget-object v5, v5, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-object v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    add-int/lit8 v7, v4, 0x1

    iget-object v8, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-static {v5, v4, v8}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1000(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v6, v6, 0x1

    move v4, v7

    goto :goto_8

    :cond_11
    move v5, v2

    .line 749
    :goto_9
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_12

    .line 750
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 752
    :cond_12
    iget-object v2, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/RecycledDataBaseHelper;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/nubia/improve/database/RecycledDataBaseHelper;->delete(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_a
    move v2, v5

    .line 784
    :goto_b
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 789
    :goto_c
    iget-object v0, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget-object v3, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-static {v0, v2, v3}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1100(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    goto :goto_e

    :catchall_0
    move-exception v0

    move v2, v5

    goto :goto_d

    :catchall_1
    move-exception v0

    .line 784
    :goto_d
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 786
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "MenuExecutor"

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to execute operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_c

    :goto_e
    const/4 v0, 0x0

    return-object v0

    .line 789
    :goto_f
    iget-object v3, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->this$0:Lcn/nubia/gallery3d/ui/MenuExecutor;

    iget-object v4, v1, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;->mListener:Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;

    invoke-static {v3, v2, v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->access$1100(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    .line 790
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f090023
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
