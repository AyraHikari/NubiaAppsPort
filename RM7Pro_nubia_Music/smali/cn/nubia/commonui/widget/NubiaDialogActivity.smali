.class public abstract Lcn/nubia/commonui/widget/NubiaDialogActivity;
.super Landroid/app/Activity;
.source "NubiaDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaDialogActivity$a;,
        Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private mCancel:Landroid/widget/TextView;

.field private mContentView:Landroid/view/ViewGroup;

.field private mLandThemeId:I

.field private mListener:Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;

.field private mOk:Landroid/widget/TextView;

.field private mPortThemeId:I

.field private mScreenInfo:Lcn/nubia/commonui/widget/NubiaDialogActivity$a;

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    sget v0, Lcn/nubia/commonui/R$style;->Theme_Nubia_Dialog_DialogActivity:I

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mLandThemeId:I

    .line 26
    sget v0, Lcn/nubia/commonui/R$style;->Theme_Nubia_NoActionBar_DialogActivity:I

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mPortThemeId:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaDialogActivity;)Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mListener:Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 218
    sget v0, Lcn/nubia/commonui/R$id;->nubia_dialog_activity_panel:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 220
    const/4 v1, 0x0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 226
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mScreenInfo:Lcn/nubia/commonui/widget/NubiaDialogActivity$a;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->a(Lcn/nubia/commonui/widget/NubiaDialogActivity$a;)Z

    move-result v4

    .line 227
    if-eqz v1, :cond_2

    .line 228
    if-eqz v4, :cond_3

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mScreenInfo:Lcn/nubia/commonui/widget/NubiaDialogActivity$a;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->b(Lcn/nubia/commonui/widget/NubiaDialogActivity$a;)I

    move-result v2

    iget v5, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mStatusBarHeight:I

    sub-int/2addr v2, v5

    :goto_0
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 230
    if-eqz v4, :cond_1

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mScreenInfo:Lcn/nubia/commonui/widget/NubiaDialogActivity$a;

    invoke-static {v2}, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;->b(Lcn/nubia/commonui/widget/NubiaDialogActivity$a;)I

    move-result v3

    :cond_1
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 234
    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 235
    return-void

    :cond_3
    move v2, v3

    .line 228
    goto :goto_0
.end method

.method private initDialogView()V
    .locals 2

    .prologue
    .line 138
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_dialog_activity_layout:I

    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 139
    sget v0, Lcn/nubia/commonui/R$id;->nubia_dialog_activity_content:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    .line 140
    sget v0, Lcn/nubia/commonui/R$id;->nubia_dialog_activity_cancel:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mCancel:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mCancel:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaDialogActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity$2;-><init>(Lcn/nubia/commonui/widget/NubiaDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    sget v0, Lcn/nubia/commonui/R$id;->nubia_dialog_activity_ok:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaDialogActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity$3;-><init>(Lcn/nubia/commonui/widget/NubiaDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    return-void
.end method

.method private prepareContentChange()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->resetScreenInfo(Landroid/content/Context;)V

    .line 97
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->adjustLayout()V

    .line 98
    return-void
.end method

.method private resetScreenInfo(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/commonui/widget/NubiaDialogActivity$a;-><init>(Lcn/nubia/commonui/widget/NubiaDialogActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mScreenInfo:Lcn/nubia/commonui/widget/NubiaDialogActivity$a;

    .line 277
    return-void
.end method

.method private setContentInnerView(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 168
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 169
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 172
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 174
    if-eqz p3, :cond_2

    .line 175
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setDialogActivityTheme()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->getRequestedOrientation()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 87
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mPortThemeId:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->setTheme(I)V

    .line 93
    :goto_1
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :cond_1
    if-eqz v0, :cond_2

    .line 89
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mLandThemeId:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->setTheme(I)V

    goto :goto_1

    .line 91
    :cond_2
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mPortThemeId:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->setTheme(I)V

    goto :goto_1
.end method

.method private setStatusBarHeight()V
    .locals 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 78
    if-lez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mStatusBarHeight:I

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 200
    sget v0, Lcn/nubia/commonui/R$anim;->nubia_dialog_activity_closed_anim_in:I

    sget v1, Lcn/nubia/commonui/R$anim;->nubia_dialog_activity_closed_anim_out:I

    invoke-super {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 203
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->setDialogActivityTheme()V

    .line 70
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->initDialogView()V

    .line 71
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->setStatusBarHeight()V

    .line 72
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->prepareContentChange()V

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, v0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->setContentInnerView(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->setContentInnerView(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->setContentInnerView(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    return-void
.end method

.method public setNegativeButtonEnabled(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 52
    sget v0, Lcn/nubia/commonui/R$id;->nubia_dialog_activity_ok:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/commonui/widget/NubiaDialogActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/widget/NubiaDialogActivity$1;-><init>(Lcn/nubia/commonui/widget/NubiaDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mOk:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 64
    return-void
.end method

.method public setOnButtonClickListener(Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mListener:Lcn/nubia/commonui/widget/NubiaDialogActivity$OnButtonClickListener;

    .line 43
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 103
    return-void
.end method

.method public setThemes(II)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mLandThemeId:I

    .line 47
    iput p2, p0, Lcn/nubia/commonui/widget/NubiaDialogActivity;->mPortThemeId:I

    .line 48
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 210
    sget v0, Lcn/nubia/commonui/R$id;->nubia_dialog_activity_title:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 212
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    return-void
.end method
