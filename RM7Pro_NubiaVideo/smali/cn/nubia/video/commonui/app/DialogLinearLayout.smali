.class public Lcn/nubia/video/commonui/app/DialogLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/video/commonui/app/DialogLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f4ccccd    # 0.8f

    .line 3
    iput p3, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->a:F

    const-string p3, "android.view.WindowManagerGlobal"

    const-string v0, "getWindowManagerService"

    const/4 v1, 0x1

    .line 4
    invoke-static {p3, v0, v1, v1}, Lb/a/b/a/i;->d(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->d:Ljava/lang/Object;

    .line 5
    sget-object p3, Lb/a/b/a/h;->a:[I

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    sget p3, Lb/a/b/a/h;->b:I

    iget v0, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->a:F

    .line 8
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->a:F

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lb/a/b/a/c;->q:I

    .line 10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->c:F

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    return p1
.end method

.method private getAbsScreenWidth()I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method private getDensity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/video/commonui/app/DialogLinearLayout;->a(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/DialogLinearLayout;->getAbsScreenWidth()I

    move-result v1

    .line 3
    iget v2, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->a:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    .line 4
    iget v0, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->c:F

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v2, v0

    :cond_0
    iput v2, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->b:F

    .line 5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le p1, v1, :cond_1

    .line 9
    invoke-direct {p0}, Lcn/nubia/video/commonui/app/DialogLinearLayout;->getDensity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x14

    sub-int p1, v1, p1

    :cond_1
    int-to-float v1, p2

    .line 10
    iget v3, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->b:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    float-to-int p2, v3

    .line 11
    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 12
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 13
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeightRatio(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1
    iput p1, p0, Lcn/nubia/video/commonui/app/DialogLinearLayout;->a:F

    :cond_0
    return-void
.end method
