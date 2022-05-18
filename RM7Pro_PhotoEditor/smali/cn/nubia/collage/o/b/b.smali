.class public Lcn/nubia/collage/o/b/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/o/b/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/collage/o/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/o/b/b;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/o/b/b;->c:I

    iput v0, p0, Lcn/nubia/collage/o/b/b;->b:I

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/o/b/b;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/o/b/b;->c:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/collage/o/b/b;I)I
    .locals 0

    iput p1, p0, Lcn/nubia/collage/o/b/b;->c:I

    return p1
.end method

.method static synthetic c(Lcn/nubia/collage/o/b/b;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/o/b/b;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/collage/o/b/b;)I
    .locals 0

    iget p0, p0, Lcn/nubia/collage/o/b/b;->b:I

    return p0
.end method

.method static synthetic e(Lcn/nubia/collage/o/b/b;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/o/b/b;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/collage/o/b/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    return-object p0
.end method

.method private j()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    iget v1, p0, Lcn/nubia/collage/o/b/b;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public g(Landroid/content/Context;Lcn/nubia/collage/o/b/l$b;)V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/o/b/b;->a:Ljava/util/Map;

    iget v1, p0, Lcn/nubia/collage/o/b/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    iget v0, p0, Lcn/nubia/collage/o/b/b;->c:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/o/b/b;->a:Ljava/util/Map;

    iget v2, p0, Lcn/nubia/collage/o/b/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/collage/o/b/k;

    new-instance v2, Lcn/nubia/collage/o/b/b$a;

    invoke-direct {v2, p0, p2}, Lcn/nubia/collage/o/b/b$a;-><init>(Lcn/nubia/collage/o/b/b;Lcn/nubia/collage/o/b/l$b;)V

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/collage/n/f;->q(Lcn/nubia/collage/o/b/k;Ljava/lang/String;Lcn/nubia/collage/n/h$c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    iget v1, p0, Lcn/nubia/collage/o/b/b;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcn/nubia/collage/o/b/b$b;

    invoke-direct {v1, p0, p2}, Lcn/nubia/collage/o/b/b$b;-><init>(Lcn/nubia/collage/o/b/b;Lcn/nubia/collage/o/b/l$b;)V

    invoke-static {v0, p1, v1}, Lcn/nubia/collage/o/b/l;->a(Ljava/lang/String;Landroid/content/Context;Lcn/nubia/collage/o/b/l$b;)V

    :goto_0
    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/b/b;->c:I

    return v0
.end method

.method public i()Lcn/nubia/collage/o/b/k;
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/o/b/b;->a:Ljava/util/Map;

    iget v1, p0, Lcn/nubia/collage/o/b/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/collage/o/b/k;

    return-object v0
.end method

.method public k()Z
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/collage/o/b/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/collage/n/f;->C(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/collage/o/b/b;->i()Lcn/nubia/collage/o/b/k;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/collage/o/b/b;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/collage/n/f;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcn/nubia/collage/o/b/b;->c:I

    if-eq p1, v0, :cond_1

    iput v0, p0, Lcn/nubia/collage/o/b/b;->b:I

    iput p1, p0, Lcn/nubia/collage/o/b/b;->c:I

    :cond_1
    iget-object p1, p0, Lcn/nubia/collage/o/b/b;->a:Ljava/util/Map;

    iget v0, p0, Lcn/nubia/collage/o/b/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/collage/o/b/k;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/k;->z()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string p1, "Collage"

    const-string v0, "ERROER!!!! setCurrentTemplate mResFilePaths is null or empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcn/nubia/collage/o/b/b;->d:Ljava/util/List;

    :cond_0
    return-void
.end method
