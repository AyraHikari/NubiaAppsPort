.class Lc/a/a/h/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lc/a/a/h/h;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Lc/a/a/i/c;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/a/a/h/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc/a/a/i/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lc/a/a/h/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lc/a/a/i/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc/a/a/i/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    iput-object v0, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    iput-object v0, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    iput-object p1, p0, Lc/a/a/h/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lc/a/a/h/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    return-void
.end method

.method private D()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    return-object v0
.end method

.method private J()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    return-object v0
.end method

.method private O()Z
    .locals 2

    iget-object v0, p0, Lc/a/a/h/h;->a:Ljava/lang/String;

    const-string v1, "xml:lang"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private P()Z
    .locals 2

    iget-object v0, p0, Lc/a/a/h/h;->a:Ljava/lang/String;

    const-string v1, "rdf:type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private u(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lc/a/a/h/h;->A(Ljava/lang/String;)Lc/a/a/h/h;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate property or field node \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xcb

    invoke-direct {v0, p1, v1}, Lc/a/a/c;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private v(Ljava/lang/String;)V
    .locals 3

    const-string v0, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lc/a/a/h/h;->B(Ljava/lang/String;)Lc/a/a/h/h;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' qualifier"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xcb

    invoke-direct {v0, p1, v1}, Lc/a/a/c;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private z(Ljava/util/List;Ljava/lang/String;)Lc/a/a/h/h;
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/h/h;

    invoke-virtual {v0}, Lc/a/a/h/h;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lc/a/a/h/h;
    .locals 1

    invoke-direct {p0}, Lc/a/a/h/h;->D()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lc/a/a/h/h;->z(Ljava/util/List;Ljava/lang/String;)Lc/a/a/h/h;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/lang/String;)Lc/a/a/h/h;
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lc/a/a/h/h;->z(Ljava/util/List;Ljava/lang/String;)Lc/a/a/h/h;

    move-result-object p1

    return-object p1
.end method

.method public C(I)Lc/a/a/h/h;
    .locals 1

    invoke-direct {p0}, Lc/a/a/h/h;->D()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/h/h;

    return-object p1
.end method

.method public E()I
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public G()Lc/a/a/i/c;
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/i/c;

    invoke-direct {v0}, Lc/a/a/i/c;-><init>()V

    iput-object v0, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    :cond_0
    iget-object v0, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    return-object v0
.end method

.method public H()Lc/a/a/h/h;
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->c:Lc/a/a/h/h;

    return-object v0
.end method

.method public I(I)Lc/a/a/h/h;
    .locals 1

    invoke-direct {p0}, Lc/a/a/h/h;->J()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/a/a/h/h;

    return-object p1
.end method

.method public K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public L()Z
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public M()Z
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lc/a/a/h/h;->g:Z

    return v0
.end method

.method public Q()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/a/a/h/h;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public R()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lc/a/a/h/h;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lc/a/a/h/h$a;

    invoke-direct {v1, p0, v0}, Lc/a/a/h/h$a;-><init>(Lc/a/a/h/h;Ljava/util/Iterator;)V

    return-object v1

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public S(Lc/a/a/h/h;)V
    .locals 1

    invoke-direct {p0}, Lc/a/a/h/h;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lc/a/a/h/h;->w()V

    return-void
.end method

.method public T()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    return-void
.end method

.method public U(Lc/a/a/h/h;)V
    .locals 3

    invoke-virtual {p0}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object v0

    invoke-direct {p1}, Lc/a/a/h/h;->O()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lc/a/a/i/c;->u(Z)Lc/a/a/i/c;

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Lc/a/a/h/h;->P()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lc/a/a/i/c;->w(Z)Lc/a/a/i/c;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lc/a/a/h/h;->J()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Lc/a/a/i/c;->v(Z)Lc/a/a/i/c;

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lc/a/a/h/h;->g:Z

    return-void
.end method

.method public W(Lc/a/a/i/c;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    return-void
.end method

.method protected X(Lc/a/a/h/h;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/h/h;->c:Lc/a/a/h/h;

    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/h/h;->b:Ljava/lang/String;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    :try_start_0
    new-instance v0, Lc/a/a/i/c;

    invoke-virtual {p0}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/i/b;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lc/a/a/i/c;-><init>(I)V
    :try_end_0
    .catch Lc/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Lc/a/a/i/c;

    invoke-direct {v0}, Lc/a/a/i/c;-><init>()V

    :goto_0
    new-instance v1, Lc/a/a/h/h;

    iget-object v2, p0, Lc/a/a/h/h;->a:Ljava/lang/String;

    iget-object v3, p0, Lc/a/a/h/h;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lc/a/a/h/h;-><init>(Ljava/lang/String;Ljava/lang/String;Lc/a/a/i/c;)V

    invoke-virtual {p0, v1}, Lc/a/a/h/h;->y(Lc/a/a/h/h;)V

    return-object v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/i/c;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/h/h;->b:Ljava/lang/String;

    check-cast p1, Lc/a/a/h/h;

    invoke-virtual {p1}, Lc/a/a/h/h;->K()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lc/a/a/h/h;->a:Ljava/lang/String;

    check-cast p1, Lc/a/a/h/h;

    invoke-virtual {p1}, Lc/a/a/h/h;->F()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public r(ILc/a/a/h/h;)V
    .locals 1

    invoke-virtual {p2}, Lc/a/a/h/h;->F()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/h/h;->u(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lc/a/a/h/h;->X(Lc/a/a/h/h;)V

    invoke-direct {p0}, Lc/a/a/h/h;->D()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public s(Lc/a/a/h/h;)V
    .locals 1

    invoke-virtual {p1}, Lc/a/a/h/h;->F()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/h/h;->u(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lc/a/a/h/h;->X(Lc/a/a/h/h;)V

    invoke-direct {p0}, Lc/a/a/h/h;->D()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public t(Lc/a/a/h/h;)V
    .locals 2

    invoke-virtual {p1}, Lc/a/a/h/h;->F()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/h/h;->v(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lc/a/a/h/h;->X(Lc/a/a/h/h;)V

    invoke-virtual {p1}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a/a/i/c;->x(Z)Lc/a/a/i/c;

    invoke-virtual {p0}, Lc/a/a/h/h;->G()Lc/a/a/i/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lc/a/a/i/c;->v(Z)Lc/a/a/i/c;

    invoke-direct {p1}, Lc/a/a/h/h;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    invoke-virtual {v0, v1}, Lc/a/a/i/c;->u(Z)Lc/a/a/i/c;

    invoke-direct {p0}, Lc/a/a/h/h;->J()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-direct {p1}, Lc/a/a/h/h;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    invoke-virtual {v0, v1}, Lc/a/a/i/c;->w(Z)Lc/a/a/i/c;

    invoke-direct {p0}, Lc/a/a/h/h;->J()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    invoke-virtual {v1}, Lc/a/a/i/c;->h()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lc/a/a/h/h;->J()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected w()V
    .locals 1

    iget-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public x()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/h/h;->f:Lc/a/a/i/c;

    iput-object v0, p0, Lc/a/a/h/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/h/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lc/a/a/h/h;->d:Ljava/util/List;

    iput-object v0, p0, Lc/a/a/h/h;->e:Ljava/util/List;

    return-void
.end method

.method public y(Lc/a/a/h/h;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lc/a/a/h/h;->Q()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/h/h;

    invoke-virtual {v1}, Lc/a/a/h/h;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/h/h;

    invoke-virtual {p1, v1}, Lc/a/a/h/h;->s(Lc/a/a/h/h;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/h/h;->R()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/h/h;

    invoke-virtual {v1}, Lc/a/a/h/h;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/h/h;

    invoke-virtual {p1, v1}, Lc/a/a/h/h;->t(Lc/a/a/h/h;)V
    :try_end_0
    .catch Lc/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    return-void
.end method
