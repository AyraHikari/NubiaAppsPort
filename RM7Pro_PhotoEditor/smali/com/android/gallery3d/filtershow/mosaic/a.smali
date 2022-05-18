.class public Lcom/android/gallery3d/filtershow/mosaic/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->b:Ljava/util/List;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/gallery3d/filtershow/mosaic/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/mosaic/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/mosaic/a;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/mosaic/a;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/mosaic/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
