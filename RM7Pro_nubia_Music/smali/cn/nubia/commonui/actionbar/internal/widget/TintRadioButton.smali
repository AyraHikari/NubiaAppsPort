.class public Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;
.super Landroid/widget/RadioButton;
.source "TintRadioButton.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010107

    aput v2, v0, v1

    sput-object v0, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const v0, 0x101007e

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-boolean v0, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->SHOULD_BE_USED:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;->TINT_ATTRS:[I

    invoke-static {v0, p2, v1, p3, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;

    move-result-object v0

    .line 51
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->recycle()V

    .line 54
    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintTypedArray;->getTintManager()Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public setButtonDrawable(I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;->mTintManager:Lcn/nubia/commonui/actionbar/internal/widget/TintManager;

    invoke-virtual {v0, p1}, Lcn/nubia/commonui/actionbar/internal/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/TintRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    goto :goto_0
.end method
