.class public Lcom/android/gallery3d/filtershow/imageshow/n;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""


# instance fields
.field private O:Lcom/android/gallery3d/filtershow/filters/s;

.field private P:Lcom/android/gallery3d/filtershow/imageshow/h$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/imageshow/n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/s;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/n;->O:Lcom/android/gallery3d/filtershow/filters/s;

    new-instance p1, Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/imageshow/h$b;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/n;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    return-void
.end method


# virtual methods
.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/n;->O:Lcom/android/gallery3d/filtershow/filters/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/s;->k0()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getFinalRepresentation()Lcom/android/gallery3d/filtershow/filters/s;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/n;->O:Lcom/android/gallery3d/filtershow/filters/s;

    return-object v0
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
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/n;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/n;->O:Lcom/android/gallery3d/filtershow/filters/s;

    invoke-static {v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/h;->t(Lcom/android/gallery3d/filtershow/imageshow/h$b;Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/n;->P:Lcom/android/gallery3d/filtershow/imageshow/h$b;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/h;->j(Lcom/android/gallery3d/filtershow/imageshow/h$b;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;II)Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/m;)V
    .locals 0

    return-void
.end method

.method public setFilterMirrorRepresentation(Lcom/android/gallery3d/filtershow/filters/s;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/s;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/n;->O:Lcom/android/gallery3d/filtershow/filters/s;

    return-void
.end method
