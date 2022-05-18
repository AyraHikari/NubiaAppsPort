.class public Lcom/android/gallery3d/filtershow/imageshow/r;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# instance fields
.field private O:Lcom/android/gallery3d/filtershow/filters/z;

.field private P:Lcom/android/gallery3d/filtershow/imageshow/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/imageshow/r;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/z;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/z;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->O:Lcom/android/gallery3d/filtershow/filters/z;

    new-instance p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    return-void
.end method


# virtual methods
.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->O:Lcom/android/gallery3d/filtershow/filters/z;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/z;->n0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getFinalRepresentation()Lcom/android/gallery3d/filtershow/filters/z;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->O:Lcom/android/gallery3d/filtershow/filters/z;

    return-object v0
.end method

.method public getLocalValue()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->O:Lcom/android/gallery3d/filtershow/filters/z;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/z;->m0()Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/z$b;->t()I

    move-result v0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->t()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->O:Lcom/android/gallery3d/filtershow/filters/z;

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/h;->t(Lcom/android/gallery3d/filtershow/imageshow/h$b;Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/h;->j(Lcom/android/gallery3d/filtershow/imageshow/h$b;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/r;)V
    .locals 0

    return-void
.end method

.method public setFilterRotateRepresentation(Lcom/android/gallery3d/filtershow/filters/z;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/z;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/z;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/r;->O:Lcom/android/gallery3d/filtershow/filters/z;

    return-void
.end method
