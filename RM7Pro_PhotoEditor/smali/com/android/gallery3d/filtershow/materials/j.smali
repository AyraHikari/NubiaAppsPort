.class public abstract Lcom/android/gallery3d/filtershow/materials/j;
.super Lcom/android/gallery3d/filtershow/materials/g;
.source ""


# instance fields
.field protected e:Landroid/content/Context;

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/android/gallery3d/filtershow/materials/g;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/j;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/j;->g()V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/j;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/j;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/gallery3d/filtershow/materials/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/g;->c:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
