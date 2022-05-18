.class public Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mNavigationMode:I

.field private mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTabView:Landroid/view/View;

.field private final mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field private mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

.field private mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 87
    sget v0, Lcn/nubia/commonui/R$string;->abc_action_bar_up_description:I

    sget v1, Lcn/nubia/commonui/R$drawable;->abc_ic_ab_back_mtrl_am_alpha:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;ZII)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 83
    iput v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 93
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    .line 94
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 97
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 99
    if-eqz p2, :cond_d

    .line 100
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcn/nubia/commonui/R$styleable;->ActionBar:[I

    sget v4, Lcn/nubia/commonui/R$attr;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 103
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_title:I

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 104
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_subtitle:I

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_logo:I

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_2
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_icon:I

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 120
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_3
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_4

    .line 125
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_4
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_displayOptions:I

    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 130
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 132
    if-eqz v2, :cond_5

    .line 133
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 135
    iget v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 138
    :cond_5
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result v2

    .line 139
    if-lez v2, :cond_6

    .line 140
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 141
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v2, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_6
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v2, v5}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 147
    sget v3, Lcn/nubia/commonui/R$styleable;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v3, v5}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 149
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 150
    :cond_7
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 151
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 150
    invoke-virtual {v4, v2, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    :cond_8
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 155
    if-eqz v2, :cond_9

    .line 156
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_9
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    .line 161
    if-eqz v2, :cond_a

    .line 162
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_a
    sget v2, Lcn/nubia/commonui/R$styleable;->ActionBar_popupTheme:I

    invoke-virtual {v0, v2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 166
    if-eqz v1, :cond_b

    .line 167
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setPopupTheme(I)V

    .line 170
    :cond_b
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 172
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 179
    :goto_1
    invoke-virtual {p0, p3}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 180
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 182
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0, p4}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$1;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void

    :cond_c
    move v0, v1

    .line 96
    goto/16 :goto_0

    .line 174
    :cond_d
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 176
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    goto :goto_1
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Lcn/nubia/commonui/actionbar/widget/Toolbar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    return v0
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 225
    const/16 v0, 0xb

    .line 227
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    const/16 v0, 0xf

    .line 230
    :cond_0
    return v0
.end method

.method private ensureSpinner()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 549
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcn/nubia/commonui/R$attr;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    .line 551
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v4, v4, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(III)V

    .line 553
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    :cond_0
    return-void
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 284
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 664
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 665
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_0
    return-void

    .line 665
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateToolbarLogo()V
    .locals 2

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 367
    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 368
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 369
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 374
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 371
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2

    .prologue
    .line 602
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 603
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$2;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$2;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)V

    .line 604
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    if-nez p1, :cond_0

    .line 619
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper$3;-><init>(Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;)V

    .line 620
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    goto :goto_0
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public canSplit()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->collapseActionView()V

    .line 256
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->dismissPopupMenus()V

    .line 420
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getDropdownItemCount()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    return v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPopupTheme()I

    move-result v0

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .prologue
    .line 309
    const-string v0, "NubiaWidget"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void
.end method

.method public initProgress()V
    .locals 2

    .prologue
    .line 304
    const-string v0, "NubiaWidget"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isSplit()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 677
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 672
    return-void
.end method

.method public setActionBarShowOrHide(Z)V
    .locals 0

    .prologue
    .line 719
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setCollapsible(Z)V

    .line 495
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 589
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 590
    if-eqz p1, :cond_1

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 593
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 211
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 219
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 222
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 430
    xor-int/2addr v0, p1

    .line 431
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    .line 432
    if-eqz v0, :cond_3

    .line 433
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 434
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 435
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 436
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 442
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 443
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 446
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 447
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 448
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 456
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 457
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 464
    :cond_3
    :goto_2
    return-void

    .line 438
    :cond_4
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 451
    :cond_5
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 460
    :cond_6
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setDropdownParams(Landroid/widget/SpinnerAdapter;Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V
    .locals 1

    .prologue
    .line 560
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 561
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 562
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setOnItemSelectedListener(Lcn/nubia/commonui/actionbar/internal/widget/AdapterViewCompat$OnItemSelectedListener;)V

    .line 563
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-nez v0, :cond_0

    .line 568
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set dropdown selected position without an adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 572
    return-void
.end method

.method public setEmbeddedTabView(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 468
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 471
    :cond_0
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    .line 472
    if-eqz p1, :cond_1

    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 473
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 474
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 475
    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->width:I

    .line 476
    iput v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->height:I

    .line 477
    const v1, 0x800053

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 480
    :cond_1
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 345
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 351
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 352
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 356
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 363
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    .line 411
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    sget v1, Lcn/nubia/commonui/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setId(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setCallback(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;)V

    .line 414
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    check-cast p1, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V

    .line 415
    return-void
.end method

.method public setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 704
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 405
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 650
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 651
    return-void

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 645
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 646
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .prologue
    .line 637
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 638
    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 637
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void

    .line 638
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 632
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 633
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 509
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 510
    if-eq p1, v0, :cond_1

    .line 511
    packed-switch v0, :pswitch_data_0

    .line 524
    :cond_0
    :goto_0
    iput p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mNavigationMode:I

    .line 526
    packed-switch p1, :pswitch_data_1

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid navigation mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 518
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 519
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 530
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->ensureSpinner()V

    .line 531
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSpinner:Lcn/nubia/commonui/actionbar/internal/widget/SpinnerCompat;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 546
    :cond_1
    :goto_1
    :pswitch_3
    return-void

    .line 534
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 536
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTabView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 537
    iput v2, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->width:I

    .line 538
    iput v2, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->height:I

    .line 539
    const v1, 0x800053

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    goto :goto_1

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 526
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public setSplitToolbar(Z)V
    .locals 2

    .prologue
    .line 323
    if-eqz p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot split an android.widget.Toolbar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 296
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 297
    iget v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    .line 279
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setVisibility(I)V

    .line 693
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 261
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;->mToolbar:Lcn/nubia/commonui/actionbar/widget/Toolbar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
