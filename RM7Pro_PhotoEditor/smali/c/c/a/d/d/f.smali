.class public Lc/c/a/d/d/f;
.super Lc/c/a/d/d/a;
.source ""


# static fields
.field private static final l:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lc/c/a/d/d/f;->l:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lc/c/a/d/d/f;->m:Ljava/util/HashSet;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lc/c/a/d/d/a;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/c/a/d/d/f;->j:Z

    iput-boolean p1, p0, Lc/c/a/d/d/f;->k:Z

    iget-object p1, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/d/f;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-super {p0, p1}, Lc/c/a/d/d/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lc/c/a/d/d/f;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :cond_2
    return-object v0
.end method

.method public l()Z
    .locals 3

    iget-boolean v0, p0, Lc/c/a/d/d/f;->j:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/d/d/f;->j:Z

    iget-object v1, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    const-class v2, Lc/c/a/d/a/f;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lc/c/a/d/d/f;->m:Ljava/util/HashSet;

    iget-object v2, p0, Lc/c/a/d/d/f;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lc/c/a/d/d/f;->k:Z

    :cond_1
    iget-boolean v0, p0, Lc/c/a/d/d/f;->k:Z

    return v0
.end method

.method public m(Ljava/lang/Object;J)V
    .locals 3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lc/c/a/d/d/f;->l:Ljava/util/HashSet;

    iget-object v2, p0, Lc/c/a/d/d/f;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    iget-object p2, p0, Lc/c/a/d/d/a;->f:Ljava/lang/reflect/Method;

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p2, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
