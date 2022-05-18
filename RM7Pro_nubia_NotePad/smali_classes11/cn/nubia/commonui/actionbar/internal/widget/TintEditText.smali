.class public Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;
.super Landroid/widget/EditText;
.source "TintEditText.java"

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
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x101006e

    invoke-direct {p0, v0, p2, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-boolean v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->TINT_ATTRS:[I

    invoke-static {v1, p2, v2, p3, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 56
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 61
    .end local v0    # "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    :cond_1
    return-void
.end method

.method private applySupportBackgroundTint()V
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-static {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintViewBackground(Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;)V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 121
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->applySupportBackgroundTint()V

    .line 122
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

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
    .line 115
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

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
    .line 72
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 76
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->applySupportBackgroundTint()V

    .line 77
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 103
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintEditText;->applySupportBackgroundTint()V

    .line 104
    return-void
.end method
