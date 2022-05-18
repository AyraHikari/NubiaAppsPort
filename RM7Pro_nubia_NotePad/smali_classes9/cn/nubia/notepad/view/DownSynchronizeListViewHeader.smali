.class public Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;
.super Landroid/widget/LinearLayout;
.source "DownSynchronizeListViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;,
        Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;,
        Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;
    }
.end annotation


# instance fields
.field private mAlpha:F

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAngle:F

.field private mArrowAnimator:Landroid/animation/ValueAnimator;

.field private mArrowImageView:Landroid/widget/ImageView;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mControl:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

.field private mFaileString:Ljava/lang/String;

.field private mHintTextView:Landroid/widget/TextView;

.field private mLoadingAngle:F

.field private mLoadingAnimator:Landroid/animation/ValueAnimator;

.field private mLoadingImageView:Landroid/widget/ImageView;

.field private mNoStartString:Ljava/lang/String;

.field private mNormalString:Ljava/lang/String;

.field private mNumberString:Ljava/lang/String;

.field private mNumberTextView:Landroid/widget/TextView;

.field private mOldState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

.field private mReadyHeight:I

.field private mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

.field private mStateTextView:Landroid/widget/TextView;

.field private mStretchHeight:I

.field private mStretchString:Ljava/lang/String;

.field private mSuccessString:Ljava/lang/String;

.field private mSynchronizedState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

.field private mSynchronizingString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/16 v0, 0x3c

    iput v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStretchHeight:I

    .line 36
    const/16 v0, 0x78

    iput v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mReadyHeight:I

    .line 44
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 45
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mOldState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 46
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->state_no_start:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mSynchronizedState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    .line 47
    iput v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAngle:F

    .line 48
    iput v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingAngle:F

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlpha:F

    .line 63
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->initView(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/16 v0, 0x3c

    iput v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStretchHeight:I

    .line 36
    const/16 v0, 0x78

    iput v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mReadyHeight:I

    .line 44
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 45
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mOldState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 46
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->state_no_start:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mSynchronizedState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    .line 47
    iput v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAngle:F

    .line 48
    iput v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingAngle:F

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlpha:F

    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->initView(Landroid/content/Context;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    .prologue
    .line 19
    iget v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;
    .param p1, "x1"    # F

    .prologue
    .line 19
    iput p1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)F
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    .prologue
    .line 19
    iget v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAngle:F

    return v0
.end method

.method static synthetic access$402(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;F)F
    .locals 0
    .param p0, "x0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;
    .param p1, "x1"    # F

    .prologue
    .line 19
    iput p1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAngle:F

    return p1
.end method

.method static synthetic access$500(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private dpToPixel(Landroid/content/Context;F)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 319
    .local v0, "m":F
    mul-float v1, p2, v0

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    return v1
.end method

.method private handleStateNormal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 131
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNormalString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mOldState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_stretch:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->startArrowAnimation()V

    .line 140
    :cond_0
    return-void
.end method

.method private handleStateReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 155
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    return-void
.end method

.method private handleStateStretch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 143
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStretchString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mOldState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    if-ne v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->startArrowAnimation()V

    .line 152
    :cond_0
    return-void
.end method

.method private handleStateSynchronized()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 174
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->startAlphaAnimation()V

    .line 175
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    return-void
.end method

.method private handleStateSynchronizing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 163
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->startLoadingAnimation()V

    .line 164
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->startAlphaAnimation()V

    .line 165
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mSynchronizingString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;-><init>(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)V

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mControl:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

    .line 74
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    .line 78
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/16 v1, 0x50

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->setGravity(I)V

    .line 81
    const v1, 0x7f0f0042

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 82
    const v1, 0x7f0f0044

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mHintTextView:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0f0045

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberTextView:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0f0046

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0f0043

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingImageView:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNormalString:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStretchString:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mSynchronizingString:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberString:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mSuccessString:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mFaileString:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNoStartString:Ljava/lang/String;

    .line 100
    iget v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStretchHeight:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->dpToPixel(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStretchHeight:I

    .line 101
    iget v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mReadyHeight:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->dpToPixel(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mReadyHeight:I

    .line 102
    return-void
.end method


# virtual methods
.method public getCurrentState()Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    return-object v0
.end method

.method public getReadyHeight()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mReadyHeight:I

    return v0
.end method

.method public getStretchHeight()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStretchHeight:I

    return v0
.end method

.method public getVisiableHeight()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return v0
.end method

.method public reSetState()V
    .locals 3

    .prologue
    .line 307
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAngle:F

    .line 308
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAngle:F

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 309
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 310
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 311
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    iput-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 313
    invoke-direct {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->handleStateNormal()V

    .line 314
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->invalidate()V

    .line 315
    return-void
.end method

.method public setHandAngle()V
    .locals 2

    .prologue
    .line 323
    iget v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingAngle:F

    const/high16 v1, 0x42340000    # 45.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingAngle:F

    .line 324
    iget v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingAngle:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingAngle:F

    .line 327
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mLoadingAngle:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 328
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->invalidate()V

    .line 329
    return-void
.end method

.method public setVisiableHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 183
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-gez p1, :cond_0

    .line 185
    const/4 p1, 0x0

    .line 187
    :cond_0
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 188
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method

.method public startAlphaAnimation()V
    .locals 4

    .prologue
    .line 223
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->stopAlphaAnimation()V

    .line 224
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 225
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 227
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$1;-><init>(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 241
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$2;-><init>(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 252
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 253
    return-void

    .line 224
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startArrowAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 262
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->stopArrowAnimation()V

    .line 263
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_normal:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    if-ne v0, v1, :cond_1

    .line 264
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowAnimator:Landroid/animation/ValueAnimator;

    .line 269
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 270
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 271
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$3;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$3;-><init>(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 282
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->state_stretch:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    if-ne v0, v1, :cond_0

    .line 267
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 264
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 267
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startLoadingAnimation()V
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->stoptLoadingAnimation()V

    .line 215
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mControl:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->startLoading()V

    .line 216
    return-void
.end method

.method public stopAlphaAnimation()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 259
    :cond_0
    return-void
.end method

.method public stopArrowAnimation()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 288
    :cond_0
    return-void
.end method

.method public stoptLoadingAnimation()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mControl:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;

    invoke-virtual {v0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$LoadControl;->stopLoading()V

    .line 220
    return-void
.end method

.method public updateState(Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;)V
    .locals 2
    .param p1, "state"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    if-ne p1, v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    iput-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mOldState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 108
    iput-object p1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    .line 110
    sget-object v0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$4;->$SwitchMap$cn$nubia$notepad$view$DownSynchronizeListViewHeader$STATE:[I

    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;

    invoke-virtual {v1}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$STATE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->handleStateNormal()V

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->handleStateStretch()V

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->handleStateReady()V

    goto :goto_0

    .line 121
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->handleStateSynchronizing()V

    goto :goto_0

    .line 124
    :pswitch_4
    invoke-direct {p0}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->handleStateSynchronized()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public updateSyncState(I)V
    .locals 1
    .param p1, "stringR"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 211
    return-void
.end method

.method public updateSynchronizedState(ILcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;)V
    .locals 3
    .param p1, "number"    # I
    .param p2, "state"    # Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "ns":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iput-object p2, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mSynchronizedState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    .line 195
    sget-object v1, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$4;->$SwitchMap$cn$nubia$notepad$view$DownSynchronizeListViewHeader$SYNCHRONIZED_STATE:[I

    iget-object v2, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mSynchronizedState:Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;

    invoke-virtual {v2}, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader$SYNCHRONIZED_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 197
    :pswitch_0
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mNoStartString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mSuccessString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 203
    :pswitch_2
    iget-object v1, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mStateTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/notepad/view/DownSynchronizeListViewHeader;->mFaileString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
