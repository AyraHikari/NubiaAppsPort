.class abstract Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;
.super Lc/b/a/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field protected d:Landroid/graphics/Paint;

.field protected e:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)V
    .locals 4

    invoke-direct {p0}, Lc/b/a/a/a;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->e:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lc/b/a/a/a;->e(Landroid/view/animation/Interpolator;)V

    const/16 p1, 0xc8

    invoke-virtual {p0, p1}, Lc/b/a/a/a;->d(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->d:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->d:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->d:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->d:Landroid/graphics/Paint;

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/16 v2, 0xbb

    const/16 v3, 0xfc

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    return-void
.end method


# virtual methods
.method protected c(F)V
    .locals 0

    return-void
.end method

.method public abstract g(Landroid/graphics/Canvas;)V
.end method

.method public h(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->e:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;

    return-void
.end method
