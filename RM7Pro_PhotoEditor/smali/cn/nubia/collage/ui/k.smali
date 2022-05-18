.class public Lcn/nubia/collage/ui/k;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/ui/k;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/ui/k;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/ui/k;->a:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/ui/k;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/ui/k;->a:Landroid/graphics/Path;

    return-void
.end method
