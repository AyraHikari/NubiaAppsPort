.class public Lcn/nubia/commonui/widget/DialogCenterLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DialogCenterLinearLayout.java"


# instance fields
.field private mMaxHeight:F

.field private mMaxHeightRatio:F

.field private mSplitMaxHeight:F

.field private mWindowManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mMaxHeightRatio:F

    .line 38
    const-string v0, "android.view.WindowManagerGlobal"

    const-string v1, "getWindowManagerService"

    invoke-static {v0, v1, v2, v2}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mWindowManager:Ljava/lang/Object;

    .line 40
    sget-object v0, Lcn/nubia/commonui/R$styleable;->nubiaDialogLinearLayout:[I

    .line 41
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    sget v1, Lcn/nubia/commonui/R$styleable;->nubiaDialogLinearLayout_maxHeightRatio:I

    iget v2, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mMaxHeightRatio:F

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mMaxHeightRatio:F

    .line 45
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_center_dialog_min_height:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mSplitMaxHeight:F

    .line 50
    return-void
.end method

.method private getAbsScreenWidth()I
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 91
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 92
    iget-object v0, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mWindowManager:Ljava/lang/Object;

    const-string v1, "getInitialDisplaySize"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    aput-object v6, v4, v7

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    const-class v3, Landroid/graphics/Point;

    aput-object v3, v5, v7

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcn/nubia/commonui/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    iget v0, v6, Landroid/graphics/Point;->x:I

    return v0
.end method

.method private getDensity()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 99
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    return v0
.end method

.method private getScreenHeight(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 81
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 82
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method private getScreenWidth(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 86
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 87
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private isLandScreen()Z
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->getResources()Landroid/content/res/Resources;

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
    .locals 6

    .prologue
    .line 54
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 55
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->getAbsScreenWidth()I

    move-result v2

    .line 57
    iget v1, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mMaxHeightRatio:F

    int-to-float v0, v0

    mul-float/2addr v0, v1

    .line 58
    iget v1, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mSplitMaxHeight:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget v0, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mSplitMaxHeight:F

    :cond_0
    iput v0, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mMaxHeight:F

    .line 60
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 65
    if-le v0, v2, :cond_1

    .line 66
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->getDensity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2e

    sub-int v0, v2, v0

    .line 69
    :cond_1
    int-to-float v2, v1

    iget v5, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mMaxHeight:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_2

    .line 70
    :goto_0
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 71
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 73
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 74
    return-void

    .line 69
    :cond_2
    iget v1, p0, Lcn/nubia/commonui/widget/DialogCenterLinearLayout;->mMaxHeight:F

    float-to-int v1, v1

    goto :goto_0
.end method
