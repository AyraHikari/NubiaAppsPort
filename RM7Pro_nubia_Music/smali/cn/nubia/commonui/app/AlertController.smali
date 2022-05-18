.class public Lcn/nubia/commonui/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/app/AlertController$b;,
        Lcn/nubia/commonui/app/AlertController$AlertParams;,
        Lcn/nubia/commonui/app/AlertController$RecycleListView;,
        Lcn/nubia/commonui/app/AlertController$a;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mBackAnimView:Landroid/view/View;

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private mContentView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mNubiaLeftButtonBgID:I

.field private mNubiaMiddleButtonBgID:I

.field private mNubiaRightButtonBgID:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mTranslatePadding:F

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 91
    iput v1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    .line 112
    iput v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    .line 128
    new-instance v0, Lcn/nubia/commonui/app/AlertController$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertController$1;-><init>(Lcn/nubia/commonui/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 179
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 181
    iput-object p3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    .line 182
    new-instance v0, Lcn/nubia/commonui/app/AlertController$a;

    invoke-direct {v0, p2}, Lcn/nubia/commonui/app/AlertController$a;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 185
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 186
    sget v0, Lcn/nubia/commonui/R$drawable;->nubia_dialog_left_btn_default_material_borderless:I

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_dialog_mid_btn_default_material_borderless:I

    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_dialog_right_btn_default_material_borderless:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/commonui/app/AlertController;->setNubiaButtonBackground(III)V

    .line 190
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcn/nubia/commonui/app/AlertController;I)I
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/app/AlertController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mListLayout:I

    return v0
.end method

.method private adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 459
    if-nez p1, :cond_1

    .line 461
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_button_bg:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 462
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcn/nubia/commonui/R$id;->nubia_bold_divider:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 463
    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 466
    :cond_0
    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 473
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 474
    :goto_0
    if-eqz v0, :cond_4

    .line 476
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 477
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_2

    if-nez p2, :cond_2

    .line 479
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 482
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_center_dialog_vertical_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 485
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 486
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 473
    goto :goto_0

    .line 491
    :cond_4
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 492
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 495
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/commonui/R$dimen;->nubia_center_dialog_vertical_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 497
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 498
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_title_content_divider:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    :goto_0
    return v0

    .line 198
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 199
    goto :goto_0

    .line 202
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 203
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 204
    :cond_2
    if-lez v2, :cond_3

    .line 205
    add-int/lit8 v2, v2, -0x1

    .line 206
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 207
    invoke-static {v3}, Lcn/nubia/commonui/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 212
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2

    .prologue
    .line 710
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 711
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 712
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 713
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    return-void
.end method

.method private isCenterAlertDialog()Z
    .locals 2

    .prologue
    .line 510
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    sget v1, Lcn/nubia/commonui/R$layout;->nubia_alert_dialog_holo_center:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 638
    if-eqz p1, :cond_0

    .line 639
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 641
    :cond_0
    if-eqz p2, :cond_1

    .line 642
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 644
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 639
    goto :goto_0

    :cond_3
    move v1, v2

    .line 642
    goto :goto_1
.end method

.method private resetDialogButtonStyle()V
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 1118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1120
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1121
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1122
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1123
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1124
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1128
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1129
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1130
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 226
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 232
    :goto_0
    return v0

    .line 228
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 229
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 232
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 11

    .prologue
    .line 728
    sget v5, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 729
    sget v6, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 730
    sget v7, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 731
    sget v8, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 741
    const/4 v0, 0x4

    new-array v9, v0, [Landroid/view/View;

    .line 742
    const/4 v0, 0x4

    new-array v10, v0, [Z

    .line 743
    const/4 v3, 0x0

    .line 744
    const/4 v2, 0x0

    .line 746
    const/4 v0, 0x0

    .line 747
    if-eqz p5, :cond_0

    .line 748
    aput-object p1, v9, v0

    .line 749
    const/4 v1, 0x0

    aput-boolean v1, v10, v0

    .line 750
    const/4 v0, 0x1

    .line 758
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    const/4 p2, 0x0

    :cond_1
    aput-object p2, v9, v0

    .line 759
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    aput-boolean v1, v10, v0

    .line 760
    add-int/lit8 v0, v0, 0x1

    .line 762
    if-eqz p6, :cond_2

    .line 763
    aput-object p3, v9, v0

    .line 764
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController;->mForceInverseBackground:Z

    aput-boolean v1, v10, v0

    .line 765
    add-int/lit8 v0, v0, 0x1

    .line 768
    :cond_2
    if-eqz p7, :cond_3

    .line 769
    aput-object p4, v9, v0

    .line 770
    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 773
    :cond_3
    const/4 v0, 0x0

    .line 774
    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    move-object v2, v3

    :goto_1
    array-length v3, v9

    if-ge v4, v3, :cond_a

    .line 775
    aget-object v3, v9, v4

    .line 776
    if-nez v3, :cond_5

    .line 774
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 759
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 780
    :cond_5
    if-eqz v2, :cond_6

    .line 781
    if-nez v0, :cond_8

    .line 782
    if-eqz v1, :cond_7

    move v0, v5

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 786
    :goto_4
    const/4 v0, 0x1

    .line 790
    :cond_6
    aget-boolean v1, v10, v4

    move-object v2, v3

    goto :goto_2

    :cond_7
    move v0, v6

    .line 782
    goto :goto_3

    .line 784
    :cond_8
    if-eqz v1, :cond_9

    move v0, v7

    :goto_5
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move v0, v8

    goto :goto_5

    .line 793
    :cond_a
    if-eqz v2, :cond_b

    .line 794
    if-eqz v0, :cond_f

    .line 795
    sget v3, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 796
    sget v0, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 797
    sget v4, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 801
    if-eqz v1, :cond_e

    if-eqz p7, :cond_d

    :goto_6
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 810
    :cond_b
    :goto_7
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 811
    if-eqz v0, :cond_c

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_c

    .line 812
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 813
    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    .line 814
    const/4 v2, -0x1

    if-le v1, v2, :cond_c

    .line 815
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 816
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 819
    :cond_c
    return-void

    :cond_d
    move v0, v3

    .line 801
    goto :goto_6

    :cond_e
    move v0, v4

    goto :goto_6

    .line 804
    :cond_f
    sget v0, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 805
    sget v3, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 806
    if-eqz v1, :cond_10

    :goto_8
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_10
    move v0, v3

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 647
    .line 648
    const/4 v4, 0x2

    .line 649
    const/4 v5, 0x4

    .line 651
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->button1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 652
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v2

    .line 662
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/commonui/R$id;->button2:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 663
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 674
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/commonui/R$id;->button3:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 675
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 678
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 687
    :goto_2
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->resetDialogButtonStyle()V

    .line 690
    if-ne v1, v3, :cond_5

    .line 691
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 698
    :cond_0
    :goto_3
    if-eqz v1, :cond_7

    move v6, v3

    .line 699
    :goto_4
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 700
    if-nez v6, :cond_1

    .line 701
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const-string v1, "setCloseOnTouchOutsideIfNotSet"

    new-array v4, v3, [Ljava/lang/Object;

    .line 704
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    move v3, v2

    .line 703
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 706
    :cond_1
    return v6

    .line 657
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v1, v3

    .line 659
    goto :goto_0

    .line 668
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 671
    or-int/2addr v1, v4

    goto :goto_1

    .line 680
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    or-int/2addr v1, v5

    goto :goto_2

    .line 692
    :cond_5
    if-ne v1, v4, :cond_6

    .line 693
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 694
    :cond_6
    if-ne v1, v5, :cond_0

    .line 695
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    move v6, v2

    .line 698
    goto :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 602
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 603
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 606
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 607
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 612
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 618
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 619
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 620
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 621
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 622
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 626
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->nubia_center_title_content_divider:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 632
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomView()Z
    .locals 7

    .prologue
    const/high16 v4, 0x20000

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 514
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/commonui/R$id;->customPanel:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 516
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 517
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    move-object v3, v2

    .line 525
    :goto_0
    if-eqz v3, :cond_6

    const/4 v1, 0x1

    move v2, v1

    .line 526
    :goto_1
    if-eqz v2, :cond_0

    invoke-static {v3}, Lcn/nubia/commonui/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 531
    :cond_1
    if-eqz v2, :cond_7

    .line 532
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcn/nubia/commonui/R$id;->custom:I

    invoke-virtual {v1, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 533
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-boolean v3, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_2

    .line 536
    iget v3, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 540
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 541
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 547
    :cond_3
    :goto_2
    return v2

    .line 518
    :cond_4
    iget v2, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    if-eqz v2, :cond_5

    .line 519
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 520
    iget v3, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 521
    goto :goto_0

    .line 522
    :cond_5
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_0

    :cond_6
    move v2, v1

    .line 525
    goto :goto_1

    .line 544
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private setupDecor()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 420
    new-instance v2, Lcn/nubia/commonui/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcn/nubia/commonui/app/AlertController$2;-><init>(Lcn/nubia/commonui/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 432
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 435
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 551
    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 555
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 558
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/commonui/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 562
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    move v0, v1

    .line 598
    :goto_0
    return v0

    .line 564
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcn/nubia/commonui/R$id;->icon:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 566
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 567
    :goto_1
    if-eqz v0, :cond_4

    .line 569
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/commonui/R$id;->alertTitle:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 570
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 566
    goto :goto_1

    .line 577
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_0

    .line 582
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 583
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 584
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 585
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    .line 582
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 586
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    goto :goto_0

    .line 591
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 592
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v0, v2

    .line 595
    goto :goto_0
.end method

.method private setupView()V
    .locals 8

    .prologue
    .line 438
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 439
    invoke-direct {p0, v2}, Lcn/nubia/commonui/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 441
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 442
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupButtons()Z

    move-result v7

    .line 444
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 445
    invoke-direct {p0, v1}, Lcn/nubia/commonui/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)Z

    move-result v5

    .line 447
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcn/nubia/commonui/R$id;->customPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 448
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupCustomView()Z

    move-result v6

    .line 450
    invoke-direct {p0, v7, v6, v1, v2}, Lcn/nubia/commonui/app/AlertController;->adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object v0, p0

    .line 452
    invoke-direct/range {v0 .. v7}, Lcn/nubia/commonui/app/AlertController;->setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 454
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 394
    packed-switch p1, :pswitch_data_0

    .line 402
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 396
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    .prologue
    .line 380
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 381
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 382
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 218
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->selectContentView()I

    move-result v0

    .line 219
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 220
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupView()V

    .line 221
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupDecor()V

    .line 222
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetNubiaAlertDialogLayout()V
    .locals 1

    .prologue
    .line 1098
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_alert_dialog_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 1099
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mListLayout:I

    .line 1100
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_multichoice_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mMultiChoiceItemLayout:I

    .line 1101
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_singlechoice_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1102
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_item_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mListItemLayout:I

    .line 1103
    return-void
.end method

.method setAlertDialogLayout(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 125
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 310
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 311
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 314
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 332
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :pswitch_0
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 318
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 334
    :goto_0
    return-void

    .line 322
    :pswitch_1
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 323
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 327
    :pswitch_2
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 328
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 314
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0

    .prologue
    .line 292
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    .line 293
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 247
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 344
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 346
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 347
    if-eqz p1, :cond_1

    .line 348
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 361
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 362
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 364
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 365
    if-eqz p1, :cond_1

    .line 366
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    .prologue
    .line 386
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mForceInverseBackground:Z

    .line 387
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 251
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    return-void
.end method

.method setNubiaButtonBackground(III)V
    .locals 0

    .prologue
    .line 1110
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1111
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1112
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1113
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 236
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 237
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 261
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 263
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 269
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 270
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 271
    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 272
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 279
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 282
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingLeft:I

    .line 283
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingTop:I

    .line 284
    iput p4, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingRight:I

    .line 285
    iput p5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingBottom:I

    .line 286
    return-void
.end method
