.class public Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->i(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->i(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->e(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->f(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I

    move-result v1

    invoke-direct {p3, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    check-cast p2, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;

    :goto_0
    iget-object p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->g(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->setNewMaterial(Z)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->h(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->setDownloadState(I)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->i(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->j(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I

    move-result v1

    invoke-static {p3, v0, v1}, Lcom/android/gallery3d/filtershow/materials/a;->c(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I

    move-result p3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v2}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->k(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)I

    move-result v2

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->l(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->b(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;->a:Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;->i(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c$a;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c$a;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialMoreActivity$c;)V

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
