.class public Lcn/nubia/commonui/actionbar/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/actionbar/widget/Toolbar$a;,
        Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;,
        Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;,
        Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaWidget"


# instance fields
.field private mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

.field private mGravity:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

.field private mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

.field private mMinHeight:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 192
    sget v0, Lcn/nubia/commonui/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 198
    const/4 v0, 0x1

    invoke-static {p1, p2, v6, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    .line 141
    const v0, 0x800013

    iput v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mGravity:I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempMargins:[I

    .line 159
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$1;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar$1;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuViewItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    .line 179
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$2;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar$2;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 201
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/commonui/R$styleable;->Toolbar:[I

    invoke-static {v0, p2, v1, p3, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 204
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {v0, v1, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextAppearance:I

    .line 205
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {v0, v1, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 206
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_android_gravity:I

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mGravity:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mGravity:I

    .line 207
    const/16 v1, 0x30

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    .line 208
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_titleMargins:I

    .line 209
    invoke-virtual {v0, v1, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginStart:I

    .line 211
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_titleMarginStart:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 212
    if-ltz v1, :cond_0

    .line 213
    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginStart:I

    .line 216
    :cond_0
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 217
    if-ltz v1, :cond_1

    .line 218
    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    .line 221
    :cond_1
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 222
    if-ltz v1, :cond_2

    .line 223
    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    .line 226
    :cond_2
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 228
    if-ltz v1, :cond_3

    .line 229
    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    .line 232
    :cond_3
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMaxButtonHeight:I

    .line 234
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_contentInsetStart:I

    .line 235
    invoke-virtual {v0, v1, v7}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 237
    sget v2, Lcn/nubia/commonui/R$styleable;->Toolbar_contentInsetEnd:I

    .line 238
    invoke-virtual {v0, v2, v7}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 240
    sget v3, Lcn/nubia/commonui/R$styleable;->Toolbar_contentInsetLeft:I

    .line 241
    invoke-virtual {v0, v3, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 242
    sget v4, Lcn/nubia/commonui/R$styleable;->Toolbar_contentInsetRight:I

    .line 243
    invoke-virtual {v0, v4, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 245
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v5, v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 247
    if-ne v1, v7, :cond_4

    if-eq v2, v7, :cond_5

    .line 249
    :cond_4
    iget-object v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v3, v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->setRelative(II)V

    .line 252
    :cond_5
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 253
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 255
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_title:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 257
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    :cond_6
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 261
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 262
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 265
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 266
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_popupTheme:I

    invoke-virtual {v0, v1, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setPopupTheme(I)V

    .line 268
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_8

    .line 270
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_8
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 274
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 278
    :cond_9
    sget v1, Lcn/nubia/commonui/R$styleable;->Toolbar_android_minHeight:I

    invoke-virtual {v0, v1, v6}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMinHeight:I

    .line 280
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 283
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/actionbar/widget/Toolbar;)Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/commonui/actionbar/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/actionbar/widget/Toolbar;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/actionbar/widget/Toolbar;Z)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setChildVisibilityForExpandedActionView(Z)V

    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1646
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1647
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 1649
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1648
    invoke-static {p2, v3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 1651
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1653
    if-eqz v0, :cond_2

    .line 1654
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_4

    .line 1655
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1656
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1657
    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v4, :cond_0

    invoke-direct {p0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 1658
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1659
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1646
    goto :goto_0

    .line 1663
    :cond_2
    :goto_2
    if-ge v1, v2, :cond_4

    .line 1664
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1665
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1666
    iget v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v5, :cond_3

    invoke-direct {p0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 1667
    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1668
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1663
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1672
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1026
    if-nez v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1033
    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1034
    invoke-virtual {p0, p1, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    return-void

    .line 1028
    :cond_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1029
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    .line 1031
    :cond_1
    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    goto :goto_0
.end method

.method private ensureCollapseButtonView()V
    .locals 4

    .prologue
    .line 1005
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcn/nubia/commonui/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1008
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1009
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1010
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1011
    const v1, 0x800003

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 1012
    const/4 v1, 0x2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1013
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$3;

    invoke-direct {v1, p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar$3;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 513
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .prologue
    .line 825
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureMenuView()V

    .line 826
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->peekMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 828
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    .line 829
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    if-nez v1, :cond_0

    .line 830
    new-instance v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Lcn/nubia/commonui/actionbar/widget/Toolbar$1;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    .line 832
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 833
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 835
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    .prologue
    .line 838
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 840
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setPopupTheme(I)V

    .line 841
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuViewItemClickListener:Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setOnMenuItemClickListener(Lcn/nubia/commonui/actionbar/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 842
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V

    .line 843
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 844
    const v1, 0x800005

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 845
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 848
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 4

    .prologue
    .line 995
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcn/nubia/commonui/R$attr;->toolbarNavigationButtonStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 998
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 999
    const v1, 0x800003

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    .line 1000
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 2

    .prologue
    .line 1675
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1676
    invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1677
    and-int/lit8 v0, v0, 0x7

    .line 1678
    packed-switch v0, :pswitch_data_0

    .line 1684
    :pswitch_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 1678
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1595
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1596
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1597
    if-lez p2, :cond_0

    sub-int v1, v3, p2

    div-int/lit8 v1, v1, 0x2

    .line 1598
    :goto_0
    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1608
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v4

    .line 1609
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    .line 1610
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHeight()I

    move-result v6

    .line 1611
    sub-int v1, v6, v4

    sub-int/2addr v1, v5

    .line 1612
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    .line 1613
    iget v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v1, v7, :cond_1

    .line 1614
    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    .line 1622
    :goto_1
    add-int/2addr v0, v4

    :goto_2
    return v0

    :cond_0
    move v1, v2

    .line 1597
    goto :goto_0

    .line 1600
    :sswitch_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 1603
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    goto :goto_2

    .line 1616
    :cond_1
    sub-int v5, v6, v5

    sub-int v3, v5, v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v4

    .line 1618
    iget v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v3, v5, :cond_2

    .line 1619
    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v3

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1598
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 1

    .prologue
    .line 1627
    and-int/lit8 v0, p1, 0x70

    .line 1628
    sparse-switch v0, :sswitch_data_0

    .line 1634
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    :sswitch_0
    return v0

    .line 1628
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1693
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1694
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    .line 1695
    invoke-static {v0}, Landroid/support/v4/view/MarginLayoutParamsCompat;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    add-int/2addr v0, v1

    .line 1694
    return v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 851
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getMinimumHeightCompat()I
    .locals 2

    .prologue
    .line 1789
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1791
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    .line 1794
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMinHeight:I

    goto :goto_0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 1699
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1700
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1550
    aget v1, p2, v3

    .line 1551
    const/4 v0, 0x1

    aget v0, p2, v0

    .line 1553
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move v2, v3

    move v4, v3

    move v5, v0

    move v6, v1

    .line 1554
    :goto_0
    if-ge v2, v7, :cond_0

    .line 1555
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1556
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1557
    iget v8, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v6, v8, v6

    .line 1558
    iget v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1559
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1560
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1561
    neg-int v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1562
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1563
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v8

    add-int/2addr v0, v9

    add-int v1, v4, v0

    .line 1554
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v4, v1

    goto :goto_0

    .line 1565
    :cond_0
    return v4
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1732
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1570
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1571
    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v2, p3, v3

    sub-int/2addr v1, v2

    .line 1572
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, p2

    .line 1573
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v3

    .line 1574
    invoke-direct {p0, p1, p4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v1

    .line 1575
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1576
    add-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1577
    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 1578
    return v0
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1583
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1584
    iget v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v2, p3, v4

    sub-int/2addr v1, v2

    .line 1585
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int v2, p2, v2

    .line 1586
    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v4

    .line 1587
    invoke-direct {p0, p1, p4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v1

    .line 1588
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1589
    sub-int v4, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1590
    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v0, v3

    sub-int v0, v2, v0

    .line 1591
    return v0
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1160
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1162
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    aget v2, p6, v5

    sub-int/2addr v1, v2

    .line 1163
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    aget v3, p6, v6

    sub-int/2addr v2, v3

    .line 1164
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1165
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1166
    add-int/2addr v3, v4

    .line 1167
    neg-int v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v5

    .line 1168
    neg-int v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v6

    .line 1171
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1170
    invoke-static {p2, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1173
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1172
    invoke-static {p4, v2, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1176
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1177
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v3

    return v0
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1135
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1138
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1137
    invoke-static {p2, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1141
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, p5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1140
    invoke-static {p4, v2, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1144
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1145
    if-eq v2, v4, :cond_1

    if-ltz p6, :cond_1

    .line 1146
    if-eqz v2, :cond_0

    .line 1147
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 1149
    :cond_0
    invoke-static {p6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1151
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1152
    return-void
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1074
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1075
    return-void
.end method

.method private setChildVisibilityForExpandedActionView(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1744
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildCount()I

    move-result v3

    move v2, v1

    .line 1745
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1746
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1747
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1748
    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eq v4, v0, :cond_0

    .line 1749
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1745
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1749
    goto :goto_1

    .line 1752
    :cond_2
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1184
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapsible:Z

    if-nez v1, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return v0

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1187
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1188
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1189
    invoke-direct {p0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    .line 1190
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1187
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1194
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 1689
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateChildVisibilityForExpandedActionView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1755
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1756
    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eq p1, v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1759
    :cond_0
    return-void

    .line 1757
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1728
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 542
    :goto_0
    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 545
    :cond_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->dismissPopupMenus()V

    .line 414
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1723
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .locals 2

    .prologue
    .line 1705
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;
    .locals 1

    .prologue
    .line 1710
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 1711
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    check-cast p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;)V

    .line 1717
    :goto_0
    return-object v0

    .line 1712
    :cond_0
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 1713
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    check-cast p1, Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Lcn/nubia/commonui/actionbar/app/ActionBar$LayoutParams;)V

    goto :goto_0

    .line 1714
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1715
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1717
    :cond_2
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 820
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureMenu()V

    .line 821
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Lcn/nubia/commonui/actionbar/internal/widget/DecorToolbar;
    .locals 2

    .prologue
    .line 1737
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mWrapper:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 1738
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Z)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mWrapper:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    .line 1740
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mWrapper:Lcn/nubia/commonui/actionbar/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

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
    .line 368
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 2

    .prologue
    .line 863
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 864
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 422
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 423
    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move v1, v0

    .line 428
    :goto_1
    if-ge v1, v3, :cond_0

    .line 429
    invoke-virtual {v2, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 430
    const/4 v0, 0x1

    goto :goto_0

    .line 428
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1079
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1080
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1081
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1114
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1115
    if-ne v0, v4, :cond_0

    .line 1116
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingHover:Z

    .line 1119
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingHover:Z

    if-nez v1, :cond_1

    .line 1120
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1121
    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 1122
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingHover:Z

    .line 1126
    :cond_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1127
    :cond_2
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingHover:Z

    .line 1130
    :cond_3
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 23

    .prologue
    .line 1335
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    move v5, v3

    .line 1336
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getWidth()I

    move-result v12

    .line 1337
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHeight()I

    move-result v13

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingRight()I

    move-result v14

    .line 1340
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v15

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v16

    .line 1343
    sub-int v3, v12, v14

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempMargins:[I

    move-object/from16 v17, v0

    .line 1346
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v17, v7

    aput v8, v17, v4

    .line 1349
    invoke-direct/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getMinimumHeightCompat()I

    move-result v18

    .line 1351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1352
    if-eqz v5, :cond_9

    .line 1353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v3, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    move v4, v6

    .line 1361
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1362
    if-eqz v5, :cond_a

    .line 1363
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    .line 1371
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1372
    if-eqz v5, :cond_b

    .line 1373
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    .line 1381
    :cond_1
    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetLeft()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v17, v7

    .line 1382
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetRight()I

    move-result v9

    sub-int v10, v12, v14

    sub-int/2addr v10, v3

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v17, v7

    .line 1383
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetLeft()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1384
    sub-int v7, v12, v14

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1386
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1387
    if-eqz v5, :cond_c

    .line 1388
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    .line 1396
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 1397
    if-eqz v5, :cond_d

    .line 1398
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    move v7, v3

    move v8, v4

    .line 1406
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v19

    .line 1407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v20

    .line 1408
    const/4 v4, 0x0

    .line 1409
    if-eqz v19, :cond_3

    .line 1410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1411
    iget v9, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v9

    add-int/2addr v4, v3

    .line 1413
    :cond_3
    if-eqz v20, :cond_20

    .line 1414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1415
    iget v9, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v9

    add-int/2addr v3, v4

    move v11, v3

    .line 1418
    :goto_6
    if-nez v19, :cond_4

    if-eqz v20, :cond_7

    .line 1420
    :cond_4
    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v9, v3

    .line 1421
    :goto_7
    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v4, v3

    .line 1422
    :goto_8
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1423
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1424
    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-gtz v9, :cond_6

    :cond_5
    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1425
    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    if-lez v9, :cond_10

    :cond_6
    const/4 v9, 0x1

    .line 1427
    :goto_9
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    sparse-switch v10, :sswitch_data_0

    .line 1433
    sub-int v10, v13, v15

    sub-int v10, v10, v16

    .line 1434
    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 1435
    iget v0, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    if-ge v10, v0, :cond_11

    .line 1436
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    add-int/2addr v3, v4

    .line 1445
    :goto_a
    add-int v10, v15, v3

    .line 1452
    :goto_b
    if-eqz v5, :cond_13

    .line 1453
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginStart:I

    :goto_c
    const/4 v4, 0x1

    aget v4, v17, v4

    sub-int/2addr v3, v4

    .line 1454
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int v4, v7, v4

    .line 1455
    const/4 v5, 0x1

    const/4 v7, 0x0

    neg-int v3, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v17, v5

    .line 1459
    if-eqz v19, :cond_1e

    .line 1460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1461
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    .line 1462
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v10

    .line 1463
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v5, v10, v4, v7}, Landroid/widget/TextView;->layout(IIII)V

    .line 1464
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v5, v10

    .line 1465
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v10, v7, v3

    move v7, v5

    .line 1467
    :goto_d
    if-eqz v20, :cond_1d

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1469
    iget v5, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v5, v10

    .line 1470
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v4, v10

    .line 1471
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v5

    .line 1472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v10, v5, v4, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1473
    move-object/from16 v0, p0

    iget v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    sub-int v5, v4, v5

    .line 1474
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    move v3, v5

    .line 1476
    :goto_e
    if-eqz v9, :cond_1c

    .line 1477
    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_f
    move v7, v3

    .line 1512
    :cond_7
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1514
    const/4 v3, 0x0

    move v5, v3

    move v4, v8

    :goto_11
    if-ge v5, v9, :cond_15

    .line 1515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v4, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    .line 1514
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_11

    .line 1335
    :cond_8
    const/4 v3, 0x0

    move v5, v3

    goto/16 :goto_0

    .line 1356
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v6, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_1

    .line 1366
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_2

    .line 1376
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v3, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v3

    goto/16 :goto_3

    .line 1391
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    goto/16 :goto_4

    .line 1401
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v7, v4, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v4

    move v7, v3

    move v8, v4

    goto/16 :goto_5

    .line 1420
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object v9, v3

    goto/16 :goto_7

    .line 1421
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object v4, v3

    goto/16 :goto_8

    .line 1425
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 1429
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v4

    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    add-int v10, v3, v4

    .line 1430
    goto/16 :goto_b

    .line 1438
    :cond_11
    sub-int v13, v13, v16

    sub-int v11, v13, v11

    sub-int/2addr v11, v10

    sub-int/2addr v11, v15

    .line 1440
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v3, v13

    if-ge v11, v3, :cond_1f

    .line 1441
    const/4 v3, 0x0

    iget v4, v4, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    iget v13, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v4, v13

    sub-int/2addr v4, v11

    sub-int v4, v10, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_a

    .line 1448
    :sswitch_1
    sub-int v3, v13, v16

    iget v4, v4, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v3, v4

    sub-int v10, v3, v11

    goto/16 :goto_b

    .line 1453
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 1480
    :cond_13
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginStart:I

    :goto_12
    const/4 v4, 0x0

    aget v4, v17, v4

    sub-int/2addr v3, v4

    .line 1481
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v8, v4

    .line 1482
    const/4 v4, 0x0

    const/4 v5, 0x0

    neg-int v3, v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v17, v4

    .line 1486
    if-eqz v19, :cond_1b

    .line 1487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v8

    .line 1489
    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v10

    .line 1490
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v11, v8, v10, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    .line 1491
    move-object/from16 v0, p0

    iget v10, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v4, v10

    .line 1492
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    move v5, v4

    move v4, v3

    .line 1494
    :goto_13
    if-eqz v20, :cond_1a

    .line 1495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1496
    iget v10, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v4, v10

    .line 1497
    move-object/from16 v0, p0

    iget-object v10, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v8

    .line 1498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v4

    .line 1499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13, v8, v4, v10, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 1500
    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v4, v10

    .line 1501
    iget v3, v3, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v11

    move v3, v4

    .line 1503
    :goto_14
    if-eqz v9, :cond_7

    .line 1504
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto/16 :goto_10

    .line 1480
    :cond_14
    const/4 v3, 0x0

    goto :goto_12

    .line 1519
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1521
    const/4 v3, 0x0

    move v5, v3

    :goto_15
    if-ge v5, v8, :cond_16

    .line 1522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v7, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v7

    .line 1521
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_15

    .line 1528
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v5

    .line 1530
    sub-int v3, v12, v6

    sub-int/2addr v3, v14

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    .line 1531
    div-int/lit8 v6, v5, 0x2

    .line 1532
    sub-int/2addr v3, v6

    .line 1533
    add-int/2addr v5, v3

    .line 1534
    if-ge v3, v4, :cond_18

    move v3, v4

    .line 1540
    :cond_17
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1541
    const/4 v4, 0x0

    move v5, v3

    :goto_17
    if-ge v4, v6, :cond_19

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v5, v1, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v5

    .line 1541
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_17

    .line 1536
    :cond_18
    if-le v5, v7, :cond_17

    .line 1537
    sub-int v4, v5, v7

    sub-int/2addr v3, v4

    goto :goto_16

    .line 1546
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1547
    return-void

    :cond_1a
    move v3, v8

    goto/16 :goto_14

    :cond_1b
    move v5, v8

    move v4, v10

    goto/16 :goto_13

    :cond_1c
    move v3, v4

    goto/16 :goto_f

    :cond_1d
    move v3, v4

    goto/16 :goto_e

    :cond_1e
    move v7, v4

    goto/16 :goto_d

    :cond_1f
    move v3, v10

    goto/16 :goto_a

    :cond_20
    move v11, v4

    goto/16 :goto_6

    :cond_21
    move v7, v3

    move v8, v4

    goto/16 :goto_5

    :cond_22
    move v4, v6

    goto/16 :goto_1

    .line 1427
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 1199
    const/4 v3, 0x0

    .line 1200
    const/4 v11, 0x0

    .line 1201
    const/4 v9, 0x0

    .line 1203
    iget-object v10, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTempMargins:[I

    .line 1206
    invoke-static {p0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1207
    const/4 v1, 0x1

    .line 1208
    const/4 v0, 0x0

    move v7, v0

    move v8, v1

    .line 1216
    :goto_0
    const/4 v0, 0x0

    .line 1217
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1220
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1221
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1222
    invoke-direct {p0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1221
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1223
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1224
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 1223
    invoke-static {v9, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v1

    move v9, v1

    move v11, v2

    .line 1227
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1228
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1230
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1231
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1232
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1233
    invoke-direct {p0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1232
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1234
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1235
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 1234
    invoke-static {v9, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 1238
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    .line 1239
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1240
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v8

    .line 1242
    const/4 v0, 0x0

    .line 1243
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1244
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    const/4 v5, 0x0

    iget v6, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMaxButtonHeight:I

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1246
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1247
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 1248
    invoke-direct {p0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1247
    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1249
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    .line 1250
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v1

    .line 1249
    invoke-static {v9, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 1253
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContentInsetEnd()I

    move-result v1

    .line 1254
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v3, v2

    .line 1255
    const/4 v2, 0x0

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v7

    .line 1257
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1258
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1260
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1261
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1260
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1262
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 1263
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1262
    invoke-static {v9, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 1266
    :cond_3
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1267
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1269
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1270
    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1269
    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1271
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1272
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1271
    invoke-static {v9, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    .line 1275
    :cond_4
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildCount()I

    move-result v8

    .line 1276
    const/4 v0, 0x0

    move v7, v0

    move v12, v11

    move v11, v9

    :goto_1
    if-ge v7, v8, :cond_7

    .line 1277
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1278
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;

    .line 1279
    iget v0, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v11

    move v1, v12

    .line 1276
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v11, v0

    move v12, v1

    goto :goto_1

    .line 1210
    :cond_5
    const/4 v1, 0x0

    .line 1211
    const/4 v0, 0x1

    move v7, v0

    move v8, v1

    goto/16 :goto_0

    .line 1284
    :cond_6
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v3, v0

    .line 1286
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1288
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    .line 1287
    invoke-static {v11, v0}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v0

    move v1, v2

    goto :goto_2

    .line 1291
    :cond_7
    const/4 v1, 0x0

    .line 1292
    const/4 v0, 0x0

    .line 1293
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginTop:I

    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginBottom:I

    add-int v9, v2, v4

    .line 1294
    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginStart:I

    iget v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v2, v4

    .line 1295
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1296
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v7, v3, v2

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    .line 1299
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1300
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1301
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1302
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v4

    .line 1301
    invoke-static {v11, v4}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v11

    .line 1304
    :cond_8
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1305
    iget-object v5, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v7, v3, v2

    add-int/2addr v9, v0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-direct/range {v4 .. v10}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1309
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1310
    invoke-direct {p0, v4}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 1311
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1312
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v2

    .line 1311
    invoke-static {v11, v2}, Lcn/nubia/commonui/actionbar/internal/widget/ViewUtils;->combineMeasuredStates(II)I

    move-result v11

    .line 1315
    :cond_9
    add-int/2addr v1, v3

    .line 1316
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1320
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 1321
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1324
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v11

    .line 1323
    invoke-static {v1, p1, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v1

    .line 1327
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v11, 0x10

    .line 1326
    invoke-static {v0, p2, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v0

    .line 1330
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->shouldCollapse()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {p0, v1, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1331
    return-void

    :cond_b
    move v0, v11

    move v1, v12

    goto/16 :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1051
    instance-of v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    if-nez v0, :cond_1

    .line 1052
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1056
    :cond_1
    check-cast p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    .line 1057
    invoke-virtual {p1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1059
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->peekMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 1060
    :goto_1
    iget v1, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->a:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1061
    iget v1, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->a:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1062
    if-eqz v0, :cond_2

    .line 1063
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 1067
    :cond_2
    iget-boolean v0, p1, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->b:Z

    if-eqz v0, :cond_0

    .line 1068
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->postShowOverflowMenu()V

    goto :goto_0

    .line 1059
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 314
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 315
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 318
    return-void

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1039
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1041
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    .line 1042
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    iget-object v1, v1, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;->b:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->a:I

    .line 1045
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$SavedState;->b:Z

    .line 1046
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1090
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1091
    if-nez v0, :cond_0

    .line 1092
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingTouch:Z

    .line 1095
    :cond_0
    iget-boolean v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingTouch:Z

    if-nez v1, :cond_1

    .line 1096
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1097
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1098
    iput-boolean v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingTouch:Z

    .line 1102
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1103
    :cond_2
    iput-boolean v3, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mEatingTouch:Z

    .line 1106
    :cond_3
    return v2
.end method

.method public setCollapsible(Z)V
    .locals 0

    .prologue
    .line 1767
    iput-boolean p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mCollapsible:Z

    .line 1768
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->requestLayout()V

    .line 1769
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 954
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mContentInsets:Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/commonui/actionbar/internal/widget/RtlSpacingHelper;->setRelative(II)V

    .line 896
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 446
    if-eqz p1, :cond_2

    .line 447
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureLogoView()V

    .line 448
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 455
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_1
    return-void

    .line 452
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureLogoView()V

    .line 495
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 498
    :cond_1
    return-void
.end method

.method public setMenu(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 373
    if-nez p1, :cond_1

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureMenuView()V

    .line 378
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->peekMenu()Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 379
    if-eq v0, p1, :cond_0

    .line 383
    if-eqz v0, :cond_2

    .line 384
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mOuterActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 385
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;)V

    .line 388
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    if-nez v0, :cond_3

    .line 389
    new-instance v0, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    invoke-direct {v0, p0, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;-><init>(Lcn/nubia/commonui/actionbar/widget/Toolbar;Lcn/nubia/commonui/actionbar/widget/Toolbar$1;)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    .line 392
    :cond_3
    invoke-virtual {p2, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 393
    if-eqz p1, :cond_4

    .line 394
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 395
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 402
    :goto_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setPopupTheme(I)V

    .line 403
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0, p2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setPresenter(Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;)V

    .line 404
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mOuterActionMenuPresenter:Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;

    goto :goto_0

    .line 397
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v0, v3}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 398
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;->initForMenu(Landroid/content/Context;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder;)V

    .line 399
    invoke-virtual {p2, v2}, Lcn/nubia/commonui/actionbar/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 400
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mExpandedMenuPresenter:Lcn/nubia/commonui/actionbar/widget/Toolbar$a;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/widget/Toolbar$a;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;)V
    .locals 0

    .prologue
    .line 1776
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mActionMenuPresenterCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuPresenter$Callback;

    .line 1777
    iput-object p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuBuilderCallback:Lcn/nubia/commonui/actionbar/internal/view/menu/MenuBuilder$Callback;

    .line 1778
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .prologue
    .line 1783
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMinHeight:I

    .line 1785
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1786
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .prologue
    .line 724
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 725
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureNavButtonView()V

    .line 739
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 742
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 758
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 773
    if-eqz p1, :cond_2

    .line 774
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureNavButtonView()V

    .line 775
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 777
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 782
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    :cond_1
    return-void

    .line 779
    :cond_2
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 807
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->ensureNavButtonView()V

    .line 808
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    return-void
.end method

.method public setOnMenuItemClickListener(Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mOnMenuItemClickListener:Lcn/nubia/commonui/actionbar/widget/Toolbar$OnMenuItemClickListener;

    .line 876
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .prologue
    .line 294
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 295
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupTheme:I

    .line 296
    if-nez p1, :cond_1

    .line 297
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 621
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 632
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 634
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 635
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 636
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 637
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 640
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 645
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 646
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 651
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 652
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_3
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 655
    return-void

    .line 648
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 673
    iput p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextAppearance:I

    .line 674
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 677
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .prologue
    .line 697
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextColor:I

    .line 698
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 565
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 566
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 578
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 579
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 580
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 581
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 582
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 583
    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 586
    :cond_0
    iget v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextColor:I

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 591
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->addSystemView(Landroid/view/View;)V

    .line 592
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->updateChildVisibilityForExpandedActionView(Landroid/view/View;)V

    .line 597
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_3
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 601
    return-void

    .line 594
    :cond_4
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 662
    iput p2, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextAppearance:I

    .line 663
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 666
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .prologue
    .line 685
    iput p1, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextColor:I

    .line 686
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/Toolbar;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
