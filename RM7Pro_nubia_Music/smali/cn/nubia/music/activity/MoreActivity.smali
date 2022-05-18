.class public Lcn/nubia/music/activity/MoreActivity;
.super Lcn/nubia/music/activity/BaseListActivity;
.source "MoreActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;,
        Lcn/nubia/music/activity/MoreActivity$b;,
        Lcn/nubia/music/activity/MoreActivity$a;,
        Lcn/nubia/music/activity/MoreActivity$c;
    }
.end annotation


# static fields
.field protected static final GET_SELECT_FOLDER_REQUEST_CODE:I = 0x100

.field private static MAP:[I = null

.field private static final POSITION_ABOUT:I = 0x2

.field private static final POSITION_CHECK_VERSION:I = 0x3

.field private static final POSITION_QUIT:I = 0x4

.field private static final POSITION_SCAN:I = 0x0

.field private static final POSITION_SCAN_SETTING:I = 0x1


# instance fields
.field private listener:Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;

.field private mAdapter:Lcn/nubia/music/activity/MoreActivity$a;

.field private mClickNewVersion:Z

.field private mContext:Landroid/content/Context;

.field private mCtsManager:Lcn/nubia/music/utils/CtsManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasNewVersion:Z

.field private mHasScanned:Z

.field private mIsNeedScan:Z

.field private mListView:Landroid/widget/ListView;

.field private mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

.field private mScanServiceConnection:Landroid/content/ServiceConnection;

.field private mScanServiceHasBind:Z

.field private mServiceToken:Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;

.field private mUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

.field private onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseListActivity;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mScanServiceHasBind:Z

    .line 63
    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mIsNeedScan:Z

    .line 64
    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasScanned:Z

    .line 66
    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasNewVersion:Z

    .line 67
    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mClickNewVersion:Z

    .line 73
    new-instance v0, Lcn/nubia/music/activity/MoreActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MoreActivity$1;-><init>(Lcn/nubia/music/activity/MoreActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mScanServiceConnection:Landroid/content/ServiceConnection;

    .line 91
    new-instance v0, Lcn/nubia/music/activity/MoreActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MoreActivity$2;-><init>(Lcn/nubia/music/activity/MoreActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/music/activity/MoreActivity;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcn/nubia/music/activity/MoreActivity;->mScanServiceHasBind:Z

    return p1
.end method

.method static synthetic access$1000(Lcn/nubia/music/activity/MoreActivity;ILcn/nubia/music/activity/MoreActivity$b;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/activity/MoreActivity;->setDisplayContent(ILcn/nubia/music/activity/MoreActivity$b;)V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/music/activity/MoreActivity;Lcn/nubia/music/app/scan/IMusicScanService;)Lcn/nubia/music/app/scan/IMusicScanService;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcn/nubia/music/activity/MoreActivity;->mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

    return-object p1
.end method

.method static synthetic access$1100(Lcn/nubia/music/activity/MoreActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->hintNewVersion()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/music/activity/MoreActivity;Lcn/nubia/upgrade/model/VersionData;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/MoreActivity;->showUpdateInfo(Lcn/nubia/upgrade/model/VersionData;)V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/music/activity/MoreActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->hintNoVersion()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/MoreActivity;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mIsNeedScan:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/MoreActivity;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasScanned:Z

    return v0
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/MoreActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->doScan()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/MoreActivity;)Lcn/nubia/music/utils/CtsManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/music/activity/MoreActivity;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->updateApp()V

    return-void
.end method

.method static synthetic access$700(Lcn/nubia/music/activity/MoreActivity;)Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    return-object v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcn/nubia/music/activity/MoreActivity;->MAP:[I

    return-object v0
.end method

.method private bindMusicScanService()V
    .locals 1

    .prologue
    .line 104
    const-string v0, "bindMusicScanService() +++"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mScanServiceHasBind:Z

    .line 106
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mScanServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Lcn/nubia/music/app/scan/MusicScanService;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mServiceToken:Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;

    .line 108
    return-void
.end method

.method private doScan()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "scan"

    const-string v1, "scan"

    const-class v2, Lcn/nubia/music/activity/MoreActivity;

    .line 119
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/activity/MoreActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcn/nubia/music/activity/MoreActivity$c;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MoreActivity$c;-><init>(Lcn/nubia/music/activity/MoreActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHandler:Landroid/os/Handler;

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanService;->setUiHandler(Landroid/os/Handler;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

    if-eqz v0, :cond_1

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasScanned:Z

    .line 130
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/music/activity/MoreActivity;->mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

    invoke-static {v0, v1}, Lcn/nubia/music/app/scan/MusicScanProgress;->showScanProgress(Landroid/content/Context;Lcn/nubia/music/app/scan/IMusicScanService;)V

    .line 131
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mMusicScanService:Lcn/nubia/music/app/scan/IMusicScanService;

    invoke-interface {v0}, Lcn/nubia/music/app/scan/IMusicScanService;->startScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 478
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 480
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {p0, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 483
    :cond_0
    return-void
.end method

.method private getUmengEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    const-class v0, Lcn/nubia/music/activity/MoreActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUmengEventKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    const-class v0, Lcn/nubia/music/activity/MoreActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hintNewVersion()V
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasNewVersion:Z

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasNewVersion:Z

    .line 549
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mAdapter:Lcn/nubia/music/activity/MoreActivity$a;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mAdapter:Lcn/nubia/music/activity/MoreActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MoreActivity$a;->notifyDataSetChanged()V

    .line 553
    :cond_0
    return-void
.end method

.method private hintNoVersion()V
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mClickNewVersion:Z

    if-eqz v0, :cond_0

    .line 540
    const v0, 0x7f0b0015

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mClickNewVersion:Z

    .line 543
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 198
    iput-object p0, p0, Lcn/nubia/music/activity/MoreActivity;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {p0}, Lcn/nubia/music/activity/MoreActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mListView:Landroid/widget/ListView;

    .line 200
    new-instance v0, Lcn/nubia/music/activity/MoreActivity$a;

    iget-object v1, p0, Lcn/nubia/music/activity/MoreActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcn/nubia/music/activity/MoreActivity$a;-><init>(Lcn/nubia/music/activity/MoreActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mAdapter:Lcn/nubia/music/activity/MoreActivity$a;

    .line 201
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/music/activity/MoreActivity;->mAdapter:Lcn/nubia/music/activity/MoreActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 203
    invoke-virtual {p0}, Lcn/nubia/music/activity/MoreActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 204
    return-void
.end method

.method private isSettingCall()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lcn/nubia/music/activity/MoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_0

    .line 191
    const-string v2, "nubia_apps_settings"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 193
    :cond_0
    return v0
.end method

.method private setDisplayContent(ILcn/nubia/music/activity/MoreActivity$b;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x4

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 384
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 385
    sget-object v1, Lcn/nubia/music/activity/MoreActivity;->MAP:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 388
    :pswitch_0
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 394
    :pswitch_1
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 408
    :pswitch_3
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    const v1, 0x7f0b0081

    new-array v2, v6, [Ljava/lang/Object;

    sget-object v3, Lcn/nubia/music/constants/FusionCode;->VERSION_NAME:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcn/nubia/music/utils/ResHelper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasNewVersion:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 415
    :goto_1
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 413
    :cond_0
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 420
    :pswitch_4
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 424
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setInternationalDisplayContent(ILcn/nubia/music/activity/MoreActivity$b;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 434
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 435
    sget-object v1, Lcn/nubia/music/activity/MoreActivity;->MAP:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 467
    :goto_0
    :pswitch_0
    return-void

    .line 438
    :pswitch_1
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 441
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 457
    :pswitch_4
    iget-object v1, p2, Lcn/nubia/music/activity/MoreActivity$b;->a:Landroid/widget/TextView;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    iget-object v0, p2, Lcn/nubia/music/activity/MoreActivity$b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private showUpdateInfo(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mClickNewVersion:Z

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->listener:Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;

    invoke-static {p0, p1, v0}, Lcn/nubia/music/app/update/MusicAppUpdateDialog;->showUpdateInfoDialog(Landroid/app/Activity;Lcn/nubia/upgrade/model/VersionData;Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)V

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mClickNewVersion:Z

    .line 563
    :cond_0
    return-void
.end method

.method private unbindMusicScanService()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "unbindMusicScanService() +++"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mScanServiceHasBind:Z

    .line 113
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mServiceToken:Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;

    invoke-static {v0}, Lcn/nubia/music/app/scan/MusicScanService;->unbindFromService(Lcn/nubia/music/app/scan/MusicScanService$ServiceToken;)V

    .line 115
    return-void
.end method

.method private updateApp()V
    .locals 3

    .prologue
    .line 569
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcn/nubia/music/activity/MoreActivity;->listener:Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;

    if-nez v1, :cond_0

    .line 572
    new-instance v1, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;-><init>(Lcn/nubia/music/activity/MoreActivity;)V

    iput-object v1, p0, Lcn/nubia/music/activity/MoreActivity;->listener:Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;

    .line 575
    :cond_0
    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/music/activity/MoreActivity;->mUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    .line 576
    iget-object v1, p0, Lcn/nubia/music/activity/MoreActivity;->mUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    iget-object v2, p0, Lcn/nubia/music/activity/MoreActivity;->listener:Lcn/nubia/music/activity/MoreActivity$AppUpdateInfoListener;

    invoke-virtual {v1, v2}, Lcn/nubia/music/app/AppUpdateManager;->setListener(Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcn/nubia/music/app/AppUpdateManager;->checkUpdate(Landroid/content/Context;Z)V

    .line 577
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/music/activity/BaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 184
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 208
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 209
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 210
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MoreActivity;->setContentView(I)V

    .line 211
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->isSettingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MoreActivity;->setTitle(I)V

    .line 222
    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/music/activity/MoreActivity;->MAP:[I

    .line 228
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->initView()V

    .line 230
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->bindMusicScanService()V

    .line 231
    new-instance v0, Lcn/nubia/music/utils/CtsManager;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/CtsManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    .line 232
    invoke-static {}, Lcn/nubia/music/utils/CTA;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Lcn/nubia/music/activity/MoreActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/MoreActivity$3;-><init>(Lcn/nubia/music/activity/MoreActivity;)V

    invoke-static {p0, v0}, Lcn/nubia/music/utils/CTA;->showCTADialog(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V

    .line 251
    :goto_1
    return-void

    .line 214
    :cond_0
    const v0, 0x7f0b010f

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MoreActivity;->setTitle(I)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->updateApp()V

    goto :goto_1

    .line 236
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    iget-object v1, p0, Lcn/nubia/music/activity/MoreActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CtsManager;->requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    goto :goto_1

    .line 222
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcn/nubia/music/activity/BaseListActivity;->onDestroy()V

    .line 259
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->unbindMusicScanService()V

    .line 260
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->clear()V

    .line 261
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanFoundFolder;->clear()V

    .line 262
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mUpdateManager:Lcn/nubia/music/app/AppUpdateManager;

    invoke-virtual {v0}, Lcn/nubia/music/app/AppUpdateManager;->clearListener()V

    .line 265
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 270
    sget-object v1, Lcn/nubia/music/activity/MoreActivity;->MAP:[I

    aget v1, v1, p3

    packed-switch v1, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 272
    :pswitch_0
    iput-boolean v2, p0, Lcn/nubia/music/activity/MoreActivity;->mIsNeedScan:Z

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasScanned:Z

    .line 274
    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mScanServiceHasBind:Z

    if-nez v0, :cond_1

    .line 275
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->bindMusicScanService()V

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mIsNeedScan:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/activity/MoreActivity;->mHasScanned:Z

    if-nez v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->doScan()V

    goto :goto_0

    .line 282
    :pswitch_1
    const-string v1, "MoreActivity scan setting"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 283
    const-class v1, Lcn/nubia/music/activity/SettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "about_app"

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/music/activity/MoreActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-class v1, Lcn/nubia/music/activity/AboutAppActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 289
    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/MoreActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 293
    :pswitch_3
    invoke-static {}, Lcn/nubia/music/utils/NetworkHelper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 294
    const v0, 0x7f0b013d

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0

    .line 298
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/music/activity/MoreActivity;->mClickNewVersion:Z

    .line 299
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->updateApp()V

    goto :goto_0

    .line 302
    :pswitch_4
    const-string v0, "MoreActivity quit"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/music/activity/MoreActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "exit_app"

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/music/activity/MoreActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isRunMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onKillProcess(Landroid/content/Context;)V

    .line 306
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->exitApp()V

    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 489
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    .line 490
    const/4 v0, 0x1

    .line 491
    invoke-static {p0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 494
    :cond_0
    if-nez v0, :cond_1

    .line 495
    invoke-virtual {p0}, Lcn/nubia/music/activity/MoreActivity;->finish()V

    .line 498
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    .line 499
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 254
    invoke-super {p0}, Lcn/nubia/music/activity/BaseListActivity;->onRestart()V

    .line 255
    return-void
.end method
