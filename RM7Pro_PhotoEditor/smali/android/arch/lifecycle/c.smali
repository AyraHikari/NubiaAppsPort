.class public Landroid/arch/lifecycle/c;
.super Landroid/arch/lifecycle/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/c$b;
    }
.end annotation


# instance fields
.field private a:La/a/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/a<",
            "Ljava/lang/Object;",
            "Landroid/arch/lifecycle/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/arch/lifecycle/a$b;

.field private final c:Landroid/arch/lifecycle/b;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/arch/lifecycle/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/b;)V
    .locals 1

    invoke-direct {p0}, Landroid/arch/lifecycle/a;-><init>()V

    new-instance v0, La/a/a/a/a;

    invoke-direct {v0}, La/a/a/a/a;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/lifecycle/c;->d:I

    iput-boolean v0, p0, Landroid/arch/lifecycle/c;->e:Z

    iput-boolean v0, p0, Landroid/arch/lifecycle/c;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/c;->g:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/arch/lifecycle/c;->c:Landroid/arch/lifecycle/b;

    sget-object p1, Landroid/arch/lifecycle/a$b;->b:Landroid/arch/lifecycle/a$b;

    iput-object p1, p0, Landroid/arch/lifecycle/c;->b:Landroid/arch/lifecycle/a$b;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->b()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/c;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/c$b;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    iget-object v4, p0, Landroid/arch/lifecycle/c;->b:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/c;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/a/a/a/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    invoke-static {v3}, Landroid/arch/lifecycle/c;->b(Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$a;

    move-result-object v3

    invoke-static {v3}, Landroid/arch/lifecycle/c;->d(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/arch/lifecycle/c;->j(Landroid/arch/lifecycle/a$b;)V

    iget-object v4, p0, Landroid/arch/lifecycle/c;->c:Landroid/arch/lifecycle/b;

    invoke-virtual {v2, v4, v3}, Landroid/arch/lifecycle/c$b;->a(Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/c;->i()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static b(Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$a;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/c$a;->b:[I

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

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_PAUSE:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_STOP:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_DESTROY:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->d()La/a/a/a/b$e;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/arch/lifecycle/c;->f:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/c$b;

    :goto_0
    iget-object v3, v2, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    iget-object v4, p0, Landroid/arch/lifecycle/c;->b:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/lifecycle/c;->f:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/a/a/a/a;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    invoke-direct {p0, v3}, Landroid/arch/lifecycle/c;->j(Landroid/arch/lifecycle/a$b;)V

    iget-object v3, p0, Landroid/arch/lifecycle/c;->c:Landroid/arch/lifecycle/b;

    iget-object v4, v2, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    invoke-static {v4}, Landroid/arch/lifecycle/c;->l(Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$a;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/arch/lifecycle/c$b;->a(Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V

    invoke-direct {p0}, Landroid/arch/lifecycle/c;->i()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static d(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/c$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

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

    :pswitch_0
    sget-object p0, Landroid/arch/lifecycle/a$b;->a:Landroid/arch/lifecycle/a$b;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/arch/lifecycle/a$b;->e:Landroid/arch/lifecycle/a$b;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/arch/lifecycle/a$b;->d:Landroid/arch/lifecycle/a$b;

    return-object p0

    :pswitch_3
    sget-object p0, Landroid/arch/lifecycle/a$b;->c:Landroid/arch/lifecycle/a$b;

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

.method private f()Z
    .locals 3

    iget-object v0, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->c()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/c$b;

    iget-object v0, v0, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    iget-object v2, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-virtual {v2}, La/a/a/a/b;->e()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/c$b;

    iget-object v2, v2, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/arch/lifecycle/c;->b:Landroid/arch/lifecycle/a$b;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static h(Landroid/arch/lifecycle/a$b;Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$b;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    move-object p0, p1

    :cond_0
    return-object p0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private j(Landroid/arch/lifecycle/a$b;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private k()V
    .locals 2

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/arch/lifecycle/c;->f()Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/arch/lifecycle/c;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/arch/lifecycle/c;->b:Landroid/arch/lifecycle/a$b;

    iget-object v1, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-virtual {v1}, La/a/a/a/b;->c()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/c$b;

    iget-object v1, v1, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_1

    invoke-direct {p0}, Landroid/arch/lifecycle/c;->a()V

    :cond_1
    iget-object v0, p0, Landroid/arch/lifecycle/c;->a:La/a/a/a/a;

    invoke-virtual {v0}, La/a/a/a/b;->e()Ljava/util/Map$Entry;

    move-result-object v0

    iget-boolean v1, p0, Landroid/arch/lifecycle/c;->f:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/arch/lifecycle/c;->b:Landroid/arch/lifecycle/a$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/c$b;

    iget-object v0, v0, Landroid/arch/lifecycle/c$b;->a:Landroid/arch/lifecycle/a$b;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroid/arch/lifecycle/c;->c()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static l(Landroid/arch/lifecycle/a$b;)Landroid/arch/lifecycle/a$a;
    .locals 3

    sget-object v0, Landroid/arch/lifecycle/c$a;->b:[I

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

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_RESUME:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_3
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_START:Landroid/arch/lifecycle/a$a;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Landroid/arch/lifecycle/a$a;->ON_CREATE:Landroid/arch/lifecycle/a$a;

    return-object p0
.end method


# virtual methods
.method public e(Landroid/arch/lifecycle/a$a;)V
    .locals 1

    invoke-static {p1}, Landroid/arch/lifecycle/c;->d(Landroid/arch/lifecycle/a$a;)Landroid/arch/lifecycle/a$b;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/c;->b:Landroid/arch/lifecycle/a$b;

    iget-boolean p1, p0, Landroid/arch/lifecycle/c;->e:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget p1, p0, Landroid/arch/lifecycle/c;->d:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroid/arch/lifecycle/c;->e:Z

    invoke-direct {p0}, Landroid/arch/lifecycle/c;->k()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/arch/lifecycle/c;->e:Z

    return-void

    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/arch/lifecycle/c;->f:Z

    return-void
.end method

.method public g(Landroid/arch/lifecycle/a$b;)V
    .locals 0

    iput-object p1, p0, Landroid/arch/lifecycle/c;->b:Landroid/arch/lifecycle/a$b;

    return-void
.end method
