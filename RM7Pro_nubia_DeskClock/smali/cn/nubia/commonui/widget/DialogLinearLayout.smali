.class public Lcn/nubia/commonui/widget/DialogLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DialogLinearLayout.java"


# instance fields
.field private mMaxHeight:F

.field private mMaxHeightRatio:F

.field private mSplitMaxHeight:F

.field private mWindowManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mMaxHeightRatio:F

    .line 38
    const-string v1, "android.view.WindowManagerGlobal"

    const-string v2, "getWindowManagerService"

    invoke-static {v1, v2, v3, v3}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mWindowManager:Ljava/lang/Object;

    .line 40
    sget-object v1, Lcn/nubia/commonui/R$styleable;->nubiaDialogLinearLayout:[I

    .line 41
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "ta":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 43
    sget v1, Lcn/nubia/commonui/R$styleable;->nubiaDialogLinearLayout_maxHeightRatio:I

    iget v2, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mMaxHeightRatio:F

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mMaxHeightRatio:F

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$dimen;->nubia_center_dialog_min_height:I

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mSplitMaxHeight:F

    .line 49
    return-void
.end method

.method private getAbsScreenWidth()I
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DialogLinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    iget v1, v0, Landroid/graphics/Point;->x:I

    return v1
.end method

.method private getDensity()I
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DialogLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 104
    .local v0, "metric":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v1, v1, 0xa0

    return v1
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 87
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    return v1
.end method

.method private getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 92
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method private isLandScreen()Z
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DialogLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DialogLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9}, Lcn/nubia/commonui/widget/DialogLinearLayout;->getScreenHeight(Landroid/content/Context;)I

    move-result v6

    .line 60
    .local v6, "sceenHeight":I
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DialogLinearLayout;->getAbsScreenWidth()I

    move-result v0

    .line 62
    .local v0, "absScreenWidth":I
    iget v9, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mMaxHeightRatio:F

    int-to-float v10, v6

    mul-float v1, v9, v10

    .line 63
    .local v1, "calHeight":F
    iget v9, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mSplitMaxHeight:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_0

    iget v1, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mSplitMaxHeight:F

    .end local v1    # "calHeight":F
    :cond_0
    iput v1, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mMaxHeight:F

    .line 65
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 66
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 67
    .local v3, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 68
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 70
    .local v8, "widthSize":I
    if-le v8, v0, :cond_1

    .line 71
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DialogLinearLayout;->getDensity()I

    move-result v9

    mul-int/lit8 v9, v9, 0x14

    sub-int v8, v0, v9

    .line 74
    :cond_1
    int-to-float v9, v3

    iget v10, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mMaxHeight:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_2

    .line 75
    :goto_0
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 76
    .local v4, "maxHeightMeasureSpec":I
    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 78
    .local v5, "maxWidthMeasureSpec":I
    invoke-super {p0, v5, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 79
    return-void

    .line 74
    .end local v4    # "maxHeightMeasureSpec":I
    .end local v5    # "maxWidthMeasureSpec":I
    :cond_2
    iget v9, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mMaxHeight:F

    float-to-int v3, v9

    goto :goto_0
.end method

.method public setMaxHeightRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 52
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 53
    iput p1, p0, Lcn/nubia/commonui/widget/DialogLinearLayout;->mMaxHeightRatio:F

    .line 55
    :cond_0
    return-void
.end method
