.class Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;
.super Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;->f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;-><init>(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)V

    return-void
.end method


# virtual methods
.method public g(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;->f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->a(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;->f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->c(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;->f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->f(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;->f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->b(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;->f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->d(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;->f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->e(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)Landroid/widget/TextView;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setX(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$d;->f:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;->e(Lcom/android/gallery3d/filtershow/controller/SeekBarTextView;)Landroid/widget/TextView;

    move-result-object p1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setY(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$c;->e:Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/b/a/a/a;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/filtershow/controller/SeekBarTextView$b;->a(Z)V

    :cond_0
    return-void
.end method
