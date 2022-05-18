.class public Lcn/nubia/commonui/actionbar/internal/widget/TintButton;
.super Landroid/widget/Button;
.source "TintButton.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const v6, 0x1010038

    const/4 v5, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-boolean v3, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->TINT_ATTRS:[I

    invoke-static {v3, p2, v4, p3, v5}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v0, v5, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 57
    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 63
    .end local v0    # "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 64
    .local v2, "textColors":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-nez v3, :cond_2

    .line 69
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    .line 72
    invoke-static {p1, v6}, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 83
    .local v1, "disabledTextColor":I
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 82
    invoke-static {v3, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->createDisabledStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    .end local v1    # "disabledTextColor":I
    :cond_2
    return-void

    .line 78
    :cond_3
    invoke-static {p1, v6}, Lcn/nubia/commonui/actionbar/internal/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v1

    .restart local v1    # "disabledTextColor":I
    goto :goto_0
.end method

.method private applySupportBackgroundTint()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-static {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintViewBackground(Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;)V

    .line 152
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 145
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->applySupportBackgroundTint()V

    .line 146
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 100
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->applySupportBackgroundTint()V

    .line 101
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 127
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->applySupportBackgroundTint()V

    .line 128
    return-void
.end method
