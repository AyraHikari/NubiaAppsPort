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

.field private mParentPanelBottom:I

.field private mParentPanelLeft:I

.field private mParentPanelRight:I

.field private mParentPanelTop:I

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
    .locals 2

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 104
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 118
    iput v1, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 131
    iput v1, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    .line 138
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    .line 154
    new-instance v0, Lcn/nubia/commonui/app/AlertController$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertController$1;-><init>(Lcn/nubia/commonui/app/AlertController;)V

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 205
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    .line 206
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 207
    iput-object p3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    .line 208
    new-instance p1, Lcn/nubia/commonui/app/AlertController$ButtonHandler;

    invoke-direct {p1, p2}, Lcn/nubia/commonui/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 211
    invoke-virtual {p0}, Lcn/nubia/commonui/app/AlertController;->resetNubiaAlertDialogLayout()V

    const p1, 0x7f080160

    .line 212
    invoke-virtual {p0, p1, p1, p1}, Lcn/nubia/commonui/app/AlertController;->setNubiaButtonBackground(III)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1002(Lcn/nubia/commonui/app/AlertController;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsSingleChoiceDialog:Z

    return p1
.end method

.method static synthetic access$1102(Lcn/nubia/commonui/app/AlertController;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsMultiChoiceDialog:Z

    return p1
.end method

.method static synthetic access$1200(Lcn/nubia/commonui/app/AlertController;)I
    .locals 0

    .line 67
    iget p0, p0, Lcn/nubia/commonui/app/AlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1300(Lcn/nubia/commonui/app/AlertController;)I
    .locals 0

    .line 67
    iget p0, p0, Lcn/nubia/commonui/app/AlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1400(Lcn/nubia/commonui/app/AlertController;)I
    .locals 0

    .line 67
    iget p0, p0, Lcn/nubia/commonui/app/AlertController;->mListItemLayout:I

    return p0
.end method

.method static synthetic access$1502(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lcn/nubia/commonui/app/AlertController;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1702(Lcn/nubia/commonui/app/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/app/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Message;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/app/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/app/AlertController;)Landroid/os/Handler;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/app/AlertController;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/commonui/app/AlertController;)I
    .locals 0

    .line 67
    iget p0, p0, Lcn/nubia/commonui/app/AlertController;->mListLayout:I

    return p0
.end method

.method private adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 5

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 540
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f090104

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 547
    :cond_0
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-nez p1, :cond_5

    .line 548
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const v1, 0x7f0701d3

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 551
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    .line 552
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v0, :cond_5

    if-nez p2, :cond_5

    .line 554
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 557
    iget-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 560
    invoke-virtual {p1, v4, p2, v4, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 561
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 565
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 566
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 569
    iget-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 571
    invoke-virtual {p1, v4, p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 572
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 573
    :cond_2
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p4, :cond_3

    .line 574
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 575
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 578
    iget-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0701b6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 580
    invoke-virtual {p1, v4, p2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 581
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const p2, 0x7f090112

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 586
    iget-boolean p2, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    if-eqz p2, :cond_4

    move v0, v4

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 220
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 224
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 228
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 232
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 233
    invoke-static {v3}, Lcn/nubia/commonui/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 4

    .line 844
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    .line 845
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 849
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 850
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 851
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    .line 853
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 854
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 856
    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    .line 857
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 858
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private isCenterAlertDialog()Z
    .locals 2

    .line 593
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    const v1, 0x7f0c005a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private layoutButtons(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 6

    .line 862
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 863
    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    .line 864
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 865
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 869
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->isCenterAlertDialog()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 870
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0701d0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 871
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 872
    invoke-virtual {v0, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 873
    invoke-virtual {v1, v3, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 875
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0701b3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 876
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 877
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v0, v4, v3, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 878
    invoke-virtual {v1, v5, v3, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 880
    :goto_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 881
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 883
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    invoke-virtual {p2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 760
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 763
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private resetDialogButtonStyle()V
    .locals 2

    .line 1305
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 1307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1309
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1310
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1311
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1312
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1313
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 1314
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 1315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1316
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    .line 1317
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1318
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1319
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private selectContentView()I
    .locals 3

    .line 251
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 252
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    return v0

    .line 254
    :cond_0
    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 258
    :cond_1
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    return v0
.end method

.method private setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    new-array v2, v0, [Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p5, :cond_0

    aput-object p1, v1, v3

    aput-boolean v3, v2, v3

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    .line 937
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p5

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne p5, v5, :cond_1

    move-object p2, v6

    :cond_1
    aput-object p2, v1, p1

    .line 938
    iget-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_2

    move p2, v4

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    aput-boolean p2, v2, p1

    add-int/2addr p1, v4

    if-eqz p6, :cond_3

    .line 942
    aput-object p3, v1, p1

    .line 943
    iget-boolean p2, p0, Lcn/nubia/commonui/app/AlertController;->mForceInverseBackground:Z

    aput-boolean p2, v2, p1

    add-int/lit8 p1, p1, 0x1

    :cond_3
    if-eqz p7, :cond_4

    .line 948
    aput-object p4, v1, p1

    .line 949
    aput-boolean v4, v2, p1

    :cond_4
    move p1, v3

    move p2, p1

    move-object p3, v6

    :goto_2
    const p4, 0x7f080178

    if-ge v3, v0, :cond_8

    .line 954
    aget-object p5, v1, v3

    if-nez p5, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p3, :cond_7

    if-nez p1, :cond_6

    .line 961
    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 963
    :cond_6
    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    move p1, v4

    .line 969
    :cond_7
    aget-boolean p2, v2, v3

    move-object p3, p5

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    if-eqz p3, :cond_a

    if-eqz p1, :cond_9

    .line 980
    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 985
    :cond_9
    invoke-virtual {p3, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 989
    :cond_a
    :goto_5
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_b

    .line 990
    iget-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p2, :cond_b

    .line 991
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 992
    invoke-virtual {p1, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 993
    iget p2, p0, Lcn/nubia/commonui/app/AlertController;->mCheckedItem:I

    const/4 p3, -0x1

    if-le p2, p3, :cond_b

    .line 995
    invoke-virtual {p1, p2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 996
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_b
    return-void
.end method

.method private setDivider(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 527
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    if-nez p1, :cond_2

    .line 528
    :cond_0
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const p2, 0x7f090112

    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 530
    iget-boolean p2, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private setupButtons()Z
    .locals 11

    .line 772
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 773
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    .line 778
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveTextColor:I

    if-eqz v0, :cond_1

    .line 780
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 782
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    .line 786
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f09005b

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 787
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 790
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 792
    :cond_2
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeTextColor:I

    if-eqz v4, :cond_3

    .line 794
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 796
    :cond_3
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    .line 801
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f09005c

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 802
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 805
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 807
    :cond_4
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralTextColor:I

    if-eqz v4, :cond_5

    .line 809
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 811
    :cond_5
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 817
    :goto_2
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->resetDialogButtonStyle()V

    if-ne v0, v2, :cond_6

    .line 821
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    const/4 v4, 0x2

    if-ne v0, v4, :cond_7

    .line 823
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    const/4 v4, 0x4

    if-ne v0, v4, :cond_8

    .line 825
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcn/nubia/commonui/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_8
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    .line 827
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4, v5}, Lcn/nubia/commonui/app/AlertController;->layoutButtons(Landroid/widget/Button;Landroid/widget/Button;)V

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v3

    .line 833
    :goto_4
    iget-object v4, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x7f09005d

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-nez v0, :cond_b

    .line 835
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 837
    iget-object v5, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v9, v2, [Ljava/lang/Object;

    .line 838
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v9, v3

    new-array v10, v2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v10, v3

    const-string v6, "setCloseOnTouchOutsideIfNotSet"

    .line 837
    invoke-static/range {v5 .. v10}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_b
    return v0
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 5

    .line 724
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    .line 725
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 728
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f0900f0

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 733
    :cond_0
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 734
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    .line 736
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 739
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 740
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 741
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 742
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 743
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 747
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 749
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setupCustomView()Z
    .locals 7

    .line 597
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 599
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 603
    iget v3, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    .line 609
    invoke-static {v1}, Lcn/nubia/commonui/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 610
    :cond_3
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v4, 0x20000

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v2, :cond_6

    .line 615
    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7f090076

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 616
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    iget-boolean v1, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_5

    .line 619
    iget v1, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingTop:I

    iget v5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingRight:I

    iget v6, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 623
    :cond_5
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_7

    .line 624
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 v1, 0x8

    .line 627
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_7
    :goto_1
    return v2
.end method

.method private setupDecor()V
    .locals 5

    .line 469
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 472
    new-instance v2, Lcn/nubia/commonui/app/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcn/nubia/commonui/app/AlertController$2;-><init>(Lcn/nubia/commonui/app/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v2, 0x1

    .line 484
    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 485
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 487
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mParentPanelLeft:I

    iget v2, p0, Lcn/nubia/commonui/app/AlertController;->mParentPanelTop:I

    iget v3, p0, Lcn/nubia/commonui/app/AlertController;->mParentPanelRight:I

    iget v4, p0, Lcn/nubia/commonui/app/AlertController;->mParentPanelBottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 490
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 491
    instance-of v2, v1, Lcn/nubia/commonui/widget/DialogLinearLayout;

    if-eqz v2, :cond_1

    .line 492
    check-cast v1, Lcn/nubia/commonui/widget/DialogLinearLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/DialogLinearLayout;->setMaxHeightRatio(F)V

    goto :goto_0

    .line 493
    :cond_1
    instance-of v2, v1, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;

    if-eqz v2, :cond_2

    .line 494
    check-cast v1, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->setMaxHeightRatio(F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)Z
    .locals 8

    .line 636
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const v1, 0x7f090192

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v0, :cond_0

    .line 638
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 641
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v2, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 644
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 645
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 647
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7f0900ad

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 649
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_d

    .line 652
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 654
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 658
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mIsSingleChoiceDialog:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcn/nubia/commonui/app/AlertController;->mIsMultiChoiceDialog:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 679
    :cond_3
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 680
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 682
    :cond_4
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 683
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 662
    :cond_5
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 663
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 666
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    :cond_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 671
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 673
    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupTitle: verMarginTop = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", verMarginBottom = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "AlertController"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v0, v5, v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 677
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    :cond_8
    :goto_1
    iget p1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    if-eqz p1, :cond_9

    .line 691
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 692
    :cond_9
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a

    .line 693
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 697
    :cond_a
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_b

    .line 698
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 699
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 700
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 701
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    .line 698
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 702
    :cond_b
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_c

    .line 703
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 704
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 705
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 706
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    .line 703
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 708
    :cond_c
    :goto_2
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 713
    :cond_d
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 714
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 716
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    move v4, v5

    :goto_3
    return v4
.end method

.method private setupView()V
    .locals 10

    .line 501
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    .line 503
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 504
    invoke-direct {p0, v0}, Lcn/nubia/commonui/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 506
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f09005d

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 507
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupButtons()Z

    move-result v8

    .line 509
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x7f090197

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 510
    invoke-direct {p0, v2}, Lcn/nubia/commonui/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)Z

    move-result v6

    .line 512
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const v3, 0x7f090077

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/FrameLayout;

    .line 513
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupCustomView()Z

    move-result v7

    .line 515
    invoke-direct {p0, v8, v7, v2, v0}, Lcn/nubia/commonui/app/AlertController;->adjustPadding(ZZLandroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    move-object v1, p0

    move-object v3, v0

    move-object v4, v9

    .line 517
    invoke-direct/range {v1 .. v8}, Lcn/nubia/commonui/app/AlertController;->setBackground(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 519
    invoke-direct {p0, v0, v9}, Lcn/nubia/commonui/app/AlertController;->setDivider(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 448
    :cond_0
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p1

    .line 450
    :cond_1
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p1

    .line 452
    :cond_2
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p1
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    .line 432
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 433
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 434
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    return p1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 442
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 244
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->selectContentView()I

    move-result v0

    .line 245
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 246
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupView()V

    .line 247
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertController;->setupDecor()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 460
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 465
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method resetNubiaAlertDialogLayout()V
    .locals 1

    const v0, 0x7f0c0059

    .line 1287
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    const v0, 0x7f0c0062

    .line 1288
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mListLayout:I

    const v0, 0x7f0c0064

    .line 1289
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mMultiChoiceItemLayout:I

    const v0, 0x7f0c0065

    .line 1290
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mSingleChoiceItemLayout:I

    const v0, 0x7f0c0063

    .line 1291
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mListItemLayout:I

    return-void
.end method

.method setAlertDialogLayout(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mAlertDialogLayout:I

    return-void
.end method

.method public setAnimPanelBackground(I)V
    .locals 2

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnimPanelBackground: colorId = [0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  animPanel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->animPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 891
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 340
    iget-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 345
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 346
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 357
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_2
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 350
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 353
    :cond_3
    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 354
    iput-object p4, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0

    .line 321
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 364
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonPositiveTextColor:I

    goto :goto_0

    .line 373
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Button does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_1
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNegativeTextColor:I

    goto :goto_0

    .line 370
    :cond_2
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mButtonNeutralTextColor:I

    :goto_0
    return-void
.end method

.method public setContentDivider(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mIsContentDividerVisible:Z

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 395
    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 396
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 398
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 400
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 402
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 413
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 414
    iput v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconId:I

    .line 416
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 420
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    .line 438
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public setMaxHeightRatio(F)V
    .locals 0

    .line 378
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mMaxHeightRatio:F

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 279
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 280
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setNubiaButtonBackground(III)V
    .locals 0

    .line 1299
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaLeftButtonBgID:I

    .line 1300
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaMiddleButtonBgID:I

    .line 1301
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mNubiaRightButtonBgID:I

    return-void
.end method

.method public setParentPanelMargin(IIII)V
    .locals 0

    .line 382
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mParentPanelLeft:I

    .line 383
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mParentPanelTop:I

    .line 384
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mParentPanelRight:I

    .line 385
    iput p4, p0, Lcn/nubia/commonui/app/AlertController;->mParentPanelBottom:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 262
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 263
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mTitleChoiceView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    .line 290
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 291
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 299
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    .line 300
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 309
    iput p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 310
    iput-boolean p1, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingSpecified:Z

    .line 311
    iput p2, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingLeft:I

    .line 312
    iput p3, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingTop:I

    .line 313
    iput p4, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingRight:I

    .line 314
    iput p5, p0, Lcn/nubia/commonui/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method
