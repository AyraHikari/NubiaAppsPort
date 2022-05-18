.class public Lcn/nubia/music/activity/BaseActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "BaseActivity.java"

# interfaces
.implements Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;


# instance fields
.field protected mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mIsAPlaybarForceGoneAndVisibleEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    return-void
.end method


# virtual methods
.method protected isHasMoreMenu()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 12

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 93
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    const/4 v3, 0x0

    .line 102
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 105
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_4

    .line 106
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.internal.widget.ActionBarContainer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    .line 109
    check-cast v2, Landroid/view/ViewGroup;

    .line 110
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 111
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_3

    .line 112
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 114
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.widget.ActionMenuView"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 115
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 116
    check-cast v1, Landroid/widget/LinearLayout;

    .line 117
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 118
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_2

    .line 119
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 120
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 121
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.internal.view.menu.ActionMenuItemView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 123
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 118
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move-object v1, v3

    .line 111
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v1

    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 130
    :cond_4
    if-eqz v3, :cond_5

    .line 131
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 133
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 22
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->saveActivity(Landroid/app/Activity;)V

    .line 23
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 25
    iget-object v0, p0, Lcn/nubia/music/activity/BaseActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcn/nubia/music/activity/BaseActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    iget-object v0, p0, Lcn/nubia/music/activity/BaseActivity;->mActionbar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 30
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->removeActivity(Landroid/app/Activity;)V

    .line 63
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 64
    return-void
.end method

.method public onForceGone()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcn/nubia/music/activity/BaseActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    if-eqz v0, :cond_0

    .line 74
    :cond_0
    return-void
.end method

.method public onForceVisible()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcn/nubia/music/activity/BaseActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    if-eqz v0, :cond_0

    .line 84
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseActivity;->finish()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcn/nubia/music/activity/BaseActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    .line 89
    return-void
.end method
