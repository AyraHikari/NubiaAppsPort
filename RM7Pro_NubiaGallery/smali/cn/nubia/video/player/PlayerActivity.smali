.class public Lcn/nubia/video/player/PlayerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "PlayerActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerActivity"


# instance fields
.field mAcitivityIsInPause:Z

.field private mFragMgr:Landroid/support/v4/app/FragmentManager;

.field private mFragment:Lcn/nubia/video/player/FragmentBase;

.field private mFragmentTag:Ljava/lang/String;

.field mIsWallPaper:Z

.field private mUri:Landroid/net/Uri;

.field private mVideoView:Lcn/nubia/video/player/VideoView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->mAcitivityIsInPause:Z

    .line 27
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->mIsWallPaper:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/video/player/PlayerActivity;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/video/player/PlayerActivity;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 110
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoView()Lcn/nubia/video/player/VideoView;
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object v0
.end method

.method public isWallPaper()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->mIsWallPaper:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->mFragment:Lcn/nubia/video/player/FragmentBase;

    invoke-virtual {v0}, Lcn/nubia/video/player/FragmentBase;->onBackPress()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->mVideoView:Lcn/nubia/video/player/VideoView;

    iget-boolean v1, p0, Lcn/nubia/video/player/PlayerActivity;->mAcitivityIsInPause:Z

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->relayout(Z)V

    .line 77
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c006a

    .line 33
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/PlayerActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    .line 35
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0901ae

    .line 37
    invoke-virtual {p0, p1}, Lcn/nubia/video/player/PlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/VideoView;

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->mVideoView:Lcn/nubia/video/player/VideoView;

    .line 38
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->mUri:Landroid/net/Uri;

    .line 39
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isWallPaper"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/video/player/PlayerActivity;->mIsWallPaper:Z

    .line 40
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->onPlay()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->mAcitivityIsInPause:Z

    .line 97
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPlay()V
    .locals 4

    .line 44
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->mVideoView:Lcn/nubia/video/player/VideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setVisibility(I)V

    .line 45
    invoke-virtual {p0}, Lcn/nubia/video/player/PlayerActivity;->selectFragment()V

    .line 46
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->mVideoView:Lcn/nubia/video/player/VideoView;

    new-instance v1, Lcn/nubia/video/player/PlayerActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/PlayerActivity$1;-><init>(Lcn/nubia/video/player/PlayerActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/video/player/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->mAcitivityIsInPause:Z

    .line 84
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcn/nubia/video/player/PlayerActivity;->mAcitivityIsInPause:Z

    .line 91
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    return-void
.end method

.method selectFragment()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcn/nubia/video/player/PlayerActivity;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcn/nubia/video/player/PlayerActivity;->mFragment:Lcn/nubia/video/player/FragmentBase;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 66
    :cond_0
    new-instance v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;

    invoke-direct {v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerFragment;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/player/PlayerActivity;->mFragment:Lcn/nubia/video/player/FragmentBase;

    const-string v2, "NubiaPlayerFragment"

    .line 67
    iput-object v2, p0, Lcn/nubia/video/player/PlayerActivity;->mFragmentTag:Ljava/lang/String;

    const v3, 0x7f0900ca

    .line 69
    invoke-virtual {v0, v3, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 70
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcn/nubia/video/player/PlayerActivity;->mUri:Landroid/net/Uri;

    return-void
.end method
