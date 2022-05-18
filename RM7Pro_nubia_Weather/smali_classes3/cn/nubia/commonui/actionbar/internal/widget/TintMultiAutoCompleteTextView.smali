.class public Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "TintMultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

.field private mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-static {p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    sget-boolean v1, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->TINT_ATTRS:[I

    invoke-static {v1, p2, v2, p3, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 58
    .local v0, "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 60
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    const/4 v2, -0x1

    .line 62
    invoke-virtual {v0, v3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 64
    :cond_0
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 69
    .end local v0    # "a":Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;
    :cond_2
    return-void
.end method

.method private applySupportBackgroundTint()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-static {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintViewBackground(Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    .line 138
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->applySupportBackgroundTint()V

    .line 139
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

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
    .line 132
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 93
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->applySupportBackgroundTint()V

    .line 94
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    .line 119
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 120
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintMultiAutoCompleteTextView;->applySupportBackgroundTint()V

    .line 121
    return-void
.end method
