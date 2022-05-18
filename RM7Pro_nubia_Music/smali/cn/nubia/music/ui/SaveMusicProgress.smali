.class public Lcn/nubia/music/ui/SaveMusicProgress;
.super Ljava/lang/Object;
.source "SaveMusicProgress.java"


# static fields
.field private static final MSG_SCAN_REFRESH_PROGRESS:I = 0x10

.field private static final REFRESH_PROGRESS_QUICK:I = 0xc8

.field private static final REFRESH_PROGRESS_SLOW:I = 0x7d0

.field private static mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private static mHandler:Landroid/os/Handler;

.field private static mScanPercentTextView:Landroid/widget/TextView;

.field private static mScanProgressBar:Landroid/widget/ProgressBar;

.field private static mShowStr:Ljava/lang/String;

.field private static mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 112
    new-instance v0, Lcn/nubia/music/ui/SaveMusicProgress$1;

    invoke-direct {v0}, Lcn/nubia/music/ui/SaveMusicProgress$1;-><init>()V

    sput-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mScanProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mScanPercentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mShowStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    :cond_0
    sput-object v2, Lcn/nubia/music/ui/SaveMusicProgress;->mView:Landroid/view/View;

    .line 103
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 106
    :cond_1
    sput-object v2, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 107
    sput-object v2, Lcn/nubia/music/ui/SaveMusicProgress;->mScanProgressBar:Landroid/widget/ProgressBar;

    .line 108
    sput-object v2, Lcn/nubia/music/ui/SaveMusicProgress;->mScanPercentTextView:Landroid/widget/TextView;

    .line 109
    sput-object v2, Lcn/nubia/music/ui/SaveMusicProgress;->mShowStr:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static dismissScanProgress()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 93
    :cond_0
    return-void
.end method

.method public static initSaveProgress(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 49
    :cond_0
    const v0, 0x7f0b0017

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mShowStr:Ljava/lang/String;

    .line 50
    const-string v0, "layout_inflater"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    const v1, 0x7f030080

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mView:Landroid/view/View;

    .line 54
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mView:Landroid/view/View;

    const v1, 0x7f100164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mScanProgressBar:Landroid/widget/ProgressBar;

    .line 55
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mView:Landroid/view/View;

    const v1, 0x7f100165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mScanPercentTextView:Landroid/widget/TextView;

    .line 57
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-nez v0, :cond_1

    .line 58
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->BeanMusicDialogBuilder(Landroid/content/Context;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/ui/SaveMusicProgress;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 59
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, "null != mDialog"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showScanProgress(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 69
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 70
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-string v0, "showScanProgress,error:activity was finished!"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 78
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 80
    sget-object v0, Lcn/nubia/music/ui/SaveMusicProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    goto :goto_0
.end method
