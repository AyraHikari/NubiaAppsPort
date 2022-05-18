.class public Lcn/nubia/music/activity/ForceTouchActivity;
.super Landroid/app/Activity;
.source "ForceTouchActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# static fields
.field public static final ACTION_AUDIOPREVIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_FORCETOUCH_PLAY:Ljava/lang/String; = "cn.nubia.music.preset.forcetouch_play"

.field public static final ACTION_FORCETOUCH_SEARCH:Ljava/lang/String; = "cn.nubia.music.preset.forcetouch_search"


# instance fields
.field private isOuterAppIntent:Z

.field private mContext:Landroid/content/Context;

.field private mCtsManager:Lcn/nubia/music/utils/CtsManager;

.field private mJumpIntent:Landroid/content/Intent;

.field private onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

.field private toAudioPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->toAudioPreview:Z

    .line 49
    new-instance v0, Lcn/nubia/music/activity/ForceTouchActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/ForceTouchActivity$1;-><init>(Lcn/nubia/music/activity/ForceTouchActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/ForceTouchActivity;)Lcn/nubia/music/utils/CtsManager;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/ForceTouchActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/ForceTouchActivity;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->isOuterAppIntent:Z

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/ForceTouchActivity;)Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    return-object v0
.end method

.method private showCTADialog()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcn/nubia/music/activity/ForceTouchActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/ForceTouchActivity$2;-><init>(Lcn/nubia/music/activity/ForceTouchActivity;)V

    invoke-static {p0, v0}, Lcn/nubia/music/utils/CTA;->showCTADialog(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V

    .line 91
    return-void
.end method

.method private toTargetActivity()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcn/nubia/music/utils/CTA;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0}, Lcn/nubia/music/activity/ForceTouchActivity;->showCTADialog()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->isOuterAppIntent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ForceTouchActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/music/activity/ForceTouchActivity;->finish()V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    iget-object v1, p0, Lcn/nubia/music/activity/ForceTouchActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CtsManager;->requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 142
    iget-boolean v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->toAudioPreview:Z

    if-eqz v0, :cond_0

    .line 144
    const v0, 0x7f040012

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/ForceTouchActivity;->overridePendingTransition(II)V

    .line 146
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 36
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ForceTouchActivity;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0}, Lcn/nubia/music/activity/ForceTouchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 41
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ForceTouchActivity;->setContentView(I)V

    .line 42
    iput-object p0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->isOuterAppIntent:Z

    .line 44
    new-instance v0, Lcn/nubia/music/utils/CtsManager;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/CtsManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    .line 45
    invoke-virtual {p0}, Lcn/nubia/music/activity/ForceTouchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ForceTouchActivity;->parseIntent(Landroid/content/Intent;)V

    .line 46
    invoke-direct {p0}, Lcn/nubia/music/activity/ForceTouchActivity;->toTargetActivity()V

    .line 47
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 117
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 118
    const/4 v1, 0x1

    .line 119
    array-length v3, p3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    aget v4, p3, v2

    .line 120
    if-eqz v4, :cond_0

    .line 125
    :goto_1
    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ForceTouchActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcn/nubia/music/activity/ForceTouchActivity;->finish()V

    .line 137
    :goto_2
    return-void

    .line 119
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {p0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/ForceTouchActivity;->startActivity(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/music/activity/ForceTouchActivity;->finish()V

    .line 136
    :cond_2
    :goto_3
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    goto :goto_2

    .line 133
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/music/activity/ForceTouchActivity;->finish()V

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public parseIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 94
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    .line 97
    if-eqz v0, :cond_2

    const-string v1, "cn.nubia.music.preset.forcetouch_play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/MainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    iput-boolean v3, p0, Lcn/nubia/music/activity/ForceTouchActivity;->isOuterAppIntent:Z

    goto :goto_0

    .line 100
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "cn.nubia.music.preset.forcetouch_search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 101
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    iput-boolean v3, p0, Lcn/nubia/music/activity/ForceTouchActivity;->isOuterAppIntent:Z

    goto :goto_0

    .line 103
    :cond_3
    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iput-object p1, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    .line 106
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mJumpIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/music/activity/ForceTouchActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    iput-boolean v3, p0, Lcn/nubia/music/activity/ForceTouchActivity;->toAudioPreview:Z

    .line 108
    iput-boolean v3, p0, Lcn/nubia/music/activity/ForceTouchActivity;->isOuterAppIntent:Z

    goto :goto_0
.end method
