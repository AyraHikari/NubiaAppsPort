.class public Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;
.super Landroid/widget/TextView;
.source "CompatTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Lcn/nubia/commonui/R$styleable;->CompatTextView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    sget v1, Lcn/nubia/commonui/R$styleable;->CompatTextView_android_textAppearance:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    if-eq v1, v3, :cond_1

    .line 55
    sget-object v0, Lcn/nubia/commonui/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    sget v1, Lcn/nubia/commonui/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget v1, Lcn/nubia/commonui/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setAllCaps(Z)V

    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    :cond_1
    sget-object v0, Lcn/nubia/commonui/R$styleable;->CompatTextView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    sget v1, Lcn/nubia/commonui/R$styleable;->CompatTextView_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    sget v1, Lcn/nubia/commonui/R$styleable;->CompatTextView_textAllCaps:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setAllCaps(Z)V

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    return-void
.end method


# virtual methods
.method public setAllCaps(Z)V
    .locals 2

    .prologue
    .line 71
    if-eqz p1, :cond_0

    new-instance v0, Lcn/nubia/commonui/actionbar/internal/text/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/commonui/actionbar/internal/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    sget-object v0, Lcn/nubia/commonui/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    sget v1, Lcn/nubia/commonui/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    sget v1, Lcn/nubia/commonui/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/CompatTextView;->setAllCaps(Z)V

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    return-void
.end method
