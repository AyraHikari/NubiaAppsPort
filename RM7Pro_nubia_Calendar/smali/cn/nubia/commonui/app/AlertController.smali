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

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v1, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 99
    iput v1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    .line 126
    iput v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    .line 142
    new-instance v0, Lcn/nubia/commonui/app/AlertController$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertController$1;-><init>(Lcn/nubia/commonui/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 193
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    .line 194
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 195
    iput-object p3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    .line 196
    new-instance v0, Lcn/nubia/commonui/app/AlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcn/nubia/commonui/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 199
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertController;->resetNubiaAlertDialogLayout()V

    .line 200
    sget v0, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    sget v1, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_btn_default_material:I

    invoke-virtual {p0, v0, v1, v2}, Lcn/nubia/commonui/app/AlertController;->setNubiaButtonBackground(III)V

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcn/nubia/commonui/app/AlertController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsSingleChoiceDialog:Z

    return p1
.end method

.method static synthetic access$1102(Lcn/nubia/commonui/app/AlertController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsMultiChoiceDialog:Z

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1502(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lcn/nubia/commonui/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1702(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/app/AlertController;

    .prologue
    .line 62
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

    .line 504
    if-nez p1, :cond_0

    .line 506
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->nubia_button_bg:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 507
    .local v2, "nubiaButtonPanel":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 508
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .end local v2    # "nubiaButtonPanel":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-nez v7, :cond_1

    .line 514
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v0, 0x1

    .line 515
    .local v0, "hasTextTitle":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 517
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz p4, :cond_1

    .line 518
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_1

    if-nez p2, :cond_1

    .line 520
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 523
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_message_vertical_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 526
    .local v4, "verMargin":I
    invoke-virtual {v1, v5, v4, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 527
    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    .end local v0    # "hasTextTitle":Z
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMargin":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v5

    .line 514
    goto :goto_0

    .line 531
    .restart local v0    # "hasTextTitle":Z
    :cond_3
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 532
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 535
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_message_vertical_margin_bottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 537
    .restart local v4    # "verMargin":I
    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 538
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMargin":I
    :cond_4
    :goto_2
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->nubia_title_content_divider:I

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 551
    .local v3, "nubiaDivider":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 552
    iget-boolean v7, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    if-eqz v7, :cond_6

    :goto_3
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 539
    .end local v3    # "nubiaDivider":Landroid/view/View;
    :cond_5
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz p4, :cond_4

    .line 540
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_4

    .line 541
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 544
    .restart local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_context_notitle_margin_top:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 546
    .restart local v4    # "verMargin":I
    invoke-virtual {v1, v5, v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 547
    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMargin":I
    .restart local v3    # "nubiaDivider":Landroid/view/View;
    :cond_6
    move v5, v6

    .line 552
    goto :goto_3
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    :goto_0
    return v2

    .line 212
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 213
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 216
    check-cast v1, Landroid/view/ViewGroup;

    .line 217
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 218
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 219
    add-int/lit8 v0, v0, -0x1

    .line 220
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 221
    invoke-static {p0}, Lcn/nubia/commonui/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 226
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 810
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 811
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 815
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_button_width_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 817
    .local v2, "width":I
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_button_horizontal_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 822
    .local v0, "margin":I
    :goto_0
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 823
    invoke-virtual {v1, v0, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 824
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 825
    return-void

    .line 819
    .end local v0    # "margin":I
    .end local v2    # "width":I
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_button_width_1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 820
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
    .line 559
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

    .line 828
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 829
    .local v1, "paramsLeft":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 830
    .local v2, "paramsRight":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 831
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 835
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 836
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_button_width_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 837
    .local v3, "width":I
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_center_alert_dialog_button_horizontal_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 838
    .local v0, "margin":I
    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 839
    invoke-virtual {v2, v6, v6, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 846
    :goto_0
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 847
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 849
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    invoke-virtual {p2, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 851
    return-void

    .line 841
    .end local v0    # "margin":I
    .end local v3    # "width":I
    :cond_0
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_button_width_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 842
    .restart local v3    # "width":I
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_button_horizontal_margin_2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 843
    .restart local v0    # "margin":I
    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v1, v0, v6, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 844
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

    .line 725
    if-eqz p1, :cond_0

    .line 726
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 728
    :cond_0
    if-eqz p2, :cond_1

    .line 729
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 731
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 726
    goto :goto_0

    :cond_3
    move v1, v2

    .line 729
    goto :goto_1
.end method

.method private resetDialogButtonStyle()V
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 1269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1271
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1272
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1273
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1274
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1275
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1279
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1280
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1281
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 240
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 246
    :goto_0
    return v0

    .line 242
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 243
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 246
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
    .line 873
    sget v16, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 874
    .local v16, "topBright":I
    sget v17, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 875
    .local v17, "topDark":I
    sget v5, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 876
    .local v5, "centerBright":I
    sget v6, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 886
    .local v6, "centerDark":I
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v19, v0

    .line 887
    .local v19, "views":[Landroid/view/View;
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v12, v0, [Z

    .line 888
    .local v12, "light":[Z
    const/4 v11, 0x0

    .line 889
    .local v11, "lastView":Landroid/view/View;
    const/4 v10, 0x0

    .line 891
    .local v10, "lastLight":Z
    const/4 v14, 0x0

    .line 892
    .local v14, "pos":I
    if-eqz p5, :cond_0

    .line 893
    aput-object p1, v19, v14

    .line 894
    const/16 v20, 0x0

    aput-boolean v20, v12, v14

    .line 895
    add-int/lit8 v14, v14, 0x1

    .line 903
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

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    :goto_0
    aput-boolean v20, v12, v14

    .line 905
    add-int/lit8 v14, v14, 0x1

    .line 907
    if-eqz p6, :cond_2

    .line 908
    aput-object p3, v19, v14

    .line 909
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/commonui/app/AlertController;->mForceInverseBackground:Z

    move/from16 v20, v0

    aput-boolean v20, v12, v14

    .line 910
    add-int/lit8 v14, v14, 0x1

    .line 913
    :cond_2
    if-eqz p7, :cond_3

    .line 914
    aput-object p4, v19, v14

    .line 915
    const/16 v20, 0x1

    aput-boolean v20, v12, v14

    .line 918
    :cond_3
    const/4 v15, 0x0

    .line 919
    .local v15, "setView":Z
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_a

    .line 920
    aget-object v18, v19, v14

    .line 921
    .local v18, "v":Landroid/view/View;
    if-nez v18, :cond_5

    .line 919
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 904
    .end local v15    # "setView":Z
    .end local v18    # "v":Landroid/view/View;
    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    .line 925
    .restart local v15    # "setView":Z
    .restart local v18    # "v":Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 926
    if-nez v15, :cond_8

    .line 927
    if-eqz v10, :cond_7

    move/from16 v20, v16

    :goto_3
    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 931
    :goto_4
    const/4 v15, 0x1

    .line 934
    :cond_6
    move-object/from16 v11, v18

    .line 935
    aget-boolean v10, v12, v14

    goto :goto_2

    :cond_7
    move/from16 v20, v17

    .line 927
    goto :goto_3

    .line 929
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

    .line 938
    .end local v18    # "v":Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 939
    if-eqz v15, :cond_f

    .line 940
    sget v2, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 941
    .local v2, "bottomBright":I
    sget v4, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 942
    .local v4, "bottomMedium":I
    sget v3, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 946
    .local v3, "bottomDark":I
    if-eqz v10, :cond_e

    if-eqz p7, :cond_d

    .end local v4    # "bottomMedium":I
    :goto_6
    invoke-virtual {v11, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 955
    .end local v2    # "bottomBright":I
    .end local v3    # "bottomDark":I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 956
    .local v13, "listView":Landroid/widget/ListView;
    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 958
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 959
    move-object/from16 v0, p0

    iget v7, v0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    .line 960
    .local v7, "checkedItem":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-le v7, v0, :cond_c

    .line 961
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v13, v7, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 962
    invoke-virtual {v13, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 965
    .end local v7    # "checkedItem":I
    :cond_c
    return-void

    .end local v13    # "listView":Landroid/widget/ListView;
    .restart local v2    # "bottomBright":I
    .restart local v3    # "bottomDark":I
    .restart local v4    # "bottomMedium":I
    :cond_d
    move v4, v2

    .line 946
    goto :goto_6

    :cond_e
    move v4, v3

    goto :goto_6

    .line 949
    .end local v2    # "bottomBright":I
    .end local v3    # "bottomDark":I
    .end local v4    # "bottomMedium":I
    :cond_f
    sget v8, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 950
    .local v8, "fullBright":I
    sget v9, Lcn/nubia/commonui/R$drawable;->nubia_dialog_background_transparent:I

    .line 951
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
    .line 493
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 494
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcn/nubia/commonui/R$id;->nubia_title_content_divider:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 495
    .local v0, "nubiaDivider":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 496
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    .end local v0    # "nubiaDivider":Landroid/view/View;
    :cond_1
    return-void

    .line 496
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

    .line 734
    const/4 v8, 0x1

    .line 735
    .local v8, "BIT_BUTTON_POSITIVE":I
    const/4 v6, 0x2

    .line 736
    .local v6, "BIT_BUTTON_NEGATIVE":I
    const/4 v7, 0x4

    .line 737
    .local v7, "BIT_BUTTON_NEUTRAL":I
    const/4 v11, 0x0

    .line 738
    .local v11, "whichButtons":I
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->button1:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 739
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 752
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->button2:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 753
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 756
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 767
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->button3:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 768
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 770
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 771
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 783
    :goto_2
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->resetDialogButtonStyle()V

    .line 786
    if-ne v11, v8, :cond_8

    .line 787
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 798
    :cond_0
    :goto_3
    if-eqz v11, :cond_c

    move v10, v3

    .line 799
    .local v10, "hasButtons":Z
    :goto_4
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcn/nubia/commonui/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 800
    .local v9, "buttonPanel":Landroid/view/View;
    if-nez v10, :cond_1

    .line 801
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 803
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const-string v1, "setCloseOnTouchOutsideIfNotSet"

    new-array v4, v3, [Ljava/lang/Object;

    .line 804
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    move v3, v2

    .line 803
    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 806
    :cond_1
    return v10

    .line 744
    .end local v9    # "buttonPanel":Landroid/view/View;
    .end local v10    # "hasButtons":Z
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveTextColor:I

    if-eqz v0, :cond_3

    .line 746
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 748
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 749
    or-int/2addr v11, v8

    goto/16 :goto_0

    .line 758
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeTextColor:I

    if-eqz v0, :cond_5

    .line 760
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 762
    :cond_5
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 764
    or-int/2addr v11, v6

    goto/16 :goto_1

    .line 773
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralTextColor:I

    if-eqz v0, :cond_7

    .line 775
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 777
    :cond_7
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 779
    or-int/2addr v11, v7

    goto :goto_2

    .line 788
    :cond_8
    if-ne v11, v6, :cond_9

    .line 789
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 790
    :cond_9
    if-ne v11, v7, :cond_a

    .line 791
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 792
    :cond_a
    const/4 v0, 0x3

    if-ne v11, v0, :cond_b

    .line 793
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcn/nubia/commonui/app/AlertController;->layoutButtons(Landroid/widget/Button;Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 794
    :cond_b
    const/4 v0, 0x7

    if-ne v11, v0, :cond_0

    goto/16 :goto_3

    :cond_c
    move v10, v2

    .line 798
    goto/16 :goto_4
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 690
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcn/nubia/commonui/R$id;->scrollView:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    iput-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 691
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v6}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 694
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcn/nubia/commonui/R$id;->message:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 695
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 700
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 703
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 705
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_3

    .line 706
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 707
    .local v2, "scrollParent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 708
    .local v0, "childIndex":I
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 709
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 713
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcn/nubia/commonui/R$id;->nubia_center_title_content_divider:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 714
    .local v1, "nubiaDivider":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 715
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 719
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

    .line 563
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/commonui/R$id;->customPanel:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 565
    .local v1, "customPanel":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 566
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 574
    .local v2, "customView":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 575
    .local v3, "hasCustomView":Z
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v2}, Lcn/nubia/commonui/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 576
    :cond_1
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 580
    :cond_2
    if-eqz v3, :cond_7

    .line 581
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcn/nubia/commonui/R$id;->custom:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 582
    .local v0, "custom":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    iget-boolean v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v5, :cond_3

    .line 585
    iget v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingLeft:I

    iget v6, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingTop:I

    iget v7, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingRight:I

    iget v8, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 589
    :cond_3
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_4

    .line 590
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 596
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_4
    :goto_1
    return v3

    .line 567
    .end local v2    # "customView":Landroid/view/View;
    .end local v3    # "hasCustomView":Z
    :cond_5
    iget v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    if-eqz v5, :cond_6

    .line 568
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 569
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v4, v5, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 570
    .restart local v2    # "customView":Landroid/view/View;
    goto :goto_0

    .line 571
    .end local v2    # "customView":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "customView":Landroid/view/View;
    goto :goto_0

    .line 593
    .restart local v3    # "hasCustomView":Z
    :cond_7
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 446
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcn/nubia/commonui/R$id;->nubia_parentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 448
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 449
    new-instance v2, Lcn/nubia/commonui/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcn/nubia/commonui/app/AlertController$2;-><init>(Lcn/nubia/commonui/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 461
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 462
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 464
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)Z
    .locals 12
    .param p1, "topPanel"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, -0x1

    const/4 v9, -0x2

    const/4 v7, 0x0

    const/16 v11, 0x8

    .line 600
    const/4 v1, 0x1

    .line 602
    .local v1, "hasTitle":Z
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v6, :cond_0

    .line 604
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 607
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v6, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v7, Lcn/nubia/commonui/R$id;->title_template:I

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 611
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 686
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return v1

    .line 613
    :cond_0
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->icon:I

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 615
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v0, 0x1

    .line 616
    .local v0, "hasTextTitle":Z
    :goto_1
    if-eqz v0, :cond_e

    .line 618
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->alertTitle:I

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 619
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 620
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v8, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    :cond_1
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->alertChoiceTitle:I

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    .line 623
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 624
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    iget-object v8, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    :cond_2
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcn/nubia/commonui/app/AlertController;->mIsSingleChoiceDialog:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcn/nubia/commonui/app/AlertController;->mIsMultiChoiceDialog:Z

    if-eqz v6, :cond_8

    .line 628
    :cond_3
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 629
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    :cond_4
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 632
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 634
    :cond_5
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 637
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_title_choice_vertical_margin_top:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 639
    .local v5, "verMarginTop":I
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v8, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_title_choice_vertical_margin_bottom:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 641
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

    .line 642
    invoke-virtual {v2, v7, v5, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 643
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 656
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "verMarginBottom":I
    .end local v5    # "verMarginTop":I
    :cond_6
    :goto_2
    iget v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    if-eqz v6, :cond_a

    .line 657
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v7, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .end local v0    # "hasTextTitle":Z
    :cond_7
    move v0, v7

    .line 615
    goto/16 :goto_1

    .line 645
    .restart local v0    # "hasTextTitle":Z
    :cond_8
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    .line 646
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 648
    :cond_9
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 649
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 658
    :cond_a
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_b

    .line 659
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 663
    :cond_b
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_d

    .line 664
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 665
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 666
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 667
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v10

    .line 664
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 674
    :cond_c
    :goto_3
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 668
    :cond_d
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_c

    .line 669
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    iget-object v7, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v7

    iget-object v8, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 670
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 671
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 672
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v10

    .line 669
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_3

    .line 679
    :cond_e
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v7, Lcn/nubia/commonui/R$id;->title_template:I

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 680
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v6, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 683
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 9

    .prologue
    .line 467
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->nubia_animPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    .line 469
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->contentPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 470
    .local v2, "contentPanel":Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Lcn/nubia/commonui/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 472
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->buttonPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 473
    .local v4, "buttonPanel":Landroid/view/View;
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupButtons()Z

    move-result v7

    .line 475
    .local v7, "hasButtons":Z
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->topPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 476
    .local v1, "topPanel":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcn/nubia/commonui/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)Z

    move-result v5

    .line 478
    .local v5, "hasTitle":Z
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcn/nubia/commonui/R$id;->customPanel:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 479
    .local v3, "customPanel":Landroid/widget/FrameLayout;
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupCustomView()Z

    move-result v6

    .line 481
    .local v6, "hasCustomView":Z
    invoke-direct {p0, v7, v6, v1, v2}, Lcn/nubia/commonui/app/AlertController;->adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object v0, p0

    .line 483
    invoke-direct/range {v0 .. v7}, Lcn/nubia/commonui/app/AlertController;->setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 485
    invoke-direct {p0, v2, v3}, Lcn/nubia/commonui/app/AlertController;->setDivider(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 486
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 423
    packed-switch p1, :pswitch_data_0

    .line 431
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 427
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 429
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 423
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
    .line 409
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 410
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 411
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 232
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->selectContentView()I

    move-result v0

    .line 233
    .local v0, "contentView":I
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 234
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupView()V

    .line 235
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupDecor()V

    .line 236
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 437
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
    .line 442
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
    .line 1249
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_alert_dialog_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 1250
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mListLayout:I

    .line 1251
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_multichoice_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mMultiChoiceItemLayout:I

    .line 1252
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_singlechoice_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mSingleChoiceItemLayout:I

    .line 1253
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_select_dialog_item_holo:I

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mListItemLayout:I

    .line 1254
    return-void
.end method

.method setAlertDialogLayout(I)V
    .locals 0
    .param p1, "redirectLayout"    # I

    .prologue
    .line 138
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    .line 139
    return-void
.end method

.method public setAnimPanelBackground(I)V
    .locals 3
    .param p1, "colorId"    # I

    .prologue
    .line 854
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

    .line 856
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 859
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
    .line 327
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 328
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 331
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :pswitch_0
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 334
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 347
    :goto_0
    return-void

    .line 337
    :pswitch_1
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 338
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 341
    :pswitch_2
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 342
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 331
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
    .line 309
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    .line 310
    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "color"    # I

    .prologue
    .line 350
    packed-switch p1, :pswitch_data_0

    .line 361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :pswitch_0
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveTextColor:I

    .line 363
    :goto_0
    return-void

    .line 355
    :pswitch_1
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeTextColor:I

    goto :goto_0

    .line 358
    :pswitch_2
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralTextColor:I

    goto :goto_0

    .line 350
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
    .line 489
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    .line 490
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 263
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 264
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 373
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 375
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 376
    if-eqz p1, :cond_1

    .line 377
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
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
    .line 390
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 393
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 394
    if-eqz p1, :cond_1

    .line 395
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
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
    .line 415
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mForceInverseBackground:Z

    .line 416
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 267
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 268
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    return-void
.end method

.method setNubiaButtonBackground(III)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "mid"    # I
    .param p3, "right"    # I

    .prologue
    .line 1261
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1262
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1263
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1264
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 250
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 251
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    :cond_1
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 278
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 280
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 286
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 287
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 288
    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 289
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
    .line 296
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 299
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingLeft:I

    .line 300
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingTop:I

    .line 301
    iput p4, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingRight:I

    .line 302
    iput p5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingBottom:I

    .line 303
    return-void
.end method
