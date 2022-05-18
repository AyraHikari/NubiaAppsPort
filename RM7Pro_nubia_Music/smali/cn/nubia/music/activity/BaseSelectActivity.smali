.class public abstract Lcn/nubia/music/activity/BaseSelectActivity;
.super Landroid/app/Activity;
.source "BaseSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCancelSelectImg:Landroid/widget/ImageView;

.field private mConfirmTextView:Landroid/widget/TextView;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field protected mSelectAllImg:Landroid/widget/ImageView;

.field protected mSelectCntTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f100177

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mConfirmTextView:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mConfirmTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v0, 0x7f10017b

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mSelectAllImg:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f100179

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mCancelSelectImg:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f100175

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mSelectCntTextView:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mSelectAllImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mCancelSelectImg:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v0, 0x7f100173

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 45
    return-void
.end method


# virtual methods
.method public abstract allSelectOption()V
.end method

.method public abstract confirmOption()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->confirmOption()V

    .line 90
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 93
    :pswitch_2
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->allSelectOption()V

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-static {}, Lcn/nubia/music/app/scan/MusicScanProgress;->clear()V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->finish()V

    goto :goto_0

    .line 86
    :pswitch_data_0
    .packed-switch 0x7f100177
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->saveActivity(Landroid/app/Activity;)V

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/BaseSelectActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseSelectActivity;->initView()V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 80
    invoke-static {p0}, Lcn/nubia/music/utils/MusicUtils;->removeActivity(Landroid/app/Activity;)V

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageEnd(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/third/StatisticsEvent;->onPageStart(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setAllSelectIcon(Z)V
    .locals 2

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mSelectAllImg:Landroid/widget/ImageView;

    const v1, 0x7f02028f

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mSelectAllImg:Landroid/widget/ImageView;

    const v1, 0x7f020290

    invoke-static {v1}, Lcn/nubia/music/utils/ResHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSelectTitle(J)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mSelectCntTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 52
    const v0, 0x7f0b003d

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcn/nubia/music/activity/BaseSelectActivity;->mSelectCntTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-void
.end method
