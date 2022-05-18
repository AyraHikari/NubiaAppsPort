.class public Lcn/nubia/camera/aimoon/TeleSearchView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    .line 16
    iput p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->b:I

    const/16 p2, 0x32

    .line 17
    iput p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    .line 22
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->d:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->d:Landroid/graphics/Paint;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 27
    iget-object p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060064

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 32
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 33
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    .line 34
    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->b:I

    int-to-float p3, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 35
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 36
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 37
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 39
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/TeleSearchView;->getWidth()I

    move-result p2

    iget p4, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->b:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 40
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 41
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 42
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 44
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->b:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/TeleSearchView;->getHeight()I

    move-result p4

    iget p5, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->b:I

    sub-int/2addr p4, p5

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 45
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 46
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 47
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 49
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/TeleSearchView;->getWidth()I

    move-result p2

    iget p4, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->b:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/TeleSearchView;->getHeight()I

    move-result p4

    iget p5, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->b:I

    sub-int/2addr p4, p5

    int-to-float p4, p4

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 50
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 51
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    int-to-float p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 52
    iget-object p1, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->a:Landroid/graphics/Path;

    iget p2, p0, Lcn/nubia/camera/aimoon/TeleSearchView;->c:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 54
    invoke-virtual {p0}, Lcn/nubia/camera/aimoon/TeleSearchView;->invalidate()V

    return-void
.end method
