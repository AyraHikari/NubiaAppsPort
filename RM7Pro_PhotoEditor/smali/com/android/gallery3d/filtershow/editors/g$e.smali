.class Lcom/android/gallery3d/filtershow/editors/g$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/gallery3d/filtershow/colorpicker/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/editors/g;->p(Landroid/widget/LinearLayout;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/g;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$e;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/gallery3d/filtershow/colorpicker/a;)V
    .locals 0

    return-void
.end method

.method public setColor([F)V
    .locals 5

    const/4 v0, 0x3

    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0, p1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/g$e;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/editors/g;->e(Lcom/android/gallery3d/filtershow/editors/g;)[Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/g$e;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/editors/g;->c(Lcom/android/gallery3d/filtershow/editors/g;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$e;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/g;->g(Lcom/android/gallery3d/filtershow/editors/g;)[I

    move-result-object p1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/g$e;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/editors/g;->c(Lcom/android/gallery3d/filtershow/editors/g;)I

    move-result v2

    aput v0, p1, v2

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$e;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/g;->f(Lcom/android/gallery3d/filtershow/editors/g;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$e;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/g;->a(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/filters/h;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/filters/h;->o0(I)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/k;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/controller/k;->l(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/g$e;->a:Lcom/android/gallery3d/filtershow/editors/g;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/g;->b(Lcom/android/gallery3d/filtershow/editors/g;)Lcom/android/gallery3d/filtershow/editors/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void
.end method
