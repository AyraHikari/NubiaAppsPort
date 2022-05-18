.class public Lcn/nubia/commonui/actionbar/internal/widget/TintButton;
.super Landroid/widget/Button;
.source "TintButton.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;


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

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const v4, 0x1010038

    const/4 v3, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-boolean v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->TINT_ATTRS:[I

    invoke-static {v0, p2, v1, p3, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_3

    .line 72
    invoke-static {p1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/d;->c(Landroid/content/Context;I)I

    move-result v0

    .line 83
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 82
    invoke-static {v1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 85
    :cond_2
    return-void

    .line 78
    :cond_3
    invoke-static {p1, v4}, Lcn/nubia/commonui/actionbar/internal/widget/d;->a(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private applySupportBackgroundTint()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    invoke-static {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->tintViewBackground(Landroid/view/View;Lcn/nubia/commonui/actionbar/internal/widget/f;)V

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

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/f;->a:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/f;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/f;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/f;->a:Landroid/content/res/ColorStateList;

    .line 100
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->applySupportBackgroundTint()V

    .line 101
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcn/nubia/commonui/actionbar/internal/widget/f;

    invoke-direct {v0}, Lcn/nubia/commonui/actionbar/internal/widget/f;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    .line 126
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->mBackgroundTint:Lcn/nubia/commonui/actionbar/internal/widget/f;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/f;->b:Landroid/graphics/PorterDuff$Mode;

    .line 127
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintButton;->applySupportBackgroundTint()V

    .line 128
    return-void
.end method
