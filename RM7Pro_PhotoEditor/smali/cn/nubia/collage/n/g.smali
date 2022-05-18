.class public Lcn/nubia/collage/n/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private volatile a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/nubia/collage/n/e;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d/a/b/j/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcn/nubia/collage/n/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lc/d/a/b/j/e;",
            ">;",
            "Lcn/nubia/collage/n/e;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/nubia/collage/n/g;->a:Ljava/util/List;

    iput-object p3, p0, Lcn/nubia/collage/n/g;->b:Lcn/nubia/collage/n/e;

    iput-object p2, p0, Lcn/nubia/collage/n/g;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/d/a/b/j/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/n/g;->c:Ljava/util/List;

    return-object v0
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/n/g;->a:Ljava/util/List;

    return-object v0
.end method

.method declared-synchronized c(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/collage/n/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/n/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcn/nubia/collage/n/g;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/collage/n/g;->b:Lcn/nubia/collage/n/e;

    invoke-interface {p1}, Lcn/nubia/collage/n/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
