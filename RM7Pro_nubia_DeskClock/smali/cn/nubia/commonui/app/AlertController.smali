.class public Lcn/nubia/commonui/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/app/AlertController$CheckedItemAdapter;,
        Lcn/nubia/commonui/app/AlertController$AlertParams;,
        Lcn/nubia/commonui/app/AlertController$RecycleListView;,
        Lcn/nubia/commonui/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlertController"


# instance fields
.field animPanel:Landroid/view/View;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mBackAnimView:Landroid/view/View;

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNegativeTextColor:I

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonNeutralTextColor:I

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mButtonPositiveTextColor:I

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

.field private mIsContentDividerVisible:Z

.field private mIsMultiChoiceDialog:Z

.field private mIsSingleChoiceDialog:Z

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxHeightRatio:F

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mNubiaLeftButtonBgID:I

.field private mNubiaMiddleButtonBgID:I

.field private mNubiaRightButtonBgID:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleChoiceView:Landroid/widget/TextView;

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v1, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 102
    iput v1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    .line 129
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    .line 131
    iput v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    .line 147
    new-instance v0, Lcn/nubia/commonui/app/AlertController$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertController$1;-><init>(Lcn/nubia/commonui/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 198
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    .line 199
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 200
    iput-object p3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    .line 201
    new-instance v0, Lcn/nubia/commonui/app/AlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcn/nubia/commonui/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 204
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 205
    sget v0, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/commonui/app/AlertController;->setNubiaButtonBackground(III)V

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/commonui/app/AlertController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsSingleChoiceDialog:Z

    return p1
.end method

.method static synthetic access$1102(Lcn/nubia/commonui/app/AlertController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsMultiChoiceDialog:Z

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1502(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lcn/nubia/commonui/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1702(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 65
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mListLayout:I

    return v0
.end method

.method private adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "hasButtons"    # Z
    .param p2, "hasCustomView"    # Z
    .param p3, "topPanel"    # Landroid/view/ViewGroup;
    .param p4, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 522
    if-nez p1, :cond_0

    .line 524
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->nubia_button_bg:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 525
    .local v2, "nubiaButtonPanel":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 531
    .end local v2    # "nubiaButtonPanel":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-nez v7, :cond_1

    .line 532
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v0, 0x1

    .line 533
    .local v0, "hasTextTitle":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 535
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p4, :cond_1

    .line 536
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_1

    if-nez p2, :cond_1

    .line 538
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 541
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_message_vertical_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 544
    .local v4, "verMargin":I
    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 545
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    .end local v0    # "hasTextTitle":Z
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMargin":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v5

    .line 532
    goto :goto_0

    .line 549
    .restart local v0    # "hasTextTitle":Z
    :cond_3
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 550
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 553
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_message_vertical_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 555
    .restart local v4    # "verMargin":I
    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 556
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMargin":I
    :cond_4
    :goto_2
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->nubia_title_content_divider:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 569
    .local v3, "nubiaDivider":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 570
    iget-boolean v7, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    if-eqz v7, :cond_6

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 557
    .end local v3    # "nubiaDivider":Landroid/view/View;
    :cond_5
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz p4, :cond_4

    .line 558
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_4

    .line 559
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 562
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_context_notitle_margin_top:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 564
    .restart local v4    # "verMargin":I
    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 565
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMargin":I
    .restart local v3    # "nubiaDivider":Landroid/view/View;
    :cond_6
    move v5, v6

    .line 570
    goto :goto_3
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    :goto_0
    return v2

    .line 217
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 218
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 221
    check-cast v1, Landroid/view/ViewGroup;

    .line 222
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 223
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 224
    add-int/lit8 v0, v0, -0x1

    .line 225
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 226
    invoke-static {p0}, Lcn/nubia/commonui/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 231
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 827
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 828
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 832
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 833
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_button_width_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 834
    .local v2, "width":I
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_button_horizontal_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 839
    .local v0, "margin":I
    :goto_0
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 840
    invoke-virtual {v1, v0, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 841
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    return-void

    .line 836
    .end local v0    # "margin":I
    .end local v2    # "width":I
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_button_width_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 837
    .restart local v2    # "width":I
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_button_horizontal_margin_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .restart local v0    # "margin":I
    goto :goto_0
.end method

.method private isCenterAlertDialog()Z
    .locals 2

    .prologue
    .line 577
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

.method private layoutButtons(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 7
    .param p1, "buttonLeft"    # Landroid/widget/Button;
    .param p2, "buttonRight"    # Landroid/widget/Button;

    .prologue
    const/16 v4, 0x10

    const/4 v6, 0x0

    .line 845
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 846
    .local v1, "paramsLeft":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 847
    .local v2, "paramsRight":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 848
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 852
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 853
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_button_width_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 854
    .local v3, "width":I
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_button_horizontal_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 855
    .local v0, "margin":I
    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 856
    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 863
    :goto_0
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 864
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 866
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    return-void

    .line 858
    .end local v0    # "margin":I
    .end local v3    # "width":I
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_button_width_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 859
    .restart local v3    # "width":I
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_button_horizontal_margin_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 860
    .restart local v0    # "margin":I
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v1, v0, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 861
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v2, v4, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "upIndicator"    # Landroid/view/View;
    .param p2, "downIndicator"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 743
    if-eqz p1, :cond_0

    .line 744
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 746
    :cond_0
    if-eqz p2, :cond_1

    .line 747
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 749
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 744
    goto :goto_0

    :cond_3
    move v1, v2

    .line 747
    goto :goto_1
.end method

.method private resetDialogButtonStyle()V
    .locals 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 1290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1292
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1293
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1294
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1295
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1296
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1297
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1300
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1301
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1302
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 245
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 251
    :goto_0
    return v0

    .line 247
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 248
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 251
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 22
    .param p1, "topPanel"    # Landroid/view/View;
    .param p2, "contentPanel"    # Landroid/view/View;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "buttonPanel"    # Landroid/view/View;
    .param p5, "hasTitle"    # Z
    .param p6, "hasCustomView"    # Z
    .param p7, "hasButtons"    # Z

    .prologue
    .line 890
    sget v16, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 891
    .local v16, "topBright":I
    sget v17, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 892
    .local v17, "topDark":I
    sget v5, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 893
    .local v5, "centerBright":I
    sget v6, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 903
    .local v6, "centerDark":I
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    .line 904
    .local v19, "views":[Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v12, v0, [Z

    .line 905
    .local v12, "light":[Z
    const/4 v11, 0x0

    .line 906
    .local v11, "lastView":Landroid/view/View;
    const/4 v10, 0x0

    .line 908
    .local v10, "lastLight":Z
    const/4 v14, 0x0

    .line 909
    .local v14, "pos":I
    if-eqz p5, :cond_0

    .line 910
    aput-object p1, v19, v14

    .line 911
    const/16 v20, 0x0

    aput-boolean v20, v12, v14

    .line 912
    add-int/lit8 v14, v14, 0x1

    .line 920
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Landroid/view/View;
    :cond_1
    aput-object p2, v19, v14

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    :goto_0
    aput-boolean v20, v12, v14

    .line 922
    add-int/lit8 v14, v14, 0x1

    .line 924
    if-eqz p6, :cond_2

    .line 925
    aput-object p3, v19, v14

    .line 926
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/app/AlertController;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v12, v14

    .line 927
    add-int/lit8 v14, v14, 0x1

    .line 930
    :cond_2
    if-eqz p7, :cond_3

    .line 931
    aput-object p4, v19, v14

    .line 932
    const/16 v20, 0x1

    aput-boolean v20, v12, v14

    .line 935
    :cond_3
    const/4 v15, 0x0

    .line 936
    .local v15, "setView":Z
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_a

    .line 937
    aget-object v18, v19, v14

    .line 938
    .local v18, "v":Landroid/view/View;
    if-nez v18, :cond_5

    .line 936
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 921
    .end local v15    # "setView":Z
    .end local v18    # "v":Landroid/view/View;
    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    .line 942
    .restart local v15    # "setView":Z
    .restart local v18    # "v":Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 943
    if-nez v15, :cond_8

    .line 944
    if-eqz v10, :cond_7

    move/from16 v20, v16

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 948
    :goto_4
    const/4 v15, 0x1

    .line 951
    :cond_6
    move-object/from16 v11, v18

    .line 952
    aget-boolean v10, v12, v14

    goto :goto_2

    :cond_7
    move/from16 v20, v17

    .line 944
    goto :goto_3

    .line 946
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v20, v5

    :goto_5
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v20, v6

    goto :goto_5

    .line 955
    .end local v18    # "v":Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 956
    if-eqz v15, :cond_f

    .line 957
    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 958
    .local v2, "bottomBright":I
    sget v4, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 959
    .local v4, "bottomMedium":I
    sget v3, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 963
    .local v3, "bottomDark":I
    if-eqz v10, :cond_e

    if-eqz p7, :cond_d

    .end local v4    # "bottomMedium":I
    :goto_6
    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 972
    .end local v2    # "bottomBright":I
    .end local v3    # "bottomDark":I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 973
    .local v13, "listView":Landroid/widget/ListView;
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 975
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 976
    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    .line 977
    .local v7, "checkedItem":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v7, v0, :cond_c

    .line 978
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v7, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 979
    invoke-virtual {v13, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 982
    .end local v7    # "checkedItem":I
    :cond_c
    return-void

    .end local v13    # "listView":Landroid/widget/ListView;
    .restart local v2    # "bottomBright":I
    .restart local v3    # "bottomDark":I
    .restart local v4    # "bottomMedium":I
    :cond_d
    move v4, v2

    .line 963
    goto :goto_6

    :cond_e
    move v4, v3

    goto :goto_6

    .line 966
    .end local v2    # "bottomBright":I
    .end local v3    # "bottomDark":I
    .end local v4    # "bottomMedium":I
    :cond_f
    sget v8, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 967
    .local v8, "fullBright":I
    sget v9, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 968
    .local v9, "fullDark":I
    if-eqz v10, :cond_10

    .end local v8    # "fullBright":I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v8    # "fullBright":I
    :cond_10
    move v8, v9

    goto :goto_8
.end method

.method private setDivider(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;
    .param p2, "customPanel"    # Landroid/view/ViewGroup;

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 512
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_title_content_divider:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 513
    .local v0, "nubiaDivider":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 514
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    .end local v0    # "nubiaDivider":Landroid/view/View;
    :cond_1
    return-void

    .line 514
    .restart local v0    # "nubiaDivider":Landroid/view/View;
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setupButtons()Z
    .locals 12

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 752
    const/4 v8, 0x1

    .line 753
    .local v8, "BIT_BUTTON_POSITIVE":I
    const/4 v6, 0x2

    .line 754
    .local v6, "BIT_BUTTON_NEGATIVE":I
    const/4 v7, 0x4

    .line 755
    .local v7, "BIT_BUTTON_NEUTRAL":I
    const/4 v11, 0x0

    .line 756
    .local v11, "whichButtons":I
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->button1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 757
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 770
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->button2:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 771
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 785
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->button3:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 786
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 788
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 789
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 801
    :goto_2
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->resetDialogButtonStyle()V

    .line 804
    if-ne v11, v8, :cond_8

    .line 805
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 815
    :cond_0
    :goto_3
    if-eqz v11, :cond_c

    move v10, v3

    .line 816
    .local v10, "hasButtons":Z
    :goto_4
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 817
    .local v9, "buttonPanel":Landroid/view/View;
    if-nez v10, :cond_1

    .line 818
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const-string v1, "setCloseOnTouchOutsideIfNotSet"

    new-array v4, v3, [Ljava/lang/Object;

    .line 821
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    move v3, v2

    .line 820
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 823
    :cond_1
    return v10

    .line 762
    .end local v9    # "buttonPanel":Landroid/view/View;
    .end local v10    # "hasButtons":Z
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveTextColor:I

    if-eqz v0, :cond_3

    .line 764
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 766
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 767
    or-int/2addr v11, v8

    goto/16 :goto_0

    .line 776
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeTextColor:I

    if-eqz v0, :cond_5

    .line 778
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 780
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 782
    or-int/2addr v11, v6

    goto/16 :goto_1

    .line 791
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralTextColor:I

    if-eqz v0, :cond_7

    .line 793
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 795
    :cond_7
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 797
    or-int/2addr v11, v7

    goto :goto_2

    .line 806
    :cond_8
    if-ne v11, v6, :cond_9

    .line 807
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 808
    :cond_9
    if-ne v11, v7, :cond_a

    .line 809
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 810
    :cond_a
    const/4 v0, 0x3

    if-ne v11, v0, :cond_b

    .line 811
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/app/AlertController;->layoutButtons(Landroid/widget/Button;Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 812
    :cond_b
    const/4 v0, 0x7

    if-ne v11, v0, :cond_0

    goto/16 :goto_3

    :cond_c
    move v10, v2

    .line 815
    goto/16 :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 708
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcn/nubia/commonui/R$id;->scrollView:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 709
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 712
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcn/nubia/commonui/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 713
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 718
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 720
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 723
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    .line 724
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 725
    .local v2, "scrollParent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 726
    .local v0, "childIndex":I
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 727
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 731
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcn/nubia/commonui/R$id;->nubia_center_title_content_divider:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 732
    .local v1, "nubiaDivider":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 737
    .end local v0    # "childIndex":I
    .end local v1    # "nubiaDivider":Landroid/view/View;
    .end local v2    # "scrollParent":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupCustomView()Z
    .locals 9

    .prologue
    const/high16 v8, 0x20000

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 581
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/commonui/R$id;->customPanel:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 583
    .local v1, "customPanel":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 584
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 592
    .local v2, "customView":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 593
    .local v3, "hasCustomView":Z
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v2}, Lcn/nubia/commonui/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 594
    :cond_1
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 598
    :cond_2
    if-eqz v3, :cond_7

    .line 599
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/commonui/R$id;->custom:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 600
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-boolean v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v5, :cond_3

    .line 603
    iget v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingLeft:I

    iget v6, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingTop:I

    iget v7, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingRight:I

    iget v8, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 607
    :cond_3
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_4

    .line 608
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 614
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_4
    :goto_1
    return v3

    .line 585
    .end local v2    # "customView":Landroid/view/View;
    .end local v3    # "hasCustomView":Z
    :cond_5
    iget v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    if-eqz v5, :cond_6

    .line 586
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 587
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v4, v5, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 588
    .restart local v2    # "customView":Landroid/view/View;
    goto :goto_0

    .line 589
    .end local v2    # "customView":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "customView":Landroid/view/View;
    goto :goto_0

    .line 611
    .restart local v3    # "hasCustomView":Z
    :cond_7
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 455
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcn/nubia/commonui/R$id;->nubia_parentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 457
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 458
    new-instance v2, Lcn/nubia/commonui/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcn/nubia/commonui/app/AlertController$2;-><init>(Lcn/nubia/commonui/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 470
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 471
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 474
    :cond_0
    iget v2, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    iget v2, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 475
    instance-of v2, v1, Lcn/nubia/commonui/widget/DialogLinearLayout;

    if-eqz v2, :cond_2

    .line 476
    check-cast v1, Lcn/nubia/commonui/widget/DialogLinearLayout;

    .end local v1    # "parent":Landroid/view/View;
    iget v2, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/DialogLinearLayout;->setMaxHeightRatio(F)V

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 477
    .restart local v1    # "parent":Landroid/view/View;
    :cond_2
    instance-of v2, v1, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;

    if-eqz v2, :cond_1

    .line 478
    check-cast v1, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;

    .end local v1    # "parent":Landroid/view/View;
    iget v2, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->setMaxHeightRatio(F)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/view/ViewGroup;)Z
    .locals 12
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v7, 0x0

    const/16 v11, 0x8

    .line 618
    const/4 v1, 0x1

    .line 620
    .local v1, "hasTitle":Z
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 622
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 625
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v6, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 628
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v7, Lcn/nubia/commonui/R$id;->title_template:I

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 629
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 704
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return v1

    .line 631
    :cond_0
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->icon:I

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 633
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v0, 0x1

    .line 634
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_e

    .line 636
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->alertTitle:I

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 637
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 638
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :cond_1
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->alertChoiceTitle:I

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    .line 641
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 642
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    iget-object v8, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    :cond_2
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcn/nubia/commonui/app/AlertController;->mIsSingleChoiceDialog:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcn/nubia/commonui/app/AlertController;->mIsMultiChoiceDialog:Z

    if-eqz v6, :cond_8

    .line 646
    :cond_3
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 647
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    :cond_4
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 650
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 652
    :cond_5
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 655
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_title_choice_vertical_margin_top:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 657
    .local v5, "verMarginTop":I
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_title_choice_vertical_margin_bottom:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 659
    .local v4, "verMarginBottom":I
    const-string v6, "AlertController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupTitle: verMarginTop = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", verMarginBottom = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {v2, v7, v5, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 661
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMarginBottom":I
    .end local v5    # "verMarginTop":I
    :cond_6
    :goto_2
    iget v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    if-eqz v6, :cond_a

    .line 675
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v7, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .end local v0    # "hasTextTitle":Z
    :cond_7
    move v0, v7

    .line 633
    goto/16 :goto_1

    .line 663
    .restart local v0    # "hasTextTitle":Z
    :cond_8
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 664
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    :cond_9
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 667
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 676
    :cond_a
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_b

    .line 677
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 681
    :cond_b
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_d

    .line 682
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 683
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 684
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 685
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v10

    .line 682
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 692
    :cond_c
    :goto_3
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 686
    :cond_d
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_c

    .line 687
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 688
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 689
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 690
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v10

    .line 687
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 697
    :cond_e
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v7, Lcn/nubia/commonui/R$id;->title_template:I

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 698
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 701
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 9

    .prologue
    .line 485
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->nubia_animPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    .line 487
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->contentPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 488
    .local v2, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Lcn/nubia/commonui/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 490
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->buttonPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 491
    .local v4, "buttonPanel":Landroid/view/View;
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupButtons()Z

    move-result v7

    .line 493
    .local v7, "hasButtons":Z
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->topPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 494
    .local v1, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcn/nubia/commonui/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)Z

    move-result v5

    .line 496
    .local v5, "hasTitle":Z
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->customPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 497
    .local v3, "customPanel":Landroid/widget/FrameLayout;
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupCustomView()Z

    move-result v6

    .line 499
    .local v6, "hasCustomView":Z
    invoke-direct {p0, v7, v6, v1, v2}, Lcn/nubia/commonui/app/AlertController;->adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object v0, p0

    .line 501
    invoke-direct/range {v0 .. v7}, Lcn/nubia/commonui/app/AlertController;->setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 503
    invoke-direct {p0, v2, v3}, Lcn/nubia/commonui/app/AlertController;->setDivider(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 504
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 432
    packed-switch p1, :pswitch_data_0

    .line 440
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 434
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 438
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 418
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 419
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 420
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 237
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->selectContentView()I

    move-result v0

    .line 238
    .local v0, "contentView":I
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 239
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupView()V

    .line 240
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupDecor()V

    .line 241
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 446
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
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 451
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
    .line 1270
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_alert_dialog_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 1271
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mListLayout:I

    .line 1272
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_multichoice_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mMultiChoiceItemLayout:I

    .line 1273
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_singlechoice_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1274
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_item_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mListItemLayout:I

    .line 1275
    return-void
.end method

.method setAlertDialogLayout(I)V
    .locals 0
    .param p1, "redirectLayout"    # I

    .prologue
    .line 143
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 144
    return-void
.end method

.method public setAnimPanelBackground(I)V
    .locals 3
    .param p1, "colorId"    # I

    .prologue
    .line 871
    const-string v0, "AlertController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimPanelBackground: colorId = [0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  animPanel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 876
    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 332
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 333
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 336
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 350
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :pswitch_0
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 339
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 352
    :goto_0
    return-void

    .line 342
    :pswitch_1
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 343
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 346
    :pswitch_2
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 347
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 314
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    .line 315
    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "color"    # I

    .prologue
    .line 355
    packed-switch p1, :pswitch_data_0

    .line 366
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :pswitch_0
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveTextColor:I

    .line 368
    :goto_0
    return-void

    .line 360
    :pswitch_1
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeTextColor:I

    goto :goto_0

    .line 363
    :pswitch_2
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralTextColor:I

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setContentDivider(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 507
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    .line 508
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 268
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 269
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 382
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 384
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 385
    if-eqz p1, :cond_1

    .line 386
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 399
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 402
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 403
    if-eqz p1, :cond_1

    .line 404
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mForceInverseBackground:Z

    .line 425
    return-void
.end method

.method public setMaxHeightRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 371
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    .line 372
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 272
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 273
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method setNubiaButtonBackground(III)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "mid"    # I
    .param p3, "right"    # I

    .prologue
    .line 1282
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1283
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1284
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1285
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 255
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 256
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_1
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 283
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 285
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 291
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 292
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 293
    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 294
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 301
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 304
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingLeft:I

    .line 305
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingTop:I

    .line 306
    iput p4, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingRight:I

    .line 307
    iput p5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingBottom:I

    .line 308
    return-void
.end method
