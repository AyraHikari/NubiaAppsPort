.class Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/MaterialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;Landroid/content/Context;I)V
    .locals 4

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0801c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->c(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0801c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d$a;-><init>(Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;Lcom/android/gallery3d/filtershow/materials/MaterialActivity;I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {p1, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0075

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f08019d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a(Landroid/view/ViewGroup;Landroid/content/Context;I)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/content/Context;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->e(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)[[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->e(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)[[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p3

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->e(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)[[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    aget-object v3, v3, v2

    const/16 v4, 0x96

    invoke-static {v3, v1, v4}, Lcom/android/gallery3d/filtershow/materials/a;->c(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0b0073

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f08019c

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v7}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->f(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)[[Z

    move-result-object v7

    aget-object v7, v7, p3

    aget-boolean v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->setNewMaterial(Z)V

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v7}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->g(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)[[I

    move-result-object v7

    aget-object v7, v7, p3

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->setDownloadState(I)V

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v4}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->d(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-static {v7}, Lcom/android/gallery3d/filtershow/materials/MaterialActivity;->c(Lcom/android/gallery3d/filtershow/materials/MaterialActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v4, v7, v3}, Lcom/android/gallery3d/filtershow/materials/MaterialImageView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/MaterialActivity$d;->a:Lcom/android/gallery3d/filtershow/materials/MaterialActivity;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
