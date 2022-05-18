.class public Lcn/nubia/music/activity/BaseFragmentActivity;
.super Lcn/nubia/commonui/actionbar/app/AppCompatActivity;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;


# instance fields
.field private mIsAPlaybarForceGoneAndVisibleEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseFragmentActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->saveActivity(Landroid/app/Activity;)V

    .line 25
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->removeActivity(Landroid/app/Activity;)V

    .line 61
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onDestroy()V

    .line 62
    return-void
.end method

.method public onForceGone()V
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcn/nubia/music/activity/BaseFragmentActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    if-eqz v0, :cond_0

    .line 73
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public onForceVisible()V
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcn/nubia/music/activity/BaseFragmentActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    if-eqz v0, :cond_0

    .line 83
    const v0, 0x7f100155

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 55
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 52
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseFragmentActivity;->finish()V

    .line 53
    const/4 v0, 0x1

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onPause()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/AppCompatActivity;->onResume()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lcn/nubia/music/activity/BaseFragmentActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    .line 67
    return-void
.end method
