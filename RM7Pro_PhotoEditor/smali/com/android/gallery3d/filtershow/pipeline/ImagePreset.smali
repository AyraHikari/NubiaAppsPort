.class public Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    if-eqz v1, :cond_1

    :goto_1
    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->B()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    return-void
.end method

.method private G(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/r;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/r;->m0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "offline"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/materials/h;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/h;->h()Lcom/android/gallery3d/filtershow/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/d/a;->c()I

    move-result p1

    sget v0, Lcom/android/gallery3d/filtershow/d/a;->f:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private H(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/p;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/p;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/p;->t0()I

    move-result p1

    const v0, 0x7f0e012b

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private I(Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/a0;->v0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/a0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/materials/l;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/l;->j()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static P(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/filters/x;)Z
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->Q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static Q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private p(I)Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/x;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public A()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    return v0
.end method

.method public C(Lcom/android/gallery3d/filtershow/filters/a;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/gallery3d/filtershow/filters/a;",
            ")",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/filters/a;->a(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public D()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->S()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public F()Z
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->S()Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->S()Z

    move-result v2

    if-nez v2, :cond_2

    return v5

    :cond_2
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->S()Z

    move-result v2

    if-nez v2, :cond_3

    return v5

    :cond_3
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->S()Z

    move-result v1

    if-nez v1, :cond_0

    return v5

    :cond_4
    return v2
.end method

.method public K()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public L(Landroid/util/JsonReader;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->i(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN FILTER! "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImagePreset"

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/c/a;->f(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/filters/x;->F(Landroid/util/JsonReader;)V

    instance-of v0, v1, Lcom/android/gallery3d/filtershow/filters/j;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/j;->s0()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->r()Ljava/util/Vector;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/x;

    instance-of v5, v4, Lcom/android/gallery3d/filtershow/filters/j;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-virtual {v4, v1}, Lcom/android/gallery3d/filtershow/filters/j;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/j;->n0()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/filtershow/filters/j;->v0(Landroid/graphics/Path;)V

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/j;->o0()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/filters/j;->w0(Landroid/graphics/Path;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    const/4 p1, 0x1

    return p1
.end method

.method public M(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/c/a;->e()Z

    move-result v0

    const-string v1, "\""

    const-string v2, "ImagePreset"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading preset: \""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/util/JsonReader;

    invoke-direct {v4, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v4}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->L(Landroid/util/JsonReader;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V

    return v3

    :cond_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/gallery3d/filtershow/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "parsing the filter parameters:"

    invoke-static {v2, p1, v0}, Lcom/android/gallery3d/filtershow/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public N(Lcom/android/gallery3d/filtershow/filters/x;)I
    .locals 3

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v0, :cond_3

    :goto_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v1, p1, :cond_b

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v0, :cond_5

    :goto_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v1, p1, :cond_b

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v0, :cond_7

    :goto_4
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v1, p1, :cond_b

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v0, :cond_9

    :goto_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v1, p1, :cond_b

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    :goto_6
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-static {v2, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->P(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v2, :cond_b

    move-object v2, p1

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/f;->n0()V

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x1f4

    invoke-virtual {v0, p1, v2}, Lcom/android/gallery3d/filtershow/filters/a;->U(Ljava/lang/String;I)V

    goto :goto_7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    return v1
.end method

.method public O(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    iget-boolean v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    iget-boolean v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    return v0

    :cond_4
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    if-eqz v1, :cond_6

    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/x;->T(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v2

    if-nez v2, :cond_5

    return v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public R(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    return-void
.end method

.method public S(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    return-void
.end method

.method public T(ZLandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public V()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\\\\\ showFilters -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " filters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImagePreset"

    invoke-static {v2, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/x;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/x;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/// showFilters -- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/gallery3d/filtershow/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public W(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->X(Lcom/android/gallery3d/filtershow/filters/x;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public X(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->w(Lcom/android/gallery3d/filtershow/filters/x;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/j;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/y;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->g(Ljava/util/Vector;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Y(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V
    .locals 3

    iget-object v0, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p1, "ImagePreset"

    const-string v0, "Updating a preset with an incompatible one"

    invoke-static {p1, v0}, Lcom/android/gallery3d/filtershow/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/x;->j0(Lcom/android/gallery3d/filtershow/filters/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Z(Landroid/util/JsonWriter;Ljava/lang/String;)V
    .locals 3

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    :try_start_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/filters/d0;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/filters/x;->U(Landroid/util/JsonWriter;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "ImagePreset"

    const-string v0, "Error encoding JASON"

    invoke-static {p2, v0, p1}, Lcom/android/gallery3d/filtershow/c/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public a(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 6

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/d0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/d0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/d0;->k0()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->K()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->h(B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p1, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->p(I)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    goto/16 :goto_e

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    move v0, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->K()I

    move-result v1

    if-ge v0, v1, :cond_16

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->n(I)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v1

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->S()Z

    move-result v1

    if-nez v1, :cond_16

    :goto_3
    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    if-ne v0, v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->G(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    if-eqz v0, :cond_16

    :goto_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_6
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/c1;

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    move-result v0

    :goto_5
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :cond_7
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-nez v0, :cond_15

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v0, :cond_8

    goto/16 :goto_d

    :cond_8
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/m;

    if-eqz v0, :cond_b

    move v0, v2

    :goto_6
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v5

    if-eq v5, v4, :cond_9

    instance-of v1, v1, Lcom/android/gallery3d/filtershow/filters/m;

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    if-eqz v0, :cond_16

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    if-ne v0, v1, :cond_14

    move v0, v2

    :goto_8
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_f

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v5}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v5

    if-ne v5, v1, :cond_e

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_c
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_d
    move v0, v3

    goto :goto_9

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    move v0, v2

    :goto_9
    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    :goto_a
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v5

    if-eq v5, v4, :cond_10

    instance-of v1, v1, Lcom/android/gallery3d/filtershow/filters/m;

    if-nez v1, :cond_10

    goto :goto_b

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    :goto_b
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result p1

    if-eqz p1, :cond_16

    move p1, v2

    :goto_c
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_16

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_14
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->e:Z

    if-eqz v0, :cond_16

    goto/16 :goto_4

    :cond_15
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->I(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_3

    :cond_16
    :goto_e
    const/4 p1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_f
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_1b

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v4

    if-ne v4, v3, :cond_17

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-object p1, v1

    goto :goto_f

    :cond_17
    instance-of v4, v1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-eqz v4, :cond_18

    :goto_10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_f

    :cond_18
    instance-of v4, v1, Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v4, :cond_19

    goto :goto_10

    :cond_19
    instance-of v4, v1, Lcom/android/gallery3d/filtershow/filters/c1;

    if-eqz v4, :cond_1a

    goto :goto_10

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1c

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d(Landroid/graphics/Bitmap;IILcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->f(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->p(I)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/e;->a(Lcom/android/gallery3d/filtershow/filters/x;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/pipeline/e;->i()I

    :cond_0
    return-object p1
.end method

.method public d(Landroid/graphics/Bitmap;IILcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;
    .locals 11

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move-object v10, p1

    :goto_0
    if-ge p2, p3, :cond_7

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/a0;

    if-nez v3, :cond_6

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/f0;

    if-nez v3, :cond_6

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/t;

    if-nez v3, :cond_6

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/filters/a;->n(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v3, v2

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/f;->getValue()I

    move-result v3

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/gallery3d/filtershow/filters/a;->U(Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p4, v2, v10}, Lcom/android/gallery3d/filtershow/pipeline/e;->a(Lcom/android/gallery3d/filtershow/filters/x;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    :goto_1
    invoke-virtual {p4}, Lcom/android/gallery3d/filtershow/pipeline/e;->k()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v10

    :cond_6
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result p2

    if-lez p2, :cond_8

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->I()[I

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->G()[Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->F()[I

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->E()[I

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->H()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v2, v10

    invoke-static/range {v2 .. v9}, Lcom/android/gallery3d/filtershow/filters/ImageFilterNubiaAlgorithm;->nativeApplyFilter(Landroid/graphics/Bitmap;II[Landroid/graphics/Bitmap;[I[I[Ljava/lang/String;[I)V

    :cond_8
    if-eq p1, v10, :cond_9

    invoke-virtual {p4, p1}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    :cond_9
    move-object p1, v10

    :cond_a
    return-object p1
.end method

.method public e(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->s()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/h;->e(Ljava/util/Collection;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/pipeline/e;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method public f(Landroid/graphics/Bitmap;Lcom/android/gallery3d/filtershow/pipeline/e;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->y()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p2, v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/e;->a(Lcom/android/gallery3d/filtershow/filters/x;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public g()Z
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->b0()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/x;->i0()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public h(B)Z
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->S()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method i(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    const-string v0, "ROTATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/z;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/z;-><init>()V

    return-object p1

    :cond_0
    const-string v0, "MIRROR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/s;-><init>()V

    return-object p1

    :cond_1
    const-string v0, "STRAIGHTEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/b0;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/b0;-><init>()V

    return-object p1

    :cond_2
    const-string v0, "CROP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/j;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/j;-><init>()V

    return-object p1

    :cond_3
    const-string v0, "CROP_STRAIGHTEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p1, Lcom/android/gallery3d/filtershow/filters/y;

    invoke-direct {p1}, Lcom/android/gallery3d/filtershow/filters/y;-><init>()V

    return-object p1

    :cond_4
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/a;->o(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    iget-boolean v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    iget-boolean v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_4

    :cond_3
    return v0

    :cond_4
    move v1, v0

    :goto_0
    iget-object v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_a

    iget-object v2, p1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/x;

    instance-of v5, v2, Lcom/android/gallery3d/filtershow/filters/z;

    if-nez v5, :cond_6

    instance-of v5, v2, Lcom/android/gallery3d/filtershow/filters/s;

    if-nez v5, :cond_6

    instance-of v5, v2, Lcom/android/gallery3d/filtershow/filters/j;

    if-nez v5, :cond_6

    instance-of v5, v2, Lcom/android/gallery3d/filtershow/filters/b0;

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    move v5, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v5, v3

    :goto_2
    if-nez v5, :cond_7

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    if-nez v6, :cond_7

    :goto_3
    move v3, v0

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->c:Z

    if-nez v5, :cond_8

    iget-boolean v5, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->d:Z

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz v3, :cond_9

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/filtershow/filters/x;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    return v3
.end method

.method public k(Lcom/android/gallery3d/filtershow/state/d;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/d0;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/gallery3d/filtershow/state/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->L()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/gallery3d/filtershow/state/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/state/c;->e(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/state/d;->c(Ljava/util/Vector;)V

    return-void
.end method

.method public l()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/filters/r;

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public n(I)Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/x;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->w(Lcom/android/gallery3d/filtershow/filters/x;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public q(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->Q(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public r()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    return-object v0
.end method

.method public s()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->Z(Landroid/util/JsonWriter;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public u()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/filters/t;

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public w(Lcom/android/gallery3d/filtershow/filters/x;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-static {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->P(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public x(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-static {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->P(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public y()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/x;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/a0;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/f0;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/t;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public z()Lcom/android/gallery3d/filtershow/filters/x;
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
