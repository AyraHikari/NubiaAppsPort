.class public Lcom/zte/mifavor/widget/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;,
        Lcom/zte/mifavor/widget/AlertController$AlertParams;,
        Lcom/zte/mifavor/widget/AlertController$RecycleListView;,
        Lcom/zte/mifavor/widget/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final BIT_BUTTON_NEGATIVE:I = 0x2

.field private static final BIT_BUTTON_NEUTRAL:I = 0x4

.field private static final BIT_BUTTON_POSITIVE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlertController"

.field private static sRecycleListViewStyle:I = 0x1010074

.field private static sWhichButtons:I = -0x1

.field public static titleColor:I = -0x1


# instance fields
.field private buttonPanel:Landroid/view/View;

.field private buttonpadding23:Landroid/widget/Space;

.field private buttonpadding31:Landroid/widget/Space;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonInfo:Landroid/widget/TextView;

.field private mButtonInfoClickListener:Landroid/view/View$OnClickListener;

.field private mButtonInfoText:Ljava/lang/CharSequence;

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

.field private mCloseIconView:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mDialogStyleAttr:I

.field private mDisplayType:I

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mLarge_padding:I

.field private mLeftPadding:Landroid/widget/Space;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mRightPadding:Landroid/widget/Space;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Lcom/zte/mifavor/widget/TextViewZTE;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;

.field private mdivider1:Landroid/widget/ImageView;

.field private mdivider2:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 103
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    const/4 v1, -0x1

    .line 113
    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    .line 120
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    .line 122
    new-instance v2, Lcom/zte/mifavor/widget/AlertController$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/widget/AlertController$1;-><init>(Lcom/zte/mifavor/widget/AlertController;)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 149
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    .line 150
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v2

    iput v2, p0, Lcom/zte/mifavor/widget/AlertController;->mDisplayType:I

    const-string v2, "AlertController"

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlertController mDisplayType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zte/mifavor/widget/AlertController;->mDisplayType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 154
    iput-object p3, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    .line 155
    new-instance p3, Lcom/zte/mifavor/widget/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lcom/zte/mifavor/widget/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    .line 156
    iget-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/zte/extres/R$dimen;->mfvc_large_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mLarge_padding:I

    const p2, 0x1010074

    .line 159
    sput p2, Lcom/zte/mifavor/widget/AlertController;->sRecycleListViewStyle:I

    .line 160
    sput v1, Lcom/zte/mifavor/widget/AlertController;->sWhichButtons:I

    .line 162
    iget p2, p0, Lcom/zte/mifavor/widget/AlertController;->mDisplayType:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 163
    sget p2, Lcom/zte/extres/R$attr;->alertDialogPCModeStyle:I

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogStyleAttr:I

    goto :goto_0

    .line 165
    :cond_0
    sget p2, Lcom/zte/extres/R$attr;->alertDialogStyleMfv:I

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogStyleAttr:I

    :goto_0
    const/4 p2, 0x0

    .line 167
    sget-object v1, Lcom/zte/extres/R$styleable;->AlertDialogMfv:[I

    iget v2, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogStyleAttr:I

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 171
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_layout:I

    sget v1, Lcom/zte/extres/R$layout;->alert_dialog_zte_light:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    .line 173
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_buttonPanelSideLayout:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    .line 176
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_1

    .line 177
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_listLayout:I

    sget v0, Lcom/zte/extres/R$layout;->select_dialog_material:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mListLayout:I

    .line 180
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_multiChoiceItemLayout:I

    sget v0, Lcom/zte/extres/R$layout;->select_dialog_multichoice_material_mfs:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I

    .line 183
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_singleChoiceItemLayout:I

    sget v0, Lcom/zte/extres/R$layout;->select_dialog_singlechoice_material_mfs:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I

    .line 186
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_listItemLayout:I

    sget v0, Lcom/zte/extres/R$layout;->select_dialog_item_material_mfs:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I

    goto :goto_1

    .line 190
    :cond_1
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_listLayout:I

    sget v0, Lcom/zte/extres/R$layout;->select_dialog_holo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mListLayout:I

    .line 193
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_multiChoiceItemLayout:I

    sget v0, Lcom/zte/extres/R$layout;->select_dialog_multichoice_holo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I

    .line 196
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_singleChoiceItemLayout:I

    sget v0, Lcom/zte/extres/R$layout;->select_dialog_singlechoice_holo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I

    .line 199
    sget p2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_listItemLayout:I

    sget v0, Lcom/zte/extres/R$layout;->select_dialog_item_holo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I

    .line 204
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    iget p1, p0, Lcom/zte/mifavor/widget/AlertController;->mDisplayType:I

    if-eq p1, p3, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setBottomOnZteTheme()V

    goto :goto_2

    .line 210
    :cond_2
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    :goto_2
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 64
    sget v0, Lcom/zte/mifavor/widget/AlertController;->sWhichButtons:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0

    .line 64
    sput p0, Lcom/zte/mifavor/widget/AlertController;->sWhichButtons:I

    return p0
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mListLayout:I

    return p0
.end method

.method static synthetic access$1200(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1300(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I

    return p0
.end method

.method static synthetic access$1400(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I

    return p0
.end method

.method static synthetic access$1502(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/zte/mifavor/widget/AlertController;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1702(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/Context;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900()I
    .locals 1

    .line 64
    sget v0, Lcom/zte/mifavor/widget/AlertController;->sRecycleListViewStyle:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0

    .line 64
    sput p0, Lcom/zte/mifavor/widget/AlertController;->sRecycleListViewStyle:I

    return p0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 237
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 241
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 245
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 246
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 249
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 250
    invoke-static {v3}, Lcom/zte/mifavor/widget/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 3

    .line 843
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->buttonPanel:Landroid/view/View;

    .line 845
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    .line 846
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 847
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, -0x2

    .line 848
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 849
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->buttonPanel:Landroid/view/View;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public static final create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/zte/mifavor/widget/AlertController;
    .locals 4

    .line 223
    sget-object v0, Lcom/zte/extres/R$styleable;->AlertDialogMfv:[I

    sget v1, Lcom/zte/extres/R$attr;->alertDialogStyleMfv:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    new-instance v0, Lcom/zte/mifavor/widget/AlertController;

    invoke-direct {v0, p0, p1, p2}, Lcom/zte/mifavor/widget/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    return-object v0
.end method

.method private selectContentView()I
    .locals 2

    .line 277
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 278
    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    return p0

    .line 280
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 281
    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    return p0

    .line 284
    :cond_1
    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    return p0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 875
    sget v3, Lcom/zte/extres/R$styleable;->AlertDialogMfv_needsDefaultBackgrounds:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 889
    sget v3, Lcom/zte/extres/R$styleable;->AlertDialogMfv_topBright:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 890
    sget v6, Lcom/zte/extres/R$styleable;->AlertDialogMfv_topDark:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 891
    sget v7, Lcom/zte/extres/R$styleable;->AlertDialogMfv_centerBright:I

    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 892
    sget v8, Lcom/zte/extres/R$styleable;->AlertDialogMfv_centerDark:I

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/4 v9, 0x4

    .line 902
    new-array v10, v9, [Landroid/view/View;

    .line 903
    new-array v9, v9, [Z

    if-eqz p6, :cond_0

    aput-object p2, v10, v5

    aput-boolean v5, v9, v5

    move v11, v4

    goto :goto_0

    :cond_0
    move v11, v5

    .line 919
    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    const/4 v14, 0x0

    if-ne v12, v13, :cond_1

    move-object v12, v14

    goto :goto_1

    :cond_1
    move-object/from16 v12, p3

    :goto_1
    aput-object v12, v10, v11

    .line 920
    iget-object v12, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v12, :cond_2

    move v12, v4

    goto :goto_2

    :cond_2
    move v12, v5

    :goto_2
    aput-boolean v12, v9, v11

    add-int/2addr v11, v4

    if-eqz p7, :cond_3

    .line 924
    aput-object p4, v10, v11

    .line 925
    iget-boolean v12, v0, Lcom/zte/mifavor/widget/AlertController;->mForceInverseBackground:Z

    aput-boolean v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    :cond_3
    if-eqz p8, :cond_4

    .line 930
    aput-object p5, v10, v11

    .line 931
    aput-boolean v4, v9, v11

    :cond_4
    move v11, v5

    move v12, v11

    move v13, v12

    .line 935
    :goto_3
    array-length v15, v10

    if-ge v11, v15, :cond_a

    .line 936
    aget-object v15, v10, v11

    if-nez v15, :cond_5

    goto :goto_7

    :cond_5
    if-eqz v14, :cond_9

    if-nez v12, :cond_7

    if-eqz v13, :cond_6

    move v12, v3

    goto :goto_4

    :cond_6
    move v12, v6

    .line 943
    :goto_4
    invoke-virtual {v14, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_7
    if-eqz v13, :cond_8

    move v12, v7

    goto :goto_5

    :cond_8
    move v12, v8

    .line 945
    :goto_5
    invoke-virtual {v14, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    move v12, v4

    .line 951
    :cond_9
    aget-boolean v13, v9, v11

    move-object v14, v15

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_a
    if-eqz v14, :cond_f

    if-eqz v12, :cond_d

    .line 956
    sget v3, Lcom/zte/extres/R$styleable;->AlertDialogMfv_bottomBright:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 957
    sget v6, Lcom/zte/extres/R$styleable;->AlertDialogMfv_bottomMedium:I

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 958
    sget v7, Lcom/zte/extres/R$styleable;->AlertDialogMfv_bottomDark:I

    invoke-virtual {v1, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v13, :cond_c

    if-eqz p8, :cond_b

    move v1, v6

    goto :goto_8

    :cond_b
    move v1, v3

    .line 962
    :cond_c
    :goto_8
    invoke-virtual {v14, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 965
    :cond_d
    sget v2, Lcom/zte/extres/R$styleable;->AlertDialogMfv_fullBright:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 966
    sget v3, Lcom/zte/extres/R$styleable;->AlertDialogMfv_fullDark:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v13, :cond_e

    move v1, v2

    .line 968
    :cond_e
    invoke-virtual {v14, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 972
    :cond_f
    :goto_9
    iget-object v1, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_10

    .line 973
    iget-object v2, v0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_10

    .line 974
    iget-object v2, v0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 975
    iget v0, v0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_10

    .line 977
    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 978
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_10
    return-void
.end method

.method private setBottomOnZteTheme()V
    .locals 1

    .line 261
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method private setupButtonInfo()Z
    .locals 2

    .line 715
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->button_info:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfo:Landroid/widget/TextView;

    .line 716
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfoText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 718
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfo:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return v1

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfo:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfoText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method

.method private setupButtons()Z
    .locals 12

    .line 730
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/zte/extres/R$id;->button1:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 735
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v4

    goto :goto_1

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    .line 744
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v1, :cond_2

    .line 745
    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->button2:I

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_2

    .line 747
    :cond_2
    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001a

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 749
    :goto_2
    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 752
    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 754
    :cond_3
    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    .line 760
    :goto_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v5, v1, :cond_4

    .line 761
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->button3:I

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_4

    .line 763
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102001b

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 765
    :goto_4
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 768
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 770
    :cond_5
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 771
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    .line 775
    :goto_5
    sput v0, Lcom/zte/mifavor/widget/AlertController;->sWhichButtons:I

    .line 776
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/mifavor/widget/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/zte/mifavor/widget/AlertController;->mDisplayType:I

    if-eq v1, v7, :cond_8

    if-ne v0, v2, :cond_6

    .line 782
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_6

    :cond_6
    if-ne v0, v6, :cond_7

    .line 784
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_6

    :cond_7
    if-ne v0, v5, :cond_8

    .line 786
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 790
    :cond_8
    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x16

    const/4 v9, 0x7

    const/4 v10, 0x5

    const/4 v11, 0x6

    if-le v1, v8, :cond_d

    iget v1, p0, Lcom/zte/mifavor/widget/AlertController;->mDisplayType:I

    if-eq v1, v7, :cond_d

    .line 792
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/zte/extres/R$id;->divider1:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    .line 793
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/zte/extres/R$id;->divider2:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    if-eq v0, v7, :cond_b

    if-ne v0, v11, :cond_9

    goto :goto_7

    :cond_9
    if-ne v0, v10, :cond_a

    .line 800
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_a
    if-ne v0, v9, :cond_c

    .line 803
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 804
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 797
    :cond_b
    :goto_7
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 798
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    :goto_8
    if-eq v0, v2, :cond_13

    if-eq v0, v6, :cond_13

    if-eq v0, v5, :cond_13

    .line 808
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/zte/extres/R$id;->leftpadding:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mLeftPadding:Landroid/widget/Space;

    .line 809
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mLeftPadding:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setVisibility(I)V

    .line 811
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/zte/extres/R$id;->rightpadding:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mRightPadding:Landroid/widget/Space;

    .line 812
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mRightPadding:Landroid/widget/Space;

    invoke-virtual {p0, v4}, Landroid/widget/Space;->setVisibility(I)V

    goto/16 :goto_b

    .line 815
    :cond_d
    iget v1, p0, Lcom/zte/mifavor/widget/AlertController;->mDisplayType:I

    if-ne v1, v7, :cond_13

    .line 816
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/zte/extres/R$id;->divider1:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    .line 817
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider1:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 819
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/zte/extres/R$id;->divider2:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    .line 820
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mdivider2:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 822
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/zte/extres/R$id;->buttonpadding23:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding23:Landroid/widget/Space;

    .line 823
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v8, Lcom/zte/extres/R$id;->buttonpadding31:I

    invoke-virtual {v1, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding31:Landroid/widget/Space;

    if-eq v0, v2, :cond_12

    if-eq v0, v6, :cond_12

    if-ne v0, v5, :cond_e

    goto :goto_a

    :cond_e
    if-ne v0, v11, :cond_f

    .line 829
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding23:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setVisibility(I)V

    .line 830
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding31:Landroid/widget/Space;

    invoke-virtual {p0, v3}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_b

    :cond_f
    if-eq v0, v10, :cond_11

    if-ne v0, v7, :cond_10

    goto :goto_9

    :cond_10
    if-ne v0, v9, :cond_13

    .line 835
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding23:Landroid/widget/Space;

    invoke-virtual {v1, v4}, Landroid/widget/Space;->setVisibility(I)V

    .line 836
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding31:Landroid/widget/Space;

    invoke-virtual {p0, v4}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_b

    .line 832
    :cond_11
    :goto_9
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding23:Landroid/widget/Space;

    invoke-virtual {v1, v3}, Landroid/widget/Space;->setVisibility(I)V

    .line 833
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding31:Landroid/widget/Space;

    invoke-virtual {p0, v4}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_b

    .line 826
    :cond_12
    :goto_a
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding23:Landroid/widget/Space;

    invoke-virtual {v1, v3}, Landroid/widget/Space;->setVisibility(I)V

    .line 827
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->buttonpadding31:Landroid/widget/Space;

    invoke-virtual {p0, v3}, Landroid/widget/Space;->setVisibility(I)V

    :cond_13
    :goto_b
    if-eqz v0, :cond_14

    goto :goto_c

    :cond_14
    move v2, v4

    :goto_c
    return v2
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 4

    .line 682
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 683
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 686
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x102000b

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 687
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 692
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 697
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/zte/extres/R$id;->scrollView:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 699
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 703
    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupDecor()V
    .locals 3

    .line 475
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/zte/extres/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 525
    new-instance v2, Lcom/zte/mifavor/widget/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/zte/mifavor/widget/AlertController$2;-><init>(Lcom/zte/mifavor/widget/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 p0, 0x1

    .line 537
    invoke-virtual {v0, p0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 538
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 6

    .line 620
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    .line 622
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v0, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 625
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 628
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Lcom/zte/extres/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 629
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/zte/extres/R$id;->icon:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 632
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mDisplayType:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    .line 633
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Lcom/zte/extres/R$id;->close_icon:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mCloseIconView:Landroid/widget/ImageView;

    .line 634
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mCloseIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mCloseIconView:Landroid/widget/ImageView;

    new-instance v4, Lcom/zte/mifavor/widget/AlertController$3;

    invoke-direct {v4, p0}, Lcom/zte/mifavor/widget/AlertController$3;-><init>(Lcom/zte/mifavor/widget/AlertController;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 650
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lcom/zte/extres/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zte/mifavor/widget/TextViewZTE;

    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Lcom/zte/mifavor/widget/TextViewZTE;

    .line 651
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Lcom/zte/mifavor/widget/TextViewZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/TextViewZTE;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    if-eqz p1, :cond_2

    .line 657
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 658
    :cond_2
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 659
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 663
    :cond_3
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Lcom/zte/mifavor/widget/TextViewZTE;

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 664
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 665
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 666
    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    .line 663
    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/zte/mifavor/widget/TextViewZTE;->setPadding(IIII)V

    .line 667
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    move v1, v2

    goto :goto_1

    .line 671
    :cond_4
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/zte/extres/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 672
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return v1
.end method

.method private setupView()V
    .locals 14

    .line 543
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    .line 544
    invoke-direct {p0, v4}, Lcom/zte/mifavor/widget/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 545
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setupButtons()Z

    move-result v9

    .line 546
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setupButtonInfo()Z

    .line 548
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    .line 550
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/zte/extres/R$styleable;->AlertDialogMfv:[I

    iget v2, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogStyleAttr:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 552
    invoke-direct {p0, v3}, Lcom/zte/mifavor/widget/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v7

    .line 554
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/zte/extres/R$id;->buttonPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->buttonPanel:Landroid/view/View;

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-nez v9, :cond_1

    .line 556
    iget-object v8, p0, Lcom/zte/mifavor/widget/AlertController;->buttonPanel:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v8, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lcom/zte/extres/R$id;->textSpacerNoButtons:I

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 559
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :cond_0
    iget-object v8, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v1}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 564
    :cond_1
    iget-object v8, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v10, Lcom/zte/extres/R$id;->customPanel:I

    invoke-virtual {v8, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 566
    iget-object v10, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    if-eqz v10, :cond_2

    .line 567
    iget-object v10, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    goto :goto_0

    .line 568
    :cond_2
    iget v10, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    if-eqz v10, :cond_3

    .line 569
    iget-object v10, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 570
    iget v11, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    invoke-virtual {v10, v11, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    goto :goto_0

    :cond_3
    move-object v10, v5

    :goto_0
    if-eqz v10, :cond_4

    move v11, v1

    goto :goto_1

    :cond_4
    move v11, v6

    :goto_1
    if-eqz v11, :cond_5

    .line 576
    invoke-static {v10}, Lcom/zte/mifavor/widget/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 577
    :cond_5
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v6, 0x20000

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    :cond_6
    if-eqz v11, :cond_8

    .line 582
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->custom:I

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 583
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v6, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v10, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    iget-boolean v6, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    if-eqz v6, :cond_7

    .line 586
    iget v6, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingLeft:I

    iget v10, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingTop:I

    iget v12, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingRight:I

    iget v13, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v1, v6, v10, v12, v13}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 590
    :cond_7
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_9

    .line 591
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .line 594
    :cond_8
    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    :goto_2
    if-eqz v7, :cond_b

    .line 600
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_a

    .line 601
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->titleDivider:I

    invoke-virtual {v1, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    :cond_a
    if-eqz v5, :cond_b

    .line 608
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 612
    :cond_b
    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->buttonPanel:Landroid/view/View;

    move-object v1, p0

    move-object v2, v0

    move-object v5, v8

    move v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/zte/mifavor/widget/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 614
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 454
    :pswitch_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 456
    :pswitch_1
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 458
    :pswitch_2
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 2

    .line 438
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 439
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 440
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public installContent()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 268
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->selectContentView()I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 270
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setupView()V

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setupDecor()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 466
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 471
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 370
    iget-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 391
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 376
    :pswitch_0
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 377
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 381
    :pswitch_1
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 382
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 386
    :pswitch_2
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 387
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0

    .line 351
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 402
    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 403
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    .line 405
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 420
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 421
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    .line 423
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 425
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInfoButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfoText:Ljava/lang/CharSequence;

    .line 711
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonInfoClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    .line 444
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/AlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 309
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 310
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 288
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 289
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Lcom/zte/mifavor/widget/TextViewZTE;

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Lcom/zte/mifavor/widget/TextViewZTE;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TextViewZTE;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Lcom/zte/mifavor/widget/TextViewZTE;

    if-eqz v0, :cond_0

    .line 297
    iget-object p0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Lcom/zte/mifavor/widget/TextViewZTE;

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/TextViewZTE;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 320
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    .line 321
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 329
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    .line 330
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 339
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    .line 340
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 341
    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingLeft:I

    .line 342
    iput p3, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingTop:I

    .line 343
    iput p4, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingRight:I

    .line 344
    iput p5, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingBottom:I

    return-void
.end method
