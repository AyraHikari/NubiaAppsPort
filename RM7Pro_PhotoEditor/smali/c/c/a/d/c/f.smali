.class public Lc/c/a/d/c/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/c/f$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/String;

.field protected c:Lc/c/a/d/c/i;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/d/c/f$a;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/c/a/d/c/f;->e:I

    iput v0, p0, Lc/c/a/d/c/f;->f:I

    iput-object p1, p0, Lc/c/a/d/c/f;->a:Ljava/lang/Class;

    invoke-static {p1}, Lc/c/a/d/d/i;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/c/f;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/Class;)Lc/c/a/d/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc/c/a/d/c/f;"
        }
    .end annotation

    new-instance v0, Lc/c/a/d/c/f;

    invoke-direct {v0, p0}, Lc/c/a/d/c/f;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/c/f;->c:Lc/c/a/d/c/i;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/d/c/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/i;

    return-object p0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/d/c/f;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lc/c/a/d/c/c;
    .locals 1

    new-instance v0, Lc/c/a/d/c/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/d/c/c;-><init>(Lc/c/a/d/c/f;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(I)Lc/c/a/d/c/f;
    .locals 0

    iput p1, p0, Lc/c/a/d/c/f;->e:I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lc/c/a/d/c/f;
    .locals 2

    iget-object v0, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    new-instance v1, Lc/c/a/d/c/f$a;

    invoke-direct {v1, p0, p1}, Lc/c/a/d/c/f$a;-><init>(Lc/c/a/d/c/f;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g(Ljava/lang/String;Z)Lc/c/a/d/c/f;
    .locals 2

    iget-object v0, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    new-instance v1, Lc/c/a/d/c/f$a;

    invoke-direct {v1, p0, p1, p2}, Lc/c/a/d/c/f$a;-><init>(Lc/c/a/d/c/f;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;
    .locals 0

    invoke-static {p1, p2, p3}, Lc/c/a/d/c/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/i;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/c/f;->c:Lc/c/a/d/c/i;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/d/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/d/c/f;->c:Lc/c/a/d/c/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/d/c/i;->d()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/d/c/f;->c:Lc/c/a/d/c/i;

    invoke-virtual {v1}, Lc/c/a/d/c/i;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, " ORDER BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/c/a/d/c/f;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/d/c/f$a;

    invoke-virtual {v2}, Lc/c/a/d/c/f$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lc/c/a/d/c/f;->e:I

    if-lez v1, :cond_2

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/d/c/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " OFFSET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/d/c/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
