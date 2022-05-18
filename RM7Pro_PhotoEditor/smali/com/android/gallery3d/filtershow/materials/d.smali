.class public Lcom/android/gallery3d/filtershow/materials/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/materials/d$b;,
        Lcom/android/gallery3d/filtershow/materials/d$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lc/c/a/a;

.field private c:I

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/materials/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->b:Lc/c/a/a;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/materials/d;->c:I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/d;->d:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/32 v1, 0x1400000

    invoke-static {p1, v1, v2}, Lcom/android/gallery3d/filtershow/utils/b;->p(Ljava/lang/String;J)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "MaterialDatabaseManager"

    const-string v0, "don\'t have enough space to create database"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/d;->a:Landroid/content/Context;

    iget v1, p0, Lcom/android/gallery3d/filtershow/materials/d;->c:I

    new-instance v2, Lcom/android/gallery3d/filtershow/materials/d$b;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/materials/d$b;-><init>(Lcom/android/gallery3d/filtershow/materials/d;Lcom/android/gallery3d/filtershow/materials/d$a;)V

    const-string v0, "materialdatabase.db"

    invoke-static {p1, v0, v1, v2}, Lc/c/a/a;->b(Landroid/content/Context;Ljava/lang/String;ILc/c/a/a$c;)Lc/c/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/d;->b:Lc/c/a/a;

    :cond_1
    :goto_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/materials/d$c;

    invoke-interface {v1}, Lcom/android/gallery3d/filtershow/materials/d$c;->onContentChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->b:Lc/c/a/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lc/c/a/a;->f(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/d;->l()V
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lc/c/a/d/c/f;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/a/d/c/f;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->b:Lc/c/a/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lc/c/a/a;->l(Lc/c/a/d/c/f;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object p1

    const-string v0, "materialType"

    const-string v1, "="

    invoke-virtual {p1, v0, v1, p2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    const-string p2, "categoryType"

    invoke-virtual {p1, p2, v1, p3}, Lc/c/a/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isHotMaterial"

    invoke-virtual {p1, p3, v1, p2}, Lc/c/a/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {p1, p4, p5}, Lc/c/a/d/c/f;->g(Ljava/lang/String;Z)Lc/c/a/d/c/f;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->b(Lc/c/a/d/c/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object p1

    const-string v0, "materialType"

    const-string v1, "="

    invoke-virtual {p1, v0, v1, p2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "isHotMaterial"

    invoke-virtual {p1, v0, v1, p2}, Lc/c/a/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {p1, p3, p4}, Lc/c/a/d/c/f;->g(Ljava/lang/String;Z)Lc/c/a/d/c/f;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->b(Lc/c/a/d/c/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object p1

    const-string v0, "materialType"

    const-string v1, "="

    invoke-virtual {p1, v0, v1, p2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->b(Lc/c/a/d/c/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p1}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object p1

    const-string v1, "materialType"

    const-string v2, "="

    invoke-virtual {p1, v1, v2, p2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    const-string p2, "categoryType"

    invoke-virtual {p1, p2}, Lc/c/a/d/c/f;->d(Ljava/lang/String;)Lc/c/a/d/c/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->g(Lc/c/a/d/c/c;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/d/d/c;

    invoke-virtual {v1, p2}, Lc/c/a/d/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public g(Lc/c/a/d/c/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/d/c/c;",
            ")",
            "Ljava/util/List<",
            "Lc/c/a/d/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->b:Lc/c/a/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lc/c/a/a;->m(Lc/c/a/d/c/c;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ljava/lang/Class;Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object p1

    const-string v0, "materialType"

    const-string v1, "="

    invoke-virtual {p1, v0, v1, p2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "state"

    invoke-virtual {p1, p3, v1, p2}, Lc/c/a/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->b(Lc/c/a/d/c/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object p1

    const-string v0, "materialType"

    const-string v1, "="

    invoke-virtual {p1, v0, v1, p2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "state"

    invoke-virtual {p1, p3, v1, p2}, Lc/c/a/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    const-string p2, "categoryType"

    invoke-virtual {p1, p2, v1, p4}, Lc/c/a/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    const-string p2, "time"

    invoke-virtual {p1, p2}, Lc/c/a/d/c/f;->f(Ljava/lang/String;)Lc/c/a/d/c/f;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/materials/d;->b(Lc/c/a/d/c/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(Lc/c/a/d/c/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/a/d/c/f;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->b:Lc/c/a/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lc/c/a/a;->n(Lc/c/a/d/c/f;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->b:Lc/c/a/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lc/c/a/a;->r(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/d;->l()V
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public m(Lcom/android/gallery3d/filtershow/materials/d$c;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public n(Lcom/android/gallery3d/filtershow/materials/d$c;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public o(Ljava/lang/Object;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/d;->b:Lc/c/a/a;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lc/c/a/a;->x(Ljava/lang/Object;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/d;->l()V
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
