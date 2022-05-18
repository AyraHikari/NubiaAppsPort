.class Lcom/android/gallery3d/filtershow/editors/g$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/g;->p(Landroid/widget/LinearLayout;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/gallery3d/filtershow/editors/g;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    iput p2, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->a:I

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/editors/g;->d(Lcom/android/gallery3d/filtershow/editors/g;I)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/g;->e(Lcom/android/gallery3d/filtershow/editors/g;)[Landroid/widget/Button;

    move-result-object p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->a:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/g;->f(Lcom/android/gallery3d/filtershow/editors/g;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/g;->a(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/filters/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/editors/g;->a(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/filters/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/filters/h;->o0(I)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/controller/k;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/editors/g;->g(Lcom/android/gallery3d/filtershow/editors/g;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/editors/g;->c(Lcom/android/gallery3d/filtershow/editors/g;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/controller/k;->l(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/g;->b(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/editors/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/g;->h(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/colorpicker/ColorHueView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorHueView;->setColor([F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/g;->i(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/colorpicker/ColorSVRectView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorSVRectView;->setColor([F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/g;->j(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorOpacityView;->setColor([F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/g$d;->b:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/g;->k(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/colorpicker/ColorCompareView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/colorpicker/ColorCompareView;->setOrigColor([F)V

    return-void
.end method
