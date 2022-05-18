.class public Lcn/nubia/music/activity/BaseListActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;
.source "BaseListActivity.java"

# interfaces
.implements Lcn/nubia/music/app/listener/IPlaybarForceGoneListener;


# instance fields
.field private mButtonClick:Landroid/view/View$OnClickListener;

.field private mIsAPlaybarForceGoneAndVisibleEnable:Z

.field private mMoreButton:Landroid/widget/ImageView;

.field protected mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

.field protected mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

.field protected mTitle:Lcn/nubia/music/ui/ScrollForeverTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mTitle:Lcn/nubia/music/ui/ScrollForeverTextView;

    .line 71
    new-instance v0, Lcn/nubia/music/activity/BaseListActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/BaseListActivity$1;-><init>(Lcn/nubia/music/activity/BaseListActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mPopListener:Lcn/nubia/commonui/widget/NubiaMorePopup$OnClickListener;

    .line 121
    new-instance v0, Lcn/nubia/music/activity/BaseListActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/BaseListActivity$3;-><init>(Lcn/nubia/music/activity/BaseListActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mButtonClick:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected configActionbar()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 83
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    const v0, 0x7f030032

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setCustomView(I)V

    .line 85
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f10008f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mMoreButton:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mMoreButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/music/activity/BaseListActivity;->mButtonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    new-instance v0, Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaMorePopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    .line 94
    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100088

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/ScrollForeverTextView;

    check-cast v0, Lcn/nubia/music/ui/ScrollForeverTextView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mTitle:Lcn/nubia/music/ui/ScrollForeverTextView;

    .line 96
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mTitle:Lcn/nubia/music/ui/ScrollForeverTextView;

    new-instance v1, Lcn/nubia/music/activity/BaseListActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/BaseListActivity$2;-><init>(Lcn/nubia/music/activity/BaseListActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method protected isHasMoreMenu()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 12

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 207
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 213
    const/4 v3, 0x0

    .line 216
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 219
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_4

    .line 220
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.internal.widget.ActionBarContainer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v1

    .line 223
    check-cast v2, Landroid/view/ViewGroup;

    .line 224
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 225
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_3

    .line 226
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 228
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.widget.ActionMenuView"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 229
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 230
    check-cast v1, Landroid/widget/LinearLayout;

    .line 231
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    .line 232
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_2

    .line 233
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 234
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 235
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.android.internal.view.menu.ActionMenuItemView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_0

    .line 237
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 232
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move-object v1, v3

    .line 225
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move-object v3, v1

    goto :goto_1

    .line 219
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 244
    :cond_4
    if-eqz v3, :cond_5

    .line 245
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 247
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->saveActivity(Landroid/app/Activity;)V

    .line 46
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseListActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseListActivity;->isHasMoreMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseListActivity;->configActionbar()V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 170
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->removeActivity(Landroid/app/Activity;)V

    .line 171
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onDestroy()V

    .line 172
    return-void
.end method

.method public onForceGone()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    if-eqz v0, :cond_0

    .line 182
    const v0, 0x7f10007a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_0
    return-void
.end method

.method public onForceVisible()V
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    if-eqz v0, :cond_0

    .line 192
    const v0, 0x7f10007a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :cond_0
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 151
    const/16 v0, 0x8

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    iget-object v1, p0, Lcn/nubia/music/activity/BaseListActivity;->mMoreButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaMorePopup;->setAnchorView(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mPopupMenu:Lcn/nubia/commonui/widget/NubiaMorePopup;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaMorePopup;->show()V

    .line 155
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 160
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 165
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseListActivity;->finish()V

    .line 163
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onPause()V

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarListActivity;->onResume()V

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcn/nubia/music/activity/BaseListActivity;->mIsAPlaybarForceGoneAndVisibleEnable:Z

    .line 177
    return-void
.end method

.method protected setMoreButtonClick(Z)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mMoreButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 106
    if-eqz p1, :cond_1

    .line 107
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mMoreButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/BaseListActivity;->mMoreButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
