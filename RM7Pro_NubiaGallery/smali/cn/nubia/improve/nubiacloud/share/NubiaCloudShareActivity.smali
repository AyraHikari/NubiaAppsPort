.class public Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;
.super Lcn/nubia/gallery3d/app/AbstractGalleryActivity;
.source "NubiaCloudShareActivity.java"

# interfaces
.implements Lcn/nubia/improve/move/MoveScroll$MovePageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;,
        Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyLoginStatus;,
        Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;,
        Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;
    }
.end annotation


# instance fields
.field private final ERROR_NO_NETWORK:I

.field private final TAG:Ljava/lang/String;

.field private layoutContainerLayout:Landroid/widget/RelativeLayout;

.field private mAlbumChangeListener:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

.field private mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

.field private mContext:Landroid/content/Context;

.field private mCurrScaleImageView:Lcn/nubia/improve/move/MoveImageView;

.field private mDialogRename:Lcn/nubia/commonui/app/Dialog;

.field private mFileDstPath:Ljava/lang/String;

.field private mFileInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileSrcPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMoveBottomLinearView:Landroid/view/View;

.field private mMoveBottomView:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;

.field private mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

.field private mNetWorkAvaliable:Z

.field private mNewFolderName:Ljava/lang/String;

.field private mProj:[Ljava/lang/String;

.field private mRenameDialog:Lcn/nubia/gallery3d/commonui/ui/RenameDialog;

.field private mRenameEdit:Landroid/widget/EditText;

.field private mShowLoading:Z

.field private mShowNubiaAccountLogin:Z

.field private mTotalSize:J

.field public newFolderNameWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-direct {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;-><init>()V

    const-string v0, "nubiashare"

    .line 62
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileDstPath:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileSrcPath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 66
    iput v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->ERROR_NO_NETWORK:I

    const-wide/16 v2, 0x0

    .line 67
    iput-wide v2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mTotalSize:J

    .line 68
    iput-boolean v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowNubiaAccountLogin:Z

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mNetWorkAvaliable:Z

    .line 70
    iput-boolean v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowLoading:Z

    const-string v1, "_data"

    .line 71
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mProj:[Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    .line 73
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomView:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;

    .line 74
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomLinearView:Landroid/view/View;

    .line 76
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCurrScaleImageView:Lcn/nubia/improve/move/MoveImageView;

    .line 77
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 81
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 82
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileInfo:Ljava/util/HashMap;

    .line 83
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mRenameDialog:Lcn/nubia/gallery3d/commonui/ui/RenameDialog;

    .line 88
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 676
    new-instance v0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$9;

    invoke-direct {v0, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$9;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->newFolderNameWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1002(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mNewFolderName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/widget/EditText;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mRenameEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/commonui/app/Dialog;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mDialogRename:Lcn/nubia/commonui/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->uploadToNewAlbum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/cloud/ui/CloudAlbumSet;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/improve/move/MoveScroll;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->hideLoadingDialod()V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->init()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/view/View;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomLinearView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->dismissCloudDialog()V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomLinearView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Ljava/util/HashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Lcn/nubia/improve/xcloud/CloudManager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->showLoadingDialod()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 61
    iget-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->layoutContainerLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Landroid/view/View;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->checkFolder(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->enlargeImageView(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->upLoadImageToCloudAlbum(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->showFolderDialog()V

    return-void
.end method

.method private addToUploadList(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    const v1, 0x7f1000be

    const/4 v2, 0x0

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mProj:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 476
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "_data"

    .line 478
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 477
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileSrcPath:Ljava/lang/String;

    .line 479
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0xe

    if-ge p1, v3, :cond_0

    .line 480
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileSrcPath:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 483
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 484
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->finish()V

    goto :goto_0

    .line 486
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addToUploadList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 490
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v2, :cond_3

    .line 499
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 493
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "nubiashare"

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 496
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_4

    .line 499
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 501
    :cond_4
    throw p1
.end method

.method private addToUploadList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 505
    invoke-direct {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->isAcceptableType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileDstPath:Ljava/lang/String;

    .line 508
    iget-wide v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mTotalSize:J

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mTotalSize:J

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " fileSrcPath = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " mTotalSize = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mTotalSize:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " totalSize = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mTotalSize:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "  fileDstPath = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileDstPath:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "nubiashare"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_0

    .line 511
    iget-object p2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileInfo:Ljava/util/HashMap;

    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileDstPath:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private addToUploadListByUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 524
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addToUploadList(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addToUploadList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private checkFolder(Landroid/view/View;)Z
    .locals 2

    .line 324
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomLinearView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const v1, 0x7f0900e3

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v0, 0x7f0900b4

    .line 327
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/improve/move/MoveImageView;

    .line 328
    invoke-virtual {p1}, Lcn/nubia/improve/move/MoveImageView;->getAlbumPos()I

    move-result p1

    .line 330
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

    invoke-virtual {v0, p1}, Lcn/nubia/improve/move/MoveScroll;->getMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    .line 331
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private checkNetworkState()Z
    .locals 5

    .line 614
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/NetworkUtils;->checkNetState(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/common/NetworkUtils;->isWifiDataEnable(Landroid/content/Context;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 619
    :try_start_1
    iget-object v2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/common/NetworkUtils;->isMobileDataEnable(Landroid/content/Context;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move v0, v1

    .line 621
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNetworkState e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nubiashare"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_1
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz v2, :cond_2

    .line 628
    invoke-virtual {p0, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->doUseMobileData(Landroid/content/Context;)V

    goto :goto_2

    .line 632
    :cond_1
    invoke-virtual {p0, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->networkUnenableAndShowDialog(Landroid/content/Context;)V

    :cond_2
    :goto_2
    return v1
.end method

.method private createDefaultFolderName()Ljava/lang/String;
    .locals 2

    .line 429
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f100077

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMoveBottomView()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomView:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;

    if-eqz v0, :cond_0

    return-void

    .line 233
    :cond_0
    new-instance v0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomView:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;

    const v0, 0x7f090113

    .line 234
    invoke-virtual {p0, v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->layoutContainerLayout:Landroid/widget/RelativeLayout;

    .line 235
    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomView:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private dismissCloudDialog()V
    .locals 1

    .line 663
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private enlargeImageView(Landroid/widget/LinearLayout;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/improve/move/MoveImageView;

    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCurrScaleImageView:Lcn/nubia/improve/move/MoveImageView;

    if-eqz p1, :cond_0

    const v0, 0x3f99999a    # 1.2f

    .line 361
    invoke-virtual {p1, v0}, Lcn/nubia/improve/move/MoveImageView;->setScaleFactor(F)V

    :cond_0
    return-void
.end method

.method private hideLoadingDialod()V
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideLoadingDialod mShowLoading = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nubiashare"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-boolean v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowLoading:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0900e6

    .line 224
    invoke-virtual {p0, v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowLoading:Z

    :cond_0
    return-void
.end method

.method private init()V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->initializeFooterData()V

    .line 211
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->createMoveBottomView()V

    return-void
.end method

.method private initHandler()V
    .locals 1

    .line 115
    new-instance v0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$1;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initializeFooterData()V
    .locals 3

    .line 264
    new-instance v0, Lcn/nubia/improve/move/MoveScroll;

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    check-cast v1, Lcn/nubia/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-direct {v0, v1, v2, p0}, Lcn/nubia/improve/move/MoveScroll;-><init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/data/MediaSet;Lcn/nubia/improve/move/MoveScroll$MovePageListener;)V

    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

    .line 265
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->isFirstReloadDone()Z

    move-result v0

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeFooterData reloadDone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nubiashare"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private isAcceptableType(Ljava/lang/String;)Z
    .locals 1

    .line 517
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".png"

    .line 518
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".jpeg"

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".gif"

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private showFolderDialog()V
    .locals 5

    .line 379
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v1, 0x7f1100a5

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$6;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    const v2, 0x7f100060

    .line 380
    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$5;

    invoke-direct {v1, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$5;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    const v2, 0x7f10004e

    .line 407
    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005c

    .line 414
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 415
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mDialogRename:Lcn/nubia/commonui/app/Dialog;

    const v1, 0x7f090091

    .line 416
    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mRenameEdit:Landroid/widget/EditText;

    .line 418
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->createDefaultFolderName()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->newFolderNameWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 422
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mRenameEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 424
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    .line 425
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private showLoadingDialod()V
    .locals 2

    const-string v0, "nubiashare"

    const-string v1, "showLoadingDialod"

    .line 215
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowLoading:Z

    const v0, 0x7f0900e6

    .line 217
    invoke-virtual {p0, v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private upLoadImageToCloudAlbum(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 532
    iput-wide v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mTotalSize:J

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileInfo:Ljava/util/HashMap;

    .line 534
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    .line 536
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.extra.STREAM"

    const-string v4, "nubiashare"

    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SEND_MULTIPLE uri toString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0, v5, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addToUploadListByUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.SEND"

    .line 543
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_1

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SEND uri toString = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0, v2, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addToUploadListByUri(Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    const-string v2, "android.intent.action.VIEW"

    .line 550
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_VIEW uri toString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-direct {p0, v0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addToUploadListByUri(Landroid/net/Uri;Ljava/lang/String;)V

    .line 557
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 558
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->checkNetworkState()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 559
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileInfo:Ljava/util/HashMap;

    iget-wide v2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mTotalSize:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/improve/xcloud/CloudManager;->shareImage(Landroid/content/Context;Ljava/util/HashMap;J)V

    .line 560
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->finish()V

    :cond_3
    return-void
.end method

.method private uploadToNewAlbum(Ljava/lang/String;)V
    .locals 4

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/apps/nubia_cloud/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    .line 436
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10018c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 437
    invoke-direct {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->upLoadImageToCloudAlbum(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addAlbumSetView(Landroid/view/ViewGroup;)V
    .locals 7

    .line 272
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

    invoke-virtual {v0}, Lcn/nubia/improve/move/MoveScroll;->getCount()I

    move-result v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAlbumSetView albumsetNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mNewFolderName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mNewFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nubiashare"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->hideLoadingDialod()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 278
    iget-object v3, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0c003b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0900b4

    .line 280
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcn/nubia/improve/move/MoveImageView;

    .line 281
    invoke-virtual {v4, v1}, Lcn/nubia/improve/move/MoveImageView;->setAlbumPos(I)V

    .line 283
    iget-object v5, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

    new-instance v6, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;

    invoke-direct {v6, p0, v4}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$CoverItemLoader;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Lcn/nubia/improve/move/MoveImageView;)V

    invoke-virtual {v5, v1, v6}, Lcn/nubia/improve/move/MoveScroll;->getBitmap(ILcn/nubia/gallery3d/data/MediaItem$ImageLoaderAsync;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v6, "addAlbumSetView bitmap == null"

    .line 285
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v5, :cond_1

    .line 289
    invoke-virtual {v4, v5}, Lcn/nubia/improve/move/MoveImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 292
    :cond_1
    iget-object v4, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

    invoke-virtual {v4, v1}, Lcn/nubia/improve/move/MoveScroll;->getName(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f09018b

    .line 293
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 294
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 298
    iget-object v4, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

    invoke-virtual {v4, v1}, Lcn/nubia/improve/move/MoveScroll;->getSetPath(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAlbumSetView setPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v5, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;

    invoke-direct {v5, p0, v4}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$2;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    new-instance v4, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$3;

    invoke-direct {v4, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$3;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addNewFolderView(Landroid/view/ViewGroup;)V
    .locals 4

    .line 336
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900b4

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/improve/move/MoveImageView;

    .line 340
    iget-object v2, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800d3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 342
    invoke-virtual {v1, v2}, Lcn/nubia/improve/move/MoveImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v1, 0x7f09018b

    .line 344
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f100066

    .line 345
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 349
    new-instance p1, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$4;

    invoke-direct {p1, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$4;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public cleanImageViewFlag()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomLinearView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCurrScaleImageView:Lcn/nubia/improve/move/MoveImageView;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 370
    invoke-virtual {v0, v1}, Lcn/nubia/improve/move/MoveImageView;->setScaleFactor(F)V

    .line 371
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomLinearView:Landroid/view/View;

    const v1, 0x7f0900e3

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 373
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCurrScaleImageView:Lcn/nubia/improve/move/MoveImageView;

    :cond_1
    return-void
.end method

.method public doUseMobileData(Landroid/content/Context;)V
    .locals 2

    .line 640
    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 641
    new-instance p1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    const v0, 0x7f1100a5

    invoke-direct {p1, p0, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f100060

    new-instance v1, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;

    invoke-direct {v1, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$8;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    .line 642
    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f10004e

    new-instance v1, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$7;

    invoke-direct {v1, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$7;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    .line 650
    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object p1

    .line 656
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    const v0, 0x7f100180

    .line 657
    invoke-virtual {p1, v0}, Lcn/nubia/commonui/app/AlertDialog;->setTitle(I)V

    .line 658
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlertDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public networkUnenable(Landroid/content/Context;)V
    .locals 2

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 205
    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 206
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->finish()V

    return-void
.end method

.method public networkUnenableAndShowDialog(Landroid/content/Context;)V
    .locals 2

    .line 669
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v0, 0x7f100254

    .line 671
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 672
    invoke-static {p1, v0, v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0x2710

    if-ne p1, p3, :cond_1

    .line 162
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->getAccountVersionCode()I

    move-result p1

    const/16 p3, 0x208

    if-lt p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 164
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    if-nez p1, :cond_0

    .line 165
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 167
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/improve/xcloud/CloudManager;->setLogin(Z)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0067

    .line 95
    invoke-virtual {p0, p1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->setContentView(I)V

    .line 96
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->getGalleryActionBar()Lcn/nubia/gallery3d/app/GalleryActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/app/GalleryActionBar;->hide()V

    .line 100
    iput-object p0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->initHandler()V

    .line 102
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/nubia/gallery3d/common/NetworkUtils;->checkNetState(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mNetWorkAvaliable:Z

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNetWorkAvaliable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mNetWorkAvaliable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "nubiashare"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    const/16 v0, 0x8

    .line 109
    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/ui/CloudAlbumSet;

    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 110
    new-instance p1, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;

    invoke-direct {p1, p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;)V

    iput-object p1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mAlbumChangeListener:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyAlbumChange;

    .line 111
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-virtual {v0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->setAlbumChangeListener(Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 186
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onDestroy()V

    const-string v0, "nubiashare"

    const-string v1, " NubiaCloudShareActivity onDestory"

    .line 187
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Lcn/nubia/improve/xcloud/CloudManager;->setLoginListener(Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;)V

    .line 191
    :cond_0
    iput-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCurrScaleImageView:Lcn/nubia/improve/move/MoveImageView;

    .line 192
    iput-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomLinearView:Landroid/view/View;

    .line 193
    iput-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveScroll:Lcn/nubia/improve/move/MoveScroll;

    .line 194
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-virtual {v0, v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->setAlbumChangeListener(Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;)V

    .line 195
    iput-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 196
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileInfo:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 198
    iput-object v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mFileInfo:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 175
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 176
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudAlbumSet:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-virtual {v0}, Lcn/nubia/cloud/ui/CloudAlbumSet;->reSetForceReloadFlag()V

    const-string v0, "nubiashare"

    const-string v1, " NubiaCloudShareActivity onPause"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomView:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;->removeBottomView()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomView:Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MoveBottomView;

    :cond_0
    return-void
.end method

.method public onProgressRefresh()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 6

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mIsSupportCTADialog:Z

    .line 134
    invoke-super {p0}, Lcn/nubia/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 135
    iget-boolean v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mNetWorkAvaliable:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 138
    invoke-static {p0, v1}, Lcn/nubia/improve/xcloud/NubiaAccountUtils;->isNubiaAccountLogin(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)Z

    move-result v2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onResume  isLogin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "nubiashare"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    .line 141
    iget-object v3, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/improve/xcloud/CloudManager;->getInstance(Landroid/content/Context;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    .line 142
    invoke-virtual {v3, v2}, Lcn/nubia/improve/xcloud/CloudManager;->setLogin(Z)V

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onResume mCloudManager.isLogin() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    invoke-virtual {v3}, Lcn/nubia/improve/xcloud/CloudManager;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-direct {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->init()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v3, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mCloudManager:Lcn/nubia/improve/xcloud/CloudManager;

    new-instance v4, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyLoginStatus;

    invoke-direct {v4, p0, v1}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$MyLoginStatus;-><init>(Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity$1;)V

    invoke-virtual {v3, v4}, Lcn/nubia/improve/xcloud/CloudManager;->setLoginListener(Lcn/nubia/improve/xcloud/CloudManager$XCloudLoginListener;)V

    goto :goto_0

    .line 149
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowNubiaAccountLogin:Z

    if-nez v1, :cond_3

    .line 150
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->finish()V

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 153
    iget-boolean v1, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowNubiaAccountLogin:Z

    if-eqz v1, :cond_4

    .line 154
    invoke-virtual {p0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->showAccoutLoginOrRegist()V

    .line 155
    iput-boolean v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mShowNubiaAccountLogin:Z

    :cond_4
    return-void
.end method

.method public refreshFooterViews()V
    .locals 2

    .line 463
    iget-object v0, p0, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->mMoveBottomLinearView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0900e3

    .line 465
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 467
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 468
    invoke-virtual {p0, v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addNewFolderView(Landroid/view/ViewGroup;)V

    .line 469
    invoke-virtual {p0, v0}, Lcn/nubia/improve/nubiacloud/share/NubiaCloudShareActivity;->addAlbumSetView(Landroid/view/ViewGroup;)V

    return-void
.end method
