.class public Lcn/nubia/music/app/scan/MusicScanProgress;
.super Ljava/lang/Object;
.source "MusicScanProgress.java"


# static fields
.field private static final MSG_SCAN_REFRESH_PROGRESS:I = 0x10

.field private static final REFRESH_PROGRESS_QUICK:I = 0xc8

.field private static final REFRESH_PROGRESS_SLOW:I = 0x7d0

.field private static builder:Lcn/nubia/commonui/app/AlertDialog$Builder;

.field private static mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private static mIsSkipScan:Z

.field private static mScanPercentTextView:Landroid/widget/TextView;

.field private static mScanProgressBar:Landroid/widget/ProgressBar;

.field private static mScanSkipBtn:Landroid/widget/Button;

.field private static mShowStr:Ljava/lang/String;

.field private static mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mIsSkipScan:Z

    .line 31
    sput-object v1, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 34
    sput-object v1, Lcn/nubia/music/app/scan/MusicScanProgress;->builder:Lcn/nubia/commonui/app/AlertDialog$Builder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 17
    sput-boolean p0, Lcn/nubia/music/app/scan/MusicScanProgress;->mIsSkipScan:Z

    return p0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 157
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mIsSkipScan:Z

    .line 160
    return-void
.end method

.method public static dismissScanProgress()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "dismissScanProgress"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 138
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 141
    :cond_0
    return-void
.end method

.method public static initScanProgress(Landroid/content/Context;Lcn/nubia/music/app/scan/IMusicScanService;)V
    .locals 4

    .prologue
    .line 40
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 41
    :cond_0
    const-string v0, "initScanProgress failed"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "initScanProgress"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 49
    const v0, 0x7f0b0017

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mShowStr:Ljava/lang/String;

    .line 50
    const-string v0, "layout_inflater"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 52
    const v1, 0x7f030081

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mView:Landroid/view/View;

    .line 54
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mView:Landroid/view/View;

    const v1, 0x7f100164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mScanProgressBar:Landroid/widget/ProgressBar;

    .line 55
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mView:Landroid/view/View;

    const v1, 0x7f100165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mScanPercentTextView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public static isSkipScan()Z
    .locals 1

    .prologue
    .line 147
    sget-boolean v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mIsSkipScan:Z

    return v0
.end method

.method public static showScanProgress(Landroid/content/Context;Lcn/nubia/music/app/scan/IMusicScanService;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    .line 94
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const-string v0, "layout_inflater"

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 101
    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0027

    new-instance v2, Lcn/nubia/music/app/scan/MusicScanProgress$1;

    invoke-direct {v2, p1}, Lcn/nubia/music/app/scan/MusicScanProgress$1;-><init>(Lcn/nubia/music/app/scan/IMusicScanService;)V

    .line 106
    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    move-result-object v0

    .line 124
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->dismissScanProgress()V

    .line 125
    sput-boolean v3, Lcn/nubia/music/app/scan/MusicScanProgress;->mIsSkipScan:Z

    .line 126
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 127
    sget-object v0, Lcn/nubia/music/app/scan/MusicScanProgress;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0
.end method
