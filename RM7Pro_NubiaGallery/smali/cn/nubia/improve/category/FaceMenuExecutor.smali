.class public Lcn/nubia/improve/category/FaceMenuExecutor;
.super Ljava/lang/Object;
.source "FaceMenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;,
        Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;
    }
.end annotation


# static fields
.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FaceMenuExecutor"


# instance fields
.field private final mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mTask:Lcn/nubia/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/gallery3d/util/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryActivity;

    iput-object p1, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 43
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGalleryApp()Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 44
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/ui/SelectionManager;

    iput-object p2, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 45
    new-instance p2, Lcn/nubia/improve/category/FaceMenuExecutor$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/improve/category/FaceMenuExecutor$1;-><init>(Lcn/nubia/improve/category/FaceMenuExecutor;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/category/FaceMenuExecutor;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/nubia/improve/category/FaceMenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/improve/category/FaceMenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/category/FaceMenuExecutor;Lcn/nubia/improve/database/GalleryDatabaseHelper;Ljava/util/ArrayList;)I
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/category/FaceMenuExecutor;->getMergeId(Lcn/nubia/improve/database/GalleryDatabaseHelper;Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/category/FaceMenuExecutor;ILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/category/FaceMenuExecutor;->onProgressComplete(ILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;)V

    return-void
.end method

.method private getMergeId(Lcn/nubia/improve/database/GalleryDatabaseHelper;Ljava/util/ArrayList;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/improve/database/GalleryDatabaseHelper;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 148
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    .line 149
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_1

    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 154
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v5, [Ljava/lang/Object;

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v3, "face_id in (%s)"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    .line 156
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "!=\'\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    const-string v3, "face_id"

    .line 157
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p1

    .line 157
    invoke-virtual/range {v6 .. v14}, Lcn/nubia/improve/database/GalleryDatabaseHelper;->queryItem(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 160
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 161
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 163
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 165
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    if-ge v4, v2, :cond_2

    move v2, v4

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 173
    throw v0

    :cond_4
    :goto_2
    return v2
.end method

.method private onProgressComplete(ILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 64
    iget-boolean v1, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mWaitOnStop:Z

    if-nez v1, :cond_0

    .line 65
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    :cond_1
    return-void
.end method


# virtual methods
.method public startAction(IILcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;ZZ)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcn/nubia/improve/category/FaceMenuExecutor;->stopTaskAndDismissDialog()V

    .line 79
    new-instance p2, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;

    const/4 p5, 0x0

    invoke-direct {p2, p0, p1, p5, p3}, Lcn/nubia/improve/category/FaceMenuExecutor$MediaOperation;-><init>(Lcn/nubia/improve/category/FaceMenuExecutor;ILjava/util/ArrayList;Lcn/nubia/improve/category/FaceMenuExecutor$FaceMenuProgressListener;)V

    .line 80
    iget-object p1, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p1

    invoke-virtual {p1, p2, p5}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 81
    iput-boolean p4, p0, Lcn/nubia/improve/category/FaceMenuExecutor;->mWaitOnStop:Z

    return-void
.end method
