.class public Landroid/arch/lifecycle/f;
.super Landroid/arch/lifecycle/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/f$b;
    }
.end annotation


# instance fields
.field private a:La/a/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/b/a<",
            "Landroid/arch/lifecycle/d;",
            "Landroid/arch/lifecycle/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/lifecycle/c$b;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/arch/lifecycle/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/arch/lifecycle/c;-><init>()V

    .line 2
    new-instance v0, La/a/a/b/a;

    invoke-direct {v0}, La/a/a/b/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/arch/lifecycle/f;->d:I

    .line 4
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->e:Z

    .line 5
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->f:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->g:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/lifecycle/f;->c:Ljava/lang/ref/WeakReference;

    .line 8
    sget-object p1, Landroid/arch/lifecycle/c$b;->b:Landroid/arch/lifecycle/c$b;

    iput-object p1, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    return-void
.end method

.method private d(Landroid/arch/lifecycle/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    .line 2
    invoke-virtual {v0}, La/a/a/b/b;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$b;

    .line 6
    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    iget-object v4, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v2, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    invoke-static {v3}, Landroid/arch/lifecycle/f;->f(Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$a;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/arch/lifecycle/f;->h(Landroid/arch/lifecycle/c$a;)Landroid/arch/lifecycle/c$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/f;->o(Landroid/arch/lifecycle/c$b;)V

    .line 10
    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/f$b;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V

    .line 11
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/c$b;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    invoke-virtual {v0, p1}, La/a/a/b/a;->j(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/f$b;

    iget-object p1, p1, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/arch/lifecycle/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/c$b;

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    invoke-static {v1, p1}, Landroid/arch/lifecycle/f;->l(Landroid/arch/lifecycle/c$b;Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$b;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/arch/lifecycle/f;->l(Landroid/arch/lifecycle/c$b;Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$b;

    move-result-object p1

    return-object p1
.end method

.method private static f(Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$a;
    .locals 3

    .line 1
    sget-object v0, Landroid/arch/lifecycle/f$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_1
    sget-object p0, Landroid/arch/lifecycle/c$a;->ON_PAUSE:Landroid/arch/lifecycle/c$a;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Landroid/arch/lifecycle/c$a;->ON_STOP:Landroid/arch/lifecycle/c$a;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Landroid/arch/lifecycle/c$a;->ON_DESTROY:Landroid/arch/lifecycle/c$a;

    return-object p0

    .line 7
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private g(Landroid/arch/lifecycle/e;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    .line 2
    invoke-virtual {v0}, La/a/a/b/b;->e()La/a/a/b/b$e;

    move-result-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$b;

    .line 6
    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    iget-object v4, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, v2, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/f;->o(Landroid/arch/lifecycle/c$b;)V

    .line 9
    iget-object v3, v2, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    invoke-static {v3}, Landroid/arch/lifecycle/f;->q(Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$a;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/arch/lifecycle/f$b;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V

    .line 10
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->n()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static h(Landroid/arch/lifecycle/c$a;)Landroid/arch/lifecycle/c$b;
    .locals 3

    .line 1
    sget-object v0, Landroid/arch/lifecycle/f$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    sget-object p0, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/c$b;

    return-object p0

    .line 4
    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/c$b;->e:Landroid/arch/lifecycle/c$b;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/c$b;->d:Landroid/arch/lifecycle/c$b;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/c$b;->c:Landroid/arch/lifecycle/c$b;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    invoke-virtual {v0}, La/a/a/b/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    invoke-virtual {v0}, La/a/a/b/b;->c()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/f$b;

    iget-object v0, v0, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    .line 3
    iget-object v2, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    invoke-virtual {v2}, La/a/a/b/b;->f()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$b;

    iget-object v2, v2, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static l(Landroid/arch/lifecycle/c$b;Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private m(Landroid/arch/lifecycle/c$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    .line 3
    iget-boolean p1, p0, Landroid/arch/lifecycle/f;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Landroid/arch/lifecycle/f;->d:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->e:Z

    .line 5
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->p()V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroid/arch/lifecycle/f;->e:Z

    return-void

    .line 7
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroid/arch/lifecycle/f;->f:Z

    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private o(Landroid/arch/lifecycle/c$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private p()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/e;

    if-nez v0, :cond_0

    const-string v0, "LifecycleRegistry"

    const-string v1, "LifecycleOwner is garbage collected, you shouldn\'t try dispatch new events from it."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 4
    iput-boolean v2, p0, Landroid/arch/lifecycle/f;->f:Z

    .line 5
    iget-object v1, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    iget-object v2, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    invoke-virtual {v2}, La/a/a/b/b;->c()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/f$b;

    iget-object v2, v2, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 6
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/f;->d(Landroid/arch/lifecycle/e;)V

    .line 7
    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    invoke-virtual {v1}, La/a/a/b/b;->f()Ljava/util/Map$Entry;

    move-result-object v1

    .line 8
    iget-boolean v2, p0, Landroid/arch/lifecycle/f;->f:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f$b;

    iget-object v1, v1, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 10
    invoke-direct {p0, v0}, Landroid/arch/lifecycle/f;->g(Landroid/arch/lifecycle/e;)V

    goto :goto_0

    .line 11
    :cond_2
    iput-boolean v2, p0, Landroid/arch/lifecycle/f;->f:Z

    return-void
.end method

.method private static q(Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$a;
    .locals 3

    .line 1
    sget-object v0, Landroid/arch/lifecycle/f$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 4
    :cond_2
    sget-object p0, Landroid/arch/lifecycle/c$a;->ON_RESUME:Landroid/arch/lifecycle/c$a;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Landroid/arch/lifecycle/c$a;->ON_START:Landroid/arch/lifecycle/c$a;

    return-object p0

    .line 6
    :cond_4
    :goto_0
    sget-object p0, Landroid/arch/lifecycle/c$a;->ON_CREATE:Landroid/arch/lifecycle/c$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/d;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    sget-object v1, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/c$b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/arch/lifecycle/c$b;->b:Landroid/arch/lifecycle/c$b;

    .line 2
    :goto_0
    new-instance v0, Landroid/arch/lifecycle/f$b;

    invoke-direct {v0, p1, v1}, Landroid/arch/lifecycle/f$b;-><init>(Landroid/arch/lifecycle/d;Landroid/arch/lifecycle/c$b;)V

    .line 3
    iget-object v1, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    invoke-virtual {v1, p1, v0}, La/a/a/b/a;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/f$b;

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/f;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/e;

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget v2, p0, Landroid/arch/lifecycle/f;->d:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Landroid/arch/lifecycle/f;->e:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v3

    .line 6
    :goto_2
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->e(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/c$b;

    move-result-object v4

    .line 7
    iget v5, p0, Landroid/arch/lifecycle/f;->d:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/arch/lifecycle/f;->d:I

    .line 8
    :goto_3
    iget-object v5, v0, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    .line 9
    invoke-virtual {v4, p1}, La/a/a/b/a;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 10
    iget-object v4, v0, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/f;->o(Landroid/arch/lifecycle/c$b;)V

    .line 11
    iget-object v4, v0, Landroid/arch/lifecycle/f$b;->a:Landroid/arch/lifecycle/c$b;

    invoke-static {v4}, Landroid/arch/lifecycle/f;->q(Landroid/arch/lifecycle/c$b;)Landroid/arch/lifecycle/c$a;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/arch/lifecycle/f$b;->a(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/c$a;)V

    .line 12
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->n()V

    .line 13
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->e(Landroid/arch/lifecycle/d;)Landroid/arch/lifecycle/c$b;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    .line 14
    invoke-direct {p0}, Landroid/arch/lifecycle/f;->p()V

    .line 15
    :cond_6
    iget p1, p0, Landroid/arch/lifecycle/f;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroid/arch/lifecycle/f;->d:I

    return-void
.end method

.method public b()Landroid/arch/lifecycle/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->b:Landroid/arch/lifecycle/c$b;

    return-object v0
.end method

.method public c(Landroid/arch/lifecycle/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/arch/lifecycle/f;->a:La/a/a/b/a;

    invoke-virtual {v0, p1}, La/a/a/b/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public i(Landroid/arch/lifecycle/c$a;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/arch/lifecycle/f;->h(Landroid/arch/lifecycle/c$a;)Landroid/arch/lifecycle/c$b;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->m(Landroid/arch/lifecycle/c$b;)V

    return-void
.end method

.method public k(Landroid/arch/lifecycle/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/f;->m(Landroid/arch/lifecycle/c$b;)V

    return-void
.end method
