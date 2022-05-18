.class public Lcn/nubia/app/DialogCenterLinearLayout;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/app/DialogCenterLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, 0x3f4ccccd    # 0.8f

    iput p3, p0, Lcn/nubia/app/DialogCenterLinearLayout;->a:F

    const-string p3, "android.view.WindowManagerGlobal"

    const-string v0, "getWindowManagerService"

    const/4 v1, 0x1

    invoke-static {p3, v0, v1, v1}, Lcn/nubia/app/d;->d(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lcn/nubia/app/DialogCenterLinearLayout;->d:Ljava/lang/Object;

    sget-object p3, Lb/a/d/a;->f:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    iget v0, p0, Lcn/nubia/app/DialogCenterLinearLayout;->a:F

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcn/nubia/app/DialogCenterLinearLayout;->a:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600c8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/nubia/app/DialogCenterLinearLayout;->c:F

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    return p1
.end method

.method private getAbsScreenWidth()I
    .locals 7

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcn/nubia/app/DialogCenterLinearLayout;->d:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v4, 0x1

    aput-object v0, v5, v4

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v6, v3

    const-class v2, Landroid/graphics/Point;

    aput-object v2, v6, v4

    const-string v2, "getInitialDisplaySize"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcn/nubia/app/d;->e(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method private getDensity()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit16 v0, v0, 0xa0

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/app/DialogCenterLinearLayout;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/app/DialogCenterLinearLayout;->getAbsScreenWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/app/DialogCenterLinearLayout;->a:F

    int-to-float v0, v0

    mul-float/2addr v2, v0

    iget v0, p0, Lcn/nubia/app/DialogCenterLinearLayout;->c:F

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v2, v0

    :cond_0
    iput v2, p0, Lcn/nubia/app/DialogCenterLinearLayout;->b:F

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le p1, v1, :cond_1

    invoke-direct {p0}, Lcn/nubia/app/DialogCenterLinearLayout;->getDensity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2e

    sub-int p1, v1, p1

    :cond_1
    int-to-float v1, p2

    iget v3, p0, Lcn/nubia/app/DialogCenterLinearLayout;->b:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    float-to-int p2, v3

    :goto_0
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
