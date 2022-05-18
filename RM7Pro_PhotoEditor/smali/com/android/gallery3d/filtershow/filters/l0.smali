.class public Lcom/android/gallery3d/filtershow/filters/l0;
.super Lcom/android/gallery3d/filtershow/filters/d;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/filters/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/filters/d;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/i;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/filters/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/filters/l0;->a:Lcom/android/gallery3d/filtershow/filters/i;

    return-void
.end method


# virtual methods
.method public apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/filters/d;->apply(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getDefaultRepresentation()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/filters/l0;->a:Lcom/android/gallery3d/filtershow/filters/i;

    return-object v0
.end method

.method public useRepresentation(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/i;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/filters/l0;->a:Lcom/android/gallery3d/filtershow/filters/i;

    return-void
.end method
