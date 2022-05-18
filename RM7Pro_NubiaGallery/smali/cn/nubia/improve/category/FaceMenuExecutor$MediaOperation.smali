.class Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;
.super Ljava/lang/Object;
.source "FaceMenuExecutor.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/category/FaceMenuExecutor;
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

.field private final mListener:Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

.field private final mOperation:I

.field final synthetic this$0:Lcn/nubia/improve/category/FaceMenuExecutor;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/category/FaceMenuExecutor;ILjava/util/ArrayList;Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;",
            ")V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p2, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->mOperation:I

    .line 91
    iput-object p3, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->filePaths:Ljava/util/ArrayList;

    .line 92
    iput-object p4, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->mListener:Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 5

    const/4 p1, 0x1

    .line 100
    :try_start_0
    sget-object v0, Lcn/nubia/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    iget v1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->mOperation:I

    const v2, 0x7f09001e

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 103
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v1}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$100(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedBucketIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v2}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$200(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v2

    const/4 v3, 0x5

    .line 105
    invoke-virtual {v2, v3, v1, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->ignoreFace(ILjava/util/ArrayList;I)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v1}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$100(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedBucketIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v2}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$100(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedBucketNames()Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    iget-object v3, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v3}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$200(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v3

    const/4 v4, 0x0

    .line 119
    invoke-virtual {v3, v1, v2, v4}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->hideOrShowFace(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v1}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$100(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedBucketIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v2}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$100(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedBucketNames()Ljava/util/ArrayList;

    move-result-object v2

    .line 111
    iget-object v3, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v3}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$200(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v3

    .line 112
    invoke-virtual {v3, v1, v2, p1}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->hideOrShowFace(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v1}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$100(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedBucketIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    .line 125
    invoke-static {v2}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$200(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/database/GalleryDatabaseHelper;

    move-result-object v2

    .line 126
    iget-object v3, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    invoke-static {v3, v2, v1}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$300(Lcn/nubia/improve/category/FaceMenuExecutor;Lcn/nubia/improve/database/GalleryDatabaseHelper;Ljava/util/ArrayList;)I

    move-result v3

    .line 127
    invoke-virtual {v2, v1, v3}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->bulkMergeFaceAlbum(Ljava/util/ArrayList;I)V

    .line 133
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    :goto_1
    iget-object v0, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    iget-object v1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->mListener:Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

    invoke-static {v0, p1, v1}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$400(Lcn/nubia/improve/category/FaceMenuExecutor;ILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 133
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 135
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "FaceMenuExecutor"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to execute operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->mOperation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :goto_2
    const/4 p1, 0x0

    return-object p1

    .line 138
    :goto_3
    iget-object v1, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->this$0:Lcn/nubia/improve/category/FaceMenuExecutor;

    iget-object v2, p0, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;->mListener:Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;

    invoke-static {v1, p1, v2}, Lcn/nubia/improve/category/FaceMenuExecutor;->access$400(Lcn/nubia/improve/category/FaceMenuExecutor;ILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;)V

    .line 139
    throw v0

    :pswitch_data_0
    .packed-switch 0x7f090018
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
