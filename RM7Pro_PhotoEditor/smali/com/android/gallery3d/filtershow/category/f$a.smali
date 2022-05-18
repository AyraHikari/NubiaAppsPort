.class Lcom/android/gallery3d/filtershow/category/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/category/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/category/f;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/category/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/category/f;->b(Lcom/android/gallery3d/filtershow/category/f;)Lcom/android/gallery3d/filtershow/category/f$c;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/category/f;->b(Lcom/android/gallery3d/filtershow/category/f;)Lcom/android/gallery3d/filtershow/category/f$c;

    move-result-object p4

    invoke-interface {p4, p3}, Lcom/android/gallery3d/filtershow/category/f$c;->a(I)V

    :cond_0
    iget-object p4, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/category/f;->c(Lcom/android/gallery3d/filtershow/category/f;)I

    move-result p4

    if-ne p3, p4, :cond_1

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/category/f;->e(Lcom/android/gallery3d/filtershow/category/f;)Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_1
    instance-of p4, p2, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;

    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lcom/android/gallery3d/filtershow/category/f;->f(Lcom/android/gallery3d/filtershow/category/f;Z)Z

    check-cast p2, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;->setSelected(Z)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/category/f;->c(Lcom/android/gallery3d/filtershow/category/f;)I

    move-result p2

    if-eq p2, p3, :cond_2

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/category/f;->c(Lcom/android/gallery3d/filtershow/category/f;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;

    invoke-virtual {p1, p5}, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;->setSelected(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p1, p3}, Lcom/android/gallery3d/filtershow/category/f;->d(Lcom/android/gallery3d/filtershow/category/f;I)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/category/f;->g(Lcom/android/gallery3d/filtershow/category/f;)Lcom/android/gallery3d/filtershow/editors/n;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/category/f;->c(Lcom/android/gallery3d/filtershow/category/f;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/editors/n;->W(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/category/f;->h(Lcom/android/gallery3d/filtershow/category/f;)Lcom/android/gallery3d/filtershow/category/f$b;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/category/f;->i(Lcom/android/gallery3d/filtershow/category/f;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/category/f;->c(Lcom/android/gallery3d/filtershow/category/f;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const-string p3, "image"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/f$a;->a:Lcom/android/gallery3d/filtershow/category/f;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/category/f;->h(Lcom/android/gallery3d/filtershow/category/f;)Lcom/android/gallery3d/filtershow/category/f$b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/gallery3d/filtershow/category/f$b;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method
