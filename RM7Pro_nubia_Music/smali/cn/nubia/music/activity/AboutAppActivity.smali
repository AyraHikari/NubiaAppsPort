.class public Lcn/nubia/music/activity/AboutAppActivity;
.super Lcn/nubia/music/activity/BaseActivity;
.source "AboutAppActivity.java"


# instance fields
.field private mCopyRightText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcn/nubia/music/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcn/nubia/music/activity/AboutAppActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 26
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AboutAppActivity;->setTitle(I)V

    .line 27
    const v0, 0x7f100042

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AboutAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    sget-object v1, Lcn/nubia/music/constants/FusionCode;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v0, 0x7f100043

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AboutAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/AboutAppActivity;->mCopyRightText:Landroid/widget/TextView;

    .line 33
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcn/nubia/music/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AboutAppActivity;->setContentView(I)V

    .line 20
    invoke-direct {p0}, Lcn/nubia/music/activity/AboutAppActivity;->initView()V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcn/nubia/music/activity/BaseActivity;->onDestroy()V

    .line 38
    return-void
.end method
