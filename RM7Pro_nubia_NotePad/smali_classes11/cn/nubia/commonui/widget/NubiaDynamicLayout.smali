.class public Lcn/nubia/commonui/widget/NubiaDynamicLayout;
.super Landroid/widget/RelativeLayout;
.source "NubiaDynamicLayout.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaDynamicLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaDynamicLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaDynamicLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mTextColor:I

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->initView(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget v0, Lcn/nubia/commonui/R$layout;->nubia_dynamic_layout:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    sget v0, Lcn/nubia/commonui/R$id;->download_button:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mButton:Landroid/widget/Button;

    .line 42
    sget v0, Lcn/nubia/commonui/R$id;->nubia_progressBar:I

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    .line 43
    return-void
.end method

.method private setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 61
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mTextColor:I

    .line 62
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 82
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 51
    return-void
.end method

.method public setProgressTintList(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 74
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->getMax()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mButton:Landroid/widget/Button;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaDynamicLayout;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 58
    :cond_0
    return-void
.end method
