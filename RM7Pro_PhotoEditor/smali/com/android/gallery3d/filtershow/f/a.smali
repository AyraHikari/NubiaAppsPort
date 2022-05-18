.class public Lcom/android/gallery3d/filtershow/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/android/gallery3d/filtershow/filters/t;

.field private d:Lcom/android/gallery3d/filtershow/filters/n;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/f/a;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/f/a;->b:Ljava/util/Vector;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/f/a;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->v()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/filters/t;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/f/a;->c:Lcom/android/gallery3d/filtershow/filters/t;

    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->m()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/n;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/f/a;->d:Lcom/android/gallery3d/filtershow/filters/n;

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/a;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public b()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/a;->c:Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/f/a;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/a;->d:Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/f/a;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/f/a;->a:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-object v0
.end method
