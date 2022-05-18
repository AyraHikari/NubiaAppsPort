.class Lcom/android/gallery3d/filtershow/editors/j$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/editors/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/editors/j;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/editors/j;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

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

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Item click iserase "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p5}, Lcom/android/gallery3d/filtershow/editors/j;->S(Lcom/android/gallery3d/filtershow/editors/j;)Z

    move-result p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, " pos "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "drawd"

    invoke-static {p5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/editors/j;->Y(Lcom/android/gallery3d/filtershow/editors/j;)I

    move-result p4

    if-ne p3, p4, :cond_0

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/editors/j;->S(Lcom/android/gallery3d/filtershow/editors/j;)Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_0
    iget-object p4, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/editors/j;->U(Lcom/android/gallery3d/filtershow/editors/j;)Landroid/widget/ImageView;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p4, p5}, Lcom/android/gallery3d/filtershow/editors/j;->T(Lcom/android/gallery3d/filtershow/editors/j;Z)Z

    iget-object p4, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p4}, Lcom/android/gallery3d/filtershow/editors/j;->a0(Lcom/android/gallery3d/filtershow/editors/j;)Lcom/android/gallery3d/filtershow/mosaic/e;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/gallery3d/filtershow/mosaic/e;->a(I)V

    instance-of p4, p2, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;

    if-eqz p4, :cond_2

    check-cast p2, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;->setSelected(Z)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/editors/j;->Y(Lcom/android/gallery3d/filtershow/editors/j;)I

    move-result p2

    if-eq p2, p3, :cond_1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/editors/j;->Y(Lcom/android/gallery3d/filtershow/editors/j;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;

    invoke-virtual {p1, p5}, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;->setSelected(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1, p3}, Lcom/android/gallery3d/filtershow/editors/j;->Z(Lcom/android/gallery3d/filtershow/editors/j;I)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/j$d;->a:Lcom/android/gallery3d/filtershow/editors/j;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/j;->Y(Lcom/android/gallery3d/filtershow/editors/j;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/editors/j;->k0(I)V

    :cond_2
    return-void
.end method
