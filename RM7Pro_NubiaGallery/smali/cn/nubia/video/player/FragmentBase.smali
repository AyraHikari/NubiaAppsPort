.class public Lcn/nubia/video/player/FragmentBase;
.super Landroid/support/v4/app/Fragment;
.source "FragmentBase.java"

# interfaces
.implements Lcn/nubia/video/player/FragmentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentBase"


# instance fields
.field private mBackPressCount:I

.field protected mContext:Landroid/content/Context;

.field protected mController:Lcn/nubia/video/player/ControllerBase;

.field private mHandler:Landroid/os/Handler;

.field private mIsFinished:Z

.field private mResetPressCountRunnable:Ljava/lang/Runnable;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcn/nubia/video/player/FragmentBase;->mIsFinished:Z

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/player/FragmentBase;->mHandler:Landroid/os/Handler;

    .line 96
    iput v0, p0, Lcn/nubia/video/player/FragmentBase;->mBackPressCount:I

    .line 97
    new-instance v0, Lcn/nubia/video/player/FragmentBase$1;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/FragmentBase$1;-><init>(Lcn/nubia/video/player/FragmentBase;)V

    iput-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mResetPressCountRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcn/nubia/video/player/FragmentBase;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcn/nubia/video/player/FragmentBase;->mBackPressCount:I

    return p1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/video/player/FragmentBase;->mContext:Landroid/content/Context;

    .line 33
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onBackPress()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mController:Lcn/nubia/video/player/ControllerBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/video/player/ControllerBase;->isLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mController:Lcn/nubia/video/player/ControllerBase;

    invoke-virtual {v0}, Lcn/nubia/video/player/ControllerBase;->show()V

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/FragmentBase;->mResetPressCountRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/FragmentBase;->mResetPressCountRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    iget v0, p0, Lcn/nubia/video/player/FragmentBase;->mBackPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/video/player/FragmentBase;->mBackPressCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/FragmentBase;->mResetPressCountRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    invoke-virtual {p0}, Lcn/nubia/video/player/FragmentBase;->onFinish()V

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lcn/nubia/gallery3d/video/VideoToast;

    invoke-virtual {p0}, Lcn/nubia/video/player/FragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10027b

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mController:Lcn/nubia/video/player/ControllerBase;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcn/nubia/video/player/ControllerBase;->release()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mController:Lcn/nubia/video/player/ControllerBase;

    .line 92
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onFinish()V
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcn/nubia/video/player/FragmentBase;->mIsFinished:Z

    .line 82
    invoke-virtual {p0}, Lcn/nubia/video/player/FragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mController:Lcn/nubia/video/player/ControllerBase;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/nubia/video/player/FragmentBase;->mIsFinished:Z

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lcn/nubia/video/player/ControllerBase;->unregistAudioFocus()V

    .line 69
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mController:Lcn/nubia/video/player/ControllerBase;

    invoke-virtual {v0}, Lcn/nubia/video/player/ControllerBase;->onPause()V

    .line 71
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mController:Lcn/nubia/video/player/ControllerBase;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcn/nubia/video/player/ControllerBase;->onResume()V

    .line 60
    iget-object v0, p0, Lcn/nubia/video/player/FragmentBase;->mController:Lcn/nubia/video/player/ControllerBase;

    invoke-virtual {v0}, Lcn/nubia/video/player/ControllerBase;->registAudioFocus()V

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public tryReLayout()V
    .locals 2

    .line 127
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 128
    iget-object v1, p0, Lcn/nubia/video/player/FragmentBase;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method
