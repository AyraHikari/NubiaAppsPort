.class public Lcn/nubia/camera/selfieflash/SelfieFlashView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/selfieflash/SelfieFlashView;->a:Landroid/graphics/Paint;

    const/4 p2, -0x1

    .line 29
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0}, Lcn/nubia/camera/selfieflash/SelfieFlashView;->setVisibility(I)V

    const-string v0, "SelfieFlashView"

    const-string v1, "open SelfieFlash"

    .line 44
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 2

    const/16 v0, 0x8

    .line 48
    invoke-virtual {p0, v0}, Lcn/nubia/camera/selfieflash/SelfieFlashView;->setVisibility(I)V

    const-string v0, "SelfieFlashView"

    const-string v1, "close SelfieFlash"

    .line 49
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/selfieflash/SelfieFlashView;->b:Landroid/graphics/RectF;

    const/4 v1, 0x0

    .line 35
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 36
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/SelfieFlashView;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 37
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/SelfieFlashView;->b:Landroid/graphics/RectF;

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/SelfieFlashView;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 39
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/SelfieFlashView;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/selfieflash/SelfieFlashView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
