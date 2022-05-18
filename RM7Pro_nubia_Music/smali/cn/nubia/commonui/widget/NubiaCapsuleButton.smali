.class public Lcn/nubia/commonui/widget/NubiaCapsuleButton;
.super Landroid/widget/LinearLayout;
.source "NubiaCapsuleButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    }
.end annotation


# static fields
.field public static final LEFT_BUTTON:I = 0x1

.field private static final MAX_CAPSULE_NUMS:I = 0x4

.field public static final MID1_BUTTON:I = 0x2

.field public static final MID2_BUTTON:I = 0x3

.field private static final MIN_CAPSULE_NUMS:I = 0x2

.field public static final RIGHT_BUTTON:I = 0x4


# instance fields
.field private mBackgroundLeft:Landroid/graphics/drawable/Drawable;

.field private mBackgroundMid1:Landroid/graphics/drawable/Drawable;

.field private mBackgroundMid2:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRight:Landroid/graphics/drawable/Drawable;

.field private mCapsuleNums:I

.field private mItems:[Ljava/lang/String;

.field private mLeftButton:Landroid/widget/Button;

.field private mLeftButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mMid1Button:Landroid/widget/Button;

.field private mMid1ButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

.field private mMid2Button:Landroid/widget/Button;

.field private mMid2ButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

.field private mNormalTextColor:I

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/Button;

.field private mRightButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

.field private mSelectedTextColor:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    sget v0, Lcn/nubia/commonui/R$attr;->capsuleButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mCapsuleNums:I

    .line 196
    new-instance v0, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton$1;-><init>(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 75
    sget-object v0, Lcn/nubia/commonui/R$styleable;->CapsuleButton:[I

    invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    sget v1, Lcn/nubia/commonui/R$styleable;->CapsuleButton_capsuleBackgroundLeft:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    .line 80
    sget v1, Lcn/nubia/commonui/R$styleable;->CapsuleButton_capsuleBackgroundMid:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundMid1:Landroid/graphics/drawable/Drawable;

    .line 82
    sget v1, Lcn/nubia/commonui/R$styleable;->CapsuleButton_capsuleBackgroundMid:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundMid2:Landroid/graphics/drawable/Drawable;

    .line 84
    sget v1, Lcn/nubia/commonui/R$styleable;->CapsuleButton_capsuleBackgroundRight:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    .line 87
    sget v1, Lcn/nubia/commonui/R$styleable;->CapsuleButton_capsuleSelectedTextColor:I

    sget v2, Lcn/nubia/commonui/R$color;->nubia_primary_text_default_material_light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mSelectedTextColor:I

    .line 91
    sget v1, Lcn/nubia/commonui/R$styleable;->CapsuleButton_capsuleNormalTextColor:I

    sget v2, Lcn/nubia/commonui/R$color;->nubia_secondary_text_default_material_light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mNormalTextColor:I

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v1, v6, [[I

    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [I

    aput v4, v2, v4

    aput-object v2, v1, v5

    new-array v2, v6, [I

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mSelectedTextColor:I

    aput v3, v2, v4

    iget v3, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mNormalTextColor:I

    aput v3, v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    .line 101
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMetrics:Landroid/util/DisplayMetrics;

    .line 102
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mWindowManager:Landroid/view/WindowManager;

    .line 103
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->initView()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->clearSelected()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1ButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2ButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/commonui/widget/NubiaCapsuleButton;)Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    return-object v0
.end method

.method private clearSelected()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 218
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 219
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 220
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 221
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 107
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$layout;->nubia_capsule_button:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 109
    sget v0, Lcn/nubia/commonui/R$id;->nubia_button_left:I

    .line 110
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    .line 111
    sget v0, Lcn/nubia/commonui/R$id;->nubia_button_mid1:I

    .line 112
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    .line 113
    sget v0, Lcn/nubia/commonui/R$id;->nubia_button_mid2:I

    .line 114
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    .line 115
    sget v0, Lcn/nubia/commonui/R$id;->nubia_button_right:I

    .line 116
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    .line 118
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->setInitTextColor()V

    .line 124
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->setInitBackground()V

    .line 126
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->clearSelected()V

    .line 127
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 128
    return-void
.end method

.method private setInitBackground()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundMid1:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundMid1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundMid2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mBackgroundRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_0
    return-void
.end method

.method private setInitTextColor()V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 258
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 259
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 260
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 132
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 134
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 135
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    .line 137
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v1

    .line 138
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    .line 139
    iget-object v3, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v3

    .line 140
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v4

    .line 141
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 142
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 143
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 144
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x1c

    sub-int v0, v2, v0

    iget v2, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mCapsuleNums:I

    div-int/2addr v0, v2

    .line 145
    if-le v1, v0, :cond_0

    .line 149
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setCapsuleNums(I)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 158
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 159
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mCapsuleNums:I

    .line 160
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 161
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInitSelected(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 224
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->clearSelected()V

    .line 225
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mCapsuleNums:I

    if-gt p1, v0, :cond_0

    .line 226
    packed-switch p1, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 228
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 231
    :pswitch_1
    const/4 v0, 0x2

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mCapsuleNums:I

    if-ne v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 239
    :pswitch_2
    const/4 v0, 0x3

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mCapsuleNums:I

    if-ne v0, v1, :cond_2

    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setItemTitles(I)V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->setItemTitles([Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public setItemTitles([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 182
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    array-length v0, v0

    .line 184
    if-le v0, v4, :cond_0

    .line 185
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButton:Landroid/widget/Button;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButton:Landroid/widget/Button;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_0
    if-le v0, v5, :cond_1

    .line 189
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1Button:Landroid/widget/Button;

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :cond_1
    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2Button:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mItems:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_2
    return-void
.end method

.method public setOnClickListener(Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mLeftButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .line 171
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid1ButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .line 172
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mMid2ButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .line 173
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaCapsuleButton;->mRightButtonListener:Lcn/nubia/commonui/widget/NubiaCapsuleButton$OnCapsuleClickListener;

    .line 174
    return-void
.end method
