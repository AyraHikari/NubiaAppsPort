.class public Lcn/nubia/gallery3d/ui/MenuExecutor;
.super Ljava/lang/Object;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;,
        Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;,
        Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;,
        Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;
    }
.end annotation


# static fields
.field private static final EXCUTION_RESULT_RECYCLE_OR_RECOVER_FAIL:I = 0x4

.field public static final EXECUTION_RESULT_CANCEL:I = 0x3

.field public static final EXECUTION_RESULT_FAIL:I = 0x2

.field public static final EXECUTION_RESULT_SUCCESS:I = 0x1

.field private static final MSG_DO_SHARE:I = 0x3

.field private static final MSG_TASK_COMPLETE:I = 0x1

.field private static final MSG_TASK_UPDATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MenuExecutor"


# instance fields
.field private final SHOW_PROGRESS_DIALOG_COUNT:I

.field private handleUnsupportedData:Z

.field private final mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field mAlertDialogs:Lcn/nubia/commonui/app/AlertDialog;

.field private mDataSize:I

.field private mDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

.field private final mHandler:Landroid/os/Handler;

.field private final mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

.field private mSpinnerDialog:Lcn/nubia/commonui/app/ProgressDialog;

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

.field temp:I

.field private unsupportedData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/SelectionManager;)V
    .locals 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mUpdateDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const/16 v0, 0xa

    .line 89
    iput v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->SHOW_PROGRESS_DIALOG_COUNT:I

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->handleUnsupportedData:Z

    .line 854
    iput v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->temp:I

    .line 131
    invoke-static {p1}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/gallery3d/app/GalleryActivity;

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 132
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGalleryApp()Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    .line 133
    invoke-static {p2}, Lcn/nubia/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/ui/SelectionManager;

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    .line 134
    new-instance p2, Lcn/nubia/gallery3d/ui/MenuExecutor$1;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getGLRoot()Lcn/nubia/gallery3d/ui/GLRoot;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcn/nubia/gallery3d/ui/MenuExecutor$1;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;Lcn/nubia/gallery3d/ui/GLRoot;)V

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryActivity;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/MenuExecutor;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onProgressUpdate(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onProgressComplete(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSpinnerDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1202(Lcn/nubia/gallery3d/ui/MenuExecutor;Lcn/nubia/commonui/app/ProgressDialog;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSpinnerDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcn/nubia/gallery3d/ui/MenuExecutor;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/ui/MenuExecutor;IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V
    .locals 0

    .line 66
    invoke-direct/range {p0 .. p5}, Lcn/nubia/gallery3d/ui/MenuExecutor;->startActionWithUnsupportedData(IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/ui/SelectionManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/MenuExecutor;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->handleUnsupportedData:Z

    return p0
.end method

.method static synthetic access$302(Lcn/nubia/gallery3d/ui/MenuExecutor;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->handleUnsupportedData:Z

    return p1
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/ui/MenuExecutor;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->showUnsupportedConfirmDialog()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/ui/MenuExecutor;)Ljava/util/ArrayList;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->unsupportedData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lcn/nubia/gallery3d/ui/MenuExecutor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->unsupportedData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/ui/MenuExecutor;)Lcn/nubia/gallery3d/app/GalleryApp;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    return-object p0
.end method

.method private static createProgressDialog(Landroid/content/Context;IIZ)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 1

    .line 96
    new-instance p3, Lcn/nubia/commonui/app/ProgressDialog;

    const v0, 0x7f11012a

    invoke-direct {p3, p0, v0}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 97
    invoke-virtual {p3, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(I)V

    .line 98
    invoke-virtual {p3, p2}, Lcn/nubia/commonui/app/ProgressDialog;->setMax(I)V

    const/4 p0, 0x0

    .line 99
    invoke-virtual {p3, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setCancelable(Z)V

    .line 101
    invoke-virtual {p3, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 p0, 0x1

    if-le p2, p0, :cond_0

    .line 103
    invoke-virtual {p3, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressStyle(I)V

    :cond_0
    return-object p3
.end method

.method private static createSpinnerProgressDialog(Landroid/content/Context;IIZ)Lcn/nubia/commonui/app/ProgressDialog;
    .locals 2

    .line 110
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    const v1, 0x7f11012a

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/app/ProgressDialog;->setTitle(I)V

    .line 112
    invoke-virtual {v0, p2}, Lcn/nubia/commonui/app/ProgressDialog;->setMax(I)V

    const/4 p0, 0x0

    .line 113
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    if-eqz p3, :cond_0

    .line 115
    invoke-virtual {v0, p0}, Lcn/nubia/commonui/app/ProgressDialog;->setProgressStyle(I)V

    :cond_0
    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 195
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 197
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSpinnerDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 199
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSpinnerDialog:Lcn/nubia/commonui/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 273
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object v0

    .line 274
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getSingleSelectedPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "MenuExecutor"

    const-string v0, "path is null"

    .line 276
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 279
    :cond_0
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getMediaType(Lcn/nubia/gallery3d/data/Path;)I

    move-result v2

    invoke-static {v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public static getMimeType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const-string p0, "*/*"

    return-object p0

    :cond_0
    const-string p0, "video/*"

    return-object p0

    :cond_1
    const-string p0, "image/*"

    return-object p0
.end method

.method private getSingleSelectedPath()Lcn/nubia/gallery3d/data/Path;
    .locals 4

    .line 264
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path is not single,size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuExecutor"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/Path;

    return-object v0
.end method

.method private onMenuClicked(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 284
    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V

    return-void
.end method

.method private onProgressComplete(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onProgressUpdate(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 3

    .line 204
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static setMenuItemColor(Landroid/view/Menu;IIIZ)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 223
    :cond_0
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    .line 225
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    .line 228
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 230
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 233
    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    const/4 p1, 0x0

    .line 235
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_0
    return-void
.end method

.method public static setMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 0

    .line 212
    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 214
    invoke-interface {p0, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private showUnsupportedConfirmDialog()V
    .locals 6

    .line 904
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f110129

    invoke-direct {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcn/nubia/gallery3d/ui/MenuExecutor$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/MenuExecutor$2;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;)V

    const v2, 0x7f10004e

    .line 905
    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->unsupportedData:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    const v1, 0x7f100109

    goto :goto_0

    :cond_0
    const v1, 0x7f10010a

    .line 918
    :goto_0
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 920
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f10007b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 921
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c0025

    const v5, 0x7f09008f

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v1, Lcn/nubia/gallery3d/ui/MenuExecutor$3;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/ui/MenuExecutor$3;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;)V

    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 928
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    return-void
.end method

.method private startActionWithUnsupportedData(IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V
    .locals 8

    const-string p4, "MenuExecutor"

    const-string v0, "handle unsupported data"

    .line 933
    invoke-static {p4, v0}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 935
    iget-object p4, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    move-object v0, p4

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    .line 936
    iput-object v1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 937
    check-cast p4, Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p4

    const/16 v2, 0x80

    invoke-virtual {p4, v2}, Landroid/view/Window;->addFlags(I)V

    const p4, 0x7f090023

    if-eq p1, p4, :cond_0

    goto :goto_0

    .line 940
    :cond_0
    iget-object v6, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->unsupportedData:Ljava/util/ArrayList;

    .line 941
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p4

    iput p4, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDataSize:I

    if-eqz v6, :cond_3

    if-nez p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    const/16 p5, 0xa

    if-le p4, p5, :cond_2

    .line 945
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 p5, 0x0

    invoke-static {v0, p2, p4, p5}, Lcn/nubia/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;IIZ)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 946
    invoke-virtual {p2}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 948
    :cond_2
    new-instance p2, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p0

    move v4, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    .line 949
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    :cond_3
    :goto_0
    return-void
.end method

.method private stopTaskAndDismissDialog()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    if-eqz v0, :cond_1

    .line 179
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    if-nez v1, :cond_0

    .line 180
    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->cancel()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    invoke-interface {v0}, Lcn/nubia/gallery3d/util/Future;->waitDone()V

    .line 183
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->dismissProgressDialog()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    :cond_1
    return-void
.end method

.method public static updateMenuOperation(Landroid/view/Menu;JZ)V
    .locals 15

    move-object v0, p0

    const-wide/16 v1, 0x1

    and-long v1, p1, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-wide/16 v6, 0x8

    and-long v6, p1, v6

    cmp-long v6, v6, v3

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    const-wide/16 v7, 0x4

    and-long v7, p1, v7

    cmp-long v7, v7, v3

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    const-wide/16 v8, 0x20

    and-long v8, p1, v8

    cmp-long v8, v8, v3

    if-eqz v8, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    const-wide/16 v9, 0x200

    and-long v9, p1, v9

    cmp-long v9, v9, v3

    if-eqz v9, :cond_4

    move v9, v5

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    const-wide/16 v10, 0x4000

    and-long v10, p1, v10

    cmp-long v10, v10, v3

    if-eqz v10, :cond_5

    move v10, v5

    goto :goto_5

    :cond_5
    move v10, v2

    :goto_5
    const-wide/32 v11, 0x200000

    and-long v11, p1, v11

    cmp-long v11, v11, v3

    if-eqz v11, :cond_6

    move v11, v5

    goto :goto_6

    :cond_6
    move v11, v2

    :goto_6
    const-wide/32 v12, 0x800000

    and-long v12, p1, v12

    cmp-long v12, v12, v3

    if-eqz v12, :cond_7

    move v12, v5

    goto :goto_7

    :cond_7
    move v12, v2

    :goto_7
    const-wide/32 v13, 0x2000000

    and-long v13, p1, v13

    cmp-long v3, v13, v3

    if-eqz v3, :cond_8

    move v3, v5

    goto :goto_8

    :cond_8
    move v3, v2

    :goto_8
    const v4, 0x7f090013

    .line 250
    invoke-static {p0, v4, v1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v4, 0x7f090012

    .line 251
    invoke-static {p0, v4, v6}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v4, 0x7f09002a

    .line 252
    invoke-static {p0, v4, v8}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v4, 0x7f090029

    .line 253
    invoke-static {p0, v4, v8}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v4, 0x7f090017

    .line 254
    invoke-static {p0, v4, v9}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v4, 0x7f09002b

    .line 255
    invoke-static {p0, v4, v10}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v4, 0x7f090027

    .line 256
    invoke-static {p0, v4, v11}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v4, 0x7f09002d

    xor-int/lit8 v6, p3, 0x1

    and-int/2addr v6, v7

    .line 257
    invoke-static {p0, v4, v6}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v4, 0x7f090016

    if-eqz v12, :cond_9

    if-eqz p3, :cond_9

    move v2, v5

    .line 258
    :cond_9
    invoke-static {p0, v4, v2}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f090022

    xor-int/2addr v3, v5

    .line 259
    invoke-static {p0, v2, v3}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v2, 0x7f090025

    .line 260
    invoke-static {p0, v2, v1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    return-void
.end method


# virtual methods
.method public onMenuClicked(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V
    .locals 7

    const v0, 0x7f09000e

    if-eq p1, v0, :cond_6

    const v0, 0x7f09014c

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p2, "mimeType"

    const/4 p3, 0x1

    const-string p4, "android.intent.action.ATTACH_DATA"

    packed-switch p1, :pswitch_data_2

    return-void

    .line 314
    :pswitch_0
    :try_start_0
    invoke-direct {p0, p4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 315
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p2, Landroid/app/Activity;

    .line 320
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 324
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 330
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 331
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "cn.nubia.contacts"

    .line 335
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 337
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 340
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 342
    :try_start_2
    invoke-direct {p0, p4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 343
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.android.contacts"

    .line 347
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p2, Landroid/app/Activity;

    .line 349
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 352
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    .line 292
    :pswitch_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 293
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_2

    .line 295
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAll()V

    :goto_2
    return-void

    :pswitch_3
    const v0, 0x7f10014f

    :goto_3
    move v2, p1

    move v3, v0

    goto :goto_5

    :pswitch_4
    const-string p1, "com.android.camera.action.CROP"

    .line 306
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->getIntentBySingleSelectedPath(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 308
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void

    .line 299
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->inSelectAllMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 300
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    goto :goto_4

    .line 302
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAll()V

    :goto_4
    return-void

    :cond_6
    :pswitch_5
    const v0, 0x7f090026

    if-ne p1, v0, :cond_7

    const p1, 0x7f090025

    :cond_7
    const v0, 0x7f100078

    goto :goto_3

    :goto_5
    move-object v1, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 375
    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/ui/MenuExecutor;->startAction(IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090012
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f090023
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f090028
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuClicked(ILjava/lang/String;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 12

    if-eqz p2, :cond_5

    if-eqz p3, :cond_0

    .line 413
    invoke-interface {p3}, Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;->onConfirmDialogShown()V

    .line 415
    :cond_0
    new-instance v0, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;

    invoke-direct {v0, p0, p1, p3}, Lcn/nubia/gallery3d/ui/MenuExecutor$ConfirmDialogListener;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    const p3, 0x7f090023

    const v1, 0x7f060095

    const/4 v2, -0x1

    const v3, 0x7f09008f

    const v4, 0x7f0c0025

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x7f100196

    const v8, 0x7f10004e

    const v9, 0x7f110129

    const/4 v10, 0x0

    if-ne p1, p3, :cond_2

    .line 417
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 418
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 420
    :cond_1
    new-instance p1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object p3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p3}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p1, p3, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v8, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    .line 421
    invoke-virtual {p1, v7, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    new-array p3, v6, [Ljava/lang/String;

    aput-object p2, p3, v5

    .line 425
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0, v4, v3, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v10}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 427
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 428
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_1

    .line 430
    :cond_2
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mAlertDialogs:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 431
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mAlertDialogs:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p3}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 433
    :cond_3
    new-instance p3, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v11, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v11}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-direct {p3, v11, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, v8, v10}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p3

    .line 434
    invoke-virtual {p3, v7, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x7f090024

    if-ne p1, v0, :cond_4

    .line 438
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getHandleAll()Z

    move-result p1

    goto :goto_0

    .line 444
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getHandleAll()Z

    move-result p1

    :goto_0
    new-array p1, v6, [Ljava/lang/String;

    aput-object p2, p1, v5

    .line 452
    new-instance p2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0, v4, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v10}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 453
    invoke-virtual {p3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mAlertDialogs:Lcn/nubia/commonui/app/AlertDialog;

    .line 454
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {p2}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Lcn/nubia/commonui/app/AlertDialog;->setButtonTextColor(II)V

    .line 455
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mAlertDialogs:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_1

    .line 458
    :cond_5
    invoke-direct {p0, p1, p3}, Lcn/nubia/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    :goto_1
    return-void
.end method

.method public pause()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    return-void
.end method

.method public startAction(IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/MenuExecutor;->startAction(IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V

    return-void
.end method

.method public startAction(IILcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;ZZ)V
    .locals 12

    move-object v6, p0

    move v2, p1

    move v0, p2

    move/from16 v7, p4

    .line 468
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/MenuExecutor;->stopTaskAndDismissDialog()V

    .line 469
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    move-object v3, v1

    check-cast v3, Landroid/app/Activity;

    const/4 v8, 0x0

    .line 470
    iput-object v8, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 471
    iput-object v8, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSpinnerDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 472
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    const v1, 0x7f09000e

    const/4 v4, 0x0

    if-eq v2, v1, :cond_e

    const v1, 0x7f090013

    const/16 v5, 0xa

    if-eq v2, v1, :cond_a

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 490
    :pswitch_0
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isInAlbumSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getExpandedRecycledData()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 493
    :cond_0
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 495
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDataSize:I

    if-eqz v9, :cond_3

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    if-le v1, v5, :cond_2

    .line 499
    invoke-static {v3, p2, v1, v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;IIZ)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 500
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 502
    :cond_2
    new-instance v10, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v4, v9

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    .line 503
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    invoke-virtual {v0, v10, v8}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 504
    iput-boolean v7, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    goto/16 :goto_7

    :cond_3
    :goto_1
    return-void

    .line 475
    :pswitch_1
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData()Ljava/util/ArrayList;

    move-result-object v9

    .line 476
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDataSize:I

    if-eqz v9, :cond_6

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p5, :cond_5

    if-le v1, v5, :cond_5

    .line 480
    invoke-static {v3, p2, v1, v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;IIZ)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 481
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 483
    :cond_5
    new-instance v10, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v4, v9

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    .line 484
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    invoke-virtual {v0, v10, v8}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 485
    iput-boolean v7, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    goto/16 :goto_7

    :cond_6
    :goto_2
    return-void

    .line 522
    :pswitch_2
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData()Ljava/util/ArrayList;

    move-result-object v9

    .line 523
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDataSize:I

    if-eqz v9, :cond_9

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p5, :cond_8

    if-le v1, v5, :cond_8

    .line 527
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v3, p2, v1, v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;IIZ)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 528
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 530
    :cond_8
    new-instance v10, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v4, v9

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    .line 531
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    invoke-virtual {v0, v10, v8}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 532
    iput-boolean v7, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    goto/16 :goto_7

    :cond_9
    :goto_3
    return-void

    .line 508
    :cond_a
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData()Ljava/util/ArrayList;

    move-result-object v9

    .line 509
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDataSize:I

    if-eqz v9, :cond_d

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    if-eqz p5, :cond_c

    if-le v1, v5, :cond_c

    .line 513
    invoke-static {v3, p2, v1, v4}, Lcn/nubia/gallery3d/ui/MenuExecutor;->createProgressDialog(Landroid/content/Context;IIZ)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 514
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 516
    :cond_c
    new-instance v10, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;

    const/4 v3, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move-object v4, v9

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/ui/MenuExecutor$MediaOperation;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcn/nubia/gallery3d/ui/MenuExecutor$MenuProgressListener;)V

    .line 517
    iget-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getThreadPool()Lcn/nubia/gallery3d/util/ThreadPool;

    move-result-object v0

    invoke-virtual {v0, v10, v8}, Lcn/nubia/gallery3d/util/ThreadPool;->submit(Lcn/nubia/gallery3d/util/ThreadPool$Job;Lcn/nubia/gallery3d/util/FutureListener;)Lcn/nubia/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mTask:Lcn/nubia/gallery3d/util/Future;

    .line 518
    iput-boolean v7, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    goto/16 :goto_7

    :cond_d
    :goto_4
    return-void

    .line 536
    :cond_e
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSelectionManager:Lcn/nubia/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v4}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 537
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 538
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/Path;

    .line 539
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v4

    .line 540
    instance-of v5, v4, Lcn/nubia/cloud/ui/CloudMediaItem;

    if-eqz v5, :cond_10

    .line 541
    check-cast v4, Lcn/nubia/cloud/ui/CloudMediaItem;

    invoke-virtual {v4}, Lcn/nubia/cloud/ui/CloudMediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 542
    :cond_10
    instance-of v5, v4, Lcn/nubia/cloud/ui/CloudAlbum;

    if-eqz v5, :cond_f

    .line 543
    check-cast v4, Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-virtual {v4}, Lcn/nubia/cloud/ui/CloudAlbum;->getCloudPath()Ljava/lang/String;

    move-result-object v5

    .line 544
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/apps/nubia_cloud/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10018d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 545
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mGalleryApp:Lcn/nubia/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcn/nubia/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f10018c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 546
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_6

    .line 552
    :cond_11
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 547
    :cond_12
    :goto_6
    invoke-virtual {v4}, Lcn/nubia/cloud/ui/CloudAlbum;->getAllCloudItemPath()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 549
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 556
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDataSize:I

    if-gtz v1, :cond_14

    return-void

    .line 560
    :cond_14
    iget-object v1, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/content/Context;

    .line 561
    invoke-static {v1}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v1

    .line 562
    new-instance v4, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;

    invoke-direct {v4, p0, v8}, Lcn/nubia/gallery3d/ui/MenuExecutor$MyDeleteListener;-><init>(Lcn/nubia/gallery3d/ui/MenuExecutor;Lcn/nubia/gallery3d/ui/MenuExecutor$1;)V

    invoke-virtual {v1, v4}, Lcn/nubia/improve/xcloud/CloudManager;->setDeleteListener(Lcn/nubia/improve/xcloud/CloudManager$DeleteListener;)V

    .line 563
    invoke-virtual {v1, v2}, Lcn/nubia/improve/xcloud/CloudManager;->deletePhoto(Ljava/util/ArrayList;)V

    if-eqz p5, :cond_15

    const/4 v1, 0x1

    .line 565
    invoke-static {v3, p2, v1, v1}, Lcn/nubia/gallery3d/ui/MenuExecutor;->createSpinnerProgressDialog(Landroid/content/Context;IIZ)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v6, Lcn/nubia/gallery3d/ui/MenuExecutor;->mSpinnerDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 566
    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    :cond_15
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090023
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startSingleItemAction(ILcn/nubia/gallery3d/data/Path;)V
    .locals 1

    .line 576
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 581
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/MenuExecutor;->mWaitOnStop:Z

    return-void
.end method
