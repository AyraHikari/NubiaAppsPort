.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->restoreItem(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

.field final synthetic val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

.field final synthetic val$restoreListener:Lcn/nubia/cloud/utils/SimpleListener;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 569
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    iput-object p2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    iput-object p3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$restoreListener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 572
    const-string v7, ""

    .line 574
    .local v7, "localPath":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "json is null "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    invoke-virtual {v11}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getClassify()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 575
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    invoke-virtual {v10}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getClassify()I

    move-result v10

    const/16 v11, 0x3e8

    if-eq v10, v11, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 576
    invoke-virtual {v10}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getClassify()I

    move-result v10

    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 577
    invoke-virtual {v10}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getResource()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 578
    :cond_0
    const/4 v10, 0x0

    invoke-static {v10}, Lcn/nubia/notepad/utils/Util;->setRestoreStatus(Z)V

    .line 579
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v11}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v12}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 581
    invoke-virtual {v15}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmServerId()J

    move-result-wide v16

    aput-wide v16, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$restoreListener:Lcn/nubia/cloud/utils/SimpleListener;

    .line 579
    invoke-virtual {v10, v11, v12, v13, v14}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->restore(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;[JLcn/nubia/cloud/utils/SimpleListener;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->close()V

    .line 650
    :goto_0
    return-void

    .line 587
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .line 588
    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2400(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 589
    invoke-virtual {v13}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmCloudPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    new-instance v13, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15$1;-><init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;)V

    .line 588
    invoke-virtual {v10, v11, v12, v13}, Lcn/nubia/cloud/sync/common/attachment/AttachmentManager;->downloadAttachByCloudPaths([Ljava/lang/String;ILcn/nubia/cloud/sync/common/attachment/DownloadListener;)Ljava/util/List;

    move-result-object v6

    .line 597
    .local v6, "json":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/attachment/AttachmentData;>;"
    if-nez v6, :cond_2

    .line 598
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 599
    .local v8, "msg":Landroid/os/Message;
    const/4 v10, 0x3

    iput v10, v8, Landroid/os/Message;->what:I

    .line 600
    const v10, 0x7f0a0098

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 601
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 646
    .end local v6    # "json":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/attachment/AttachmentData;>;"
    .end local v8    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v5

    .line 647
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 648
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 649
    throw v10

    .line 604
    .restart local v6    # "json":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/attachment/AttachmentData;>;"
    :cond_2
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;

    .line 605
    .local v4, "data":Lcn/nubia/cloud/sync/common/attachment/AttachmentData;
    invoke-virtual {v4}, Lcn/nubia/cloud/sync/common/attachment/AttachmentData;->getCachePath()Ljava/lang/String;

    move-result-object v7

    .line 606
    goto :goto_1

    .line 607
    .end local v4    # "data":Lcn/nubia/cloud/sync/common/attachment/AttachmentData;
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 608
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 609
    .restart local v8    # "msg":Landroid/os/Message;
    const/4 v10, 0x3

    iput v10, v8, Landroid/os/Message;->what:I

    .line 610
    const v10, 0x7f0a0098

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 611
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 614
    .end local v8    # "msg":Landroid/os/Message;
    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    .local v2, "cacheFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_5

    .line 616
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 617
    .restart local v8    # "msg":Landroid/os/Message;
    const/4 v10, 0x3

    iput v10, v8, Landroid/os/Message;->what:I

    .line 618
    const v10, 0x7f0a0098

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 619
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 620
    const/4 v10, 0x0

    invoke-static {v10}, Lcn/nubia/notepad/utils/Util;->setRestoreStatus(Z)V

    goto/16 :goto_0

    .line 623
    .end local v8    # "msg":Landroid/os/Message;
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 624
    .local v3, "content":Ljava/lang/StringBuffer;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .line 625
    invoke-static {v11}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2500(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/io/File;

    move-result-object v11

    .line 624
    invoke-static {v10, v11, v3}, Lcn/nubia/notepad/utils/FileHelper;->unzip(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/StringBuffer;)Z

    move-result v9

    .line 626
    .local v9, "success":Z
    if-eqz v9, :cond_6

    .line 627
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Landroid/util/LongSparseArray;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    invoke-virtual {v11}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmServerId()J

    move-result-wide v12

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v12, v13, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 628
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 629
    const/4 v10, 0x1

    invoke-static {v10}, Lcn/nubia/notepad/utils/Util;->setRestoreStatus(Z)V

    .line 640
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v11}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v12}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 642
    invoke-virtual {v15}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getmServerId()J

    move-result-wide v16

    aput-wide v16, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->val$restoreListener:Lcn/nubia/cloud/utils/SimpleListener;

    .line 640
    invoke-virtual {v10, v11, v12, v13, v14}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->restore(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;[JLcn/nubia/cloud/utils/SimpleListener;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->close()V

    goto/16 :goto_0

    .line 631
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 632
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 633
    .restart local v8    # "msg":Landroid/os/Message;
    const/4 v10, 0x3

    iput v10, v8, Landroid/os/Message;->what:I

    .line 634
    const v10, 0x7f0a0098

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 635
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$15;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v10}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    const/4 v10, 0x0

    invoke-static {v10}, Lcn/nubia/notepad/utils/Util;->setRestoreStatus(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method
