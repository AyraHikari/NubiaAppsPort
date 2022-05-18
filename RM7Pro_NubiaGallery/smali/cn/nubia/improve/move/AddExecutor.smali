.class public Lcn/nubia/improve/move/AddExecutor;
.super Ljava/lang/Object;
.source "AddExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/move/AddExecutor$AddOperation;,
        Lcn/nubia/improve/move/AddExecutor$AddProgressListener;
    }
.end annotation


# static fields
.field public static final EXECUTION_RESULT_ADDTO_SRCFILEPATH:I = 0x5

.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_NO_SPACE:I = 0x4

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field private static final MIN_DIALOG_SHOW_DURATION:J = 0x3e8L

.field private static final MSG_DO_SHARE:I = 0x3

.field private static final MSG_SHOWDIALOG:I = 0x5

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AddExecutor"


# instance fields
.field private final mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mFinishMoveSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

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

.field private mUpdateDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mWaitOnStop:Z


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mFinishMoveSet:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mUpdateDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 84
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryActivity;

    iput-object p1, p0, Lcn/nubia/improve/move/AddExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 85
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGalleryApp()Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 86
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/ui/SelectionManager;

    iput-object p2, p0, Lcn/nubia/improve/move/AddExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 87
    new-instance p2, Lcn/nubia/improve/move/AddExecutor$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/improve/move/AddExecutor$1;-><init>(Lcn/nubia/improve/move/AddExecutor;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/improve/move/AddExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/move/AddExecutor;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcn/nubia/improve/move/AddExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/improve/move/AddExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/improve/move/AddExecutor;ILcn/nubia/improve/move/AddExecutor$AddProgressListener;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/move/AddExecutor;->onProgressUpdate(ILcn/nubia/improve/move/AddExecutor$AddProgressListener;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/improve/move/AddExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/improve/move/AddExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/move/AddExecutor;II)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/move/AddExecutor;->showProgressDialog(II)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/improve/move/AddExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/improve/move/AddExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/improve/move/AddExecutor;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcn/nubia/improve/move/AddExecutor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/improve/move/AddExecutor;IZLcn/nubia/improve/move/AddExecutor$AddProgressListener;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/improve/move/AddExecutor;->onProgressComplete(IZLcn/nubia/improve/move/AddExecutor$AddProgressListener;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/improve/move/AddExecutor;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/improve/move/AddExecutor;->getDstFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/improve/move/AddExecutor;Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/move/AddExecutor;->addToFolder(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private addToFolder(Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    .line 237
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 238
    invoke-static {p2, p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static createProgressDialog(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 2

    .line 68
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f110129

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v0, p2}, Lcn/nubia/commonui/app/ProgressDialog;->setMax(I)V

    const/4 p0, 0x0

    .line 72
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 535
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 537
    iput-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private getDstFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;
    .locals 6

    const/16 v0, 0x2e

    .line 201
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 p4, p4, 0x1

    .line 202
    invoke-virtual {p2, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    add-int/lit8 v0, v0, 0x1

    .line 203
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    add-int/2addr p3, v0

    const/4 v0, 0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p3, :cond_0

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "("

    .line 216
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    .line 218
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private moveToNewFolder(Lcn/nubia/gallery3d/data/DataManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/16 p1, 0x2f

    .line 152
    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x2e

    .line 153
    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 152
    invoke-virtual {p3, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v5, 0x2

    move v6, v1

    .line 163
    :goto_0
    iget-object v7, p0, Lcn/nubia/improve/move/AddExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 164
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "("

    .line 166
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    .line 168
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v4, Ljava/io/File;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 182
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 183
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 185
    invoke-static {p1, v4}, Lcn/nubia/gallery3d/util/GalleryUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/improve/move/AddExecutor;->scanSingleFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v1
.end method

.method private onProgressComplete(IZLcn/nubia/improve/move/AddExecutor$AddProgressListener;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onProgressUpdate(ILcn/nubia/improve/move/AddExecutor$AddProgressListener;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scanSingleFile(Ljava/lang/String;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    invoke-static {v0, v1, p1, p1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    return-void
.end method

.method private showProgressDialog(II)V
    .locals 1

    .line 524
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcn/nubia/improve/move/AddExecutor;->createProgressDialog(Landroid/content/Context;II)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/move/AddExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 525
    invoke-virtual {p1}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 527
    iget-object p1, p0, Lcn/nubia/improve/move/AddExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const p2, 0x7f060085

    invoke-virtual {p1, p2}, Lcn/nubia/commonui/app/ProgressDialog;->setAnimPanelBackground(I)V

    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 117
    iget-boolean v1, p0, Lcn/nubia/improve/move/AddExecutor;->mWaitOnStop:Z

    if-nez v1, :cond_0

    .line 118
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    .line 121
    invoke-direct {p0}, Lcn/nubia/improve/move/AddExecutor;->dismissProgressDialog()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    :cond_1
    return-void
.end method


# virtual methods
.method public doAdd(Lcn/nubia/improve/move/AddExecutor$AddProgressListener;ILjava/lang/String;Ljava/util/ArrayList;ZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/improve/move/AddExecutor$AddProgressListener;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;ZZZ)V"
        }
    .end annotation

    move-object v8, p0

    .line 142
    invoke-direct {p0}, Lcn/nubia/improve/move/AddExecutor;->stopTaskAndDismissDialog()V

    .line 143
    new-instance v9, Lcn/nubia/improve/move/AddExecutor$AddOperation;

    move-object v0, v9

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcn/nubia/improve/move/AddExecutor$AddOperation;-><init>(Lcn/nubia/improve/move/AddExecutor;ILjava/lang/String;Ljava/util/ArrayList;Lcn/nubia/improve/move/AddExecutor$AddProgressListener;ZZ)V

    .line 145
    iget-object v0, v8, Lcn/nubia/improve/move/AddExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 146
    iget-object v0, v8, Lcn/nubia/improve/move/AddExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, v8, Lcn/nubia/improve/move/AddExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    move v0, p5

    .line 147
    iput-boolean v0, v8, Lcn/nubia/improve/move/AddExecutor;->mWaitOnStop:Z

    return-void
.end method

.method public pause()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcn/nubia/improve/move/AddExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method public showAddFailToast()V
    .locals 3

    .line 531
    iget-object v0, p0, Lcn/nubia/improve/move/AddExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1000a8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
