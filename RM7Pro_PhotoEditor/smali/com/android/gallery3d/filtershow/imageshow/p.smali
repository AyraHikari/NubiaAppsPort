.class public abstract Lcom/android/gallery3d/filtershow/imageshow/p;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# static fields
.field protected static Q:F = 80.0f


# instance fields
.field protected O:Lcom/android/gallery3d/filtershow/editors/q;

.field protected P:Lcom/android/gallery3d/filtershow/filters/w;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static setTouchPadding(F)V
    .locals 0

    sput p0, Lcom/android/gallery3d/filtershow/imageshow/p;->Q:F

    return-void
.end method


# virtual methods
.method protected abstract G(Lcom/android/gallery3d/filtershow/filters/u;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, -0x10000

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->q(Z)Landroid/graphics/Matrix;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->q(Z)Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/p;->P:Lcom/android/gallery3d/filtershow/filters/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/v;->m0()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/u;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/filtershow/imageshow/p;->G(Lcom/android/gallery3d/filtershow/filters/u;Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/q;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/p;->O:Lcom/android/gallery3d/filtershow/editors/q;

    return-void
.end method

.method public setRepresentation(Lcom/android/gallery3d/filtershow/filters/w;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/p;->P:Lcom/android/gallery3d/filtershow/filters/w;

    return-void
.end method
