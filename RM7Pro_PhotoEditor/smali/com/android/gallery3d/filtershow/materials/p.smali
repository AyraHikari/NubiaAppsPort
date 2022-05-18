.class public Lcom/android/gallery3d/filtershow/materials/p;
.super Lcom/android/gallery3d/filtershow/materials/o;
.source ""


# instance fields
.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/gallery3d/filtershow/materials/o;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/p;->i:Ljava/util/HashMap;

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/p;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/p;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private l(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/p;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/o;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/p;->i:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/p;->k()V

    return-void
.end method

.method public m()Landroid/graphics/Bitmap;
    .locals 1

    const-string v0, "path"

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/p;->l(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
