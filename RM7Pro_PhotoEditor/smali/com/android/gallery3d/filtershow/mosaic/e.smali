.class public Lcom/android/gallery3d/filtershow/mosaic/e;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->c:I

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->c:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->a:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;

    :goto_0
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "image"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget p3, p0, Lcom/android/gallery3d/filtershow/mosaic/e;->c:I

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/mosaic/MosaicImageView;->setSelected(Z)V

    return-object p2
.end method
