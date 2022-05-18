.class Lc/c/a/g/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lc/c/a/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/g/e<",
            "*>;"
        }
    .end annotation
.end field

.field c:Lc/c/a/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/g/a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/g/a;->a:Z

    invoke-virtual {p0, p1}, Lc/c/a/g/a;->c(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/g/b;
    .locals 1

    iget-object v0, p0, Lc/c/a/g/a;->b:Lc/c/a/g/e;

    iget-object v0, v0, Lc/c/a/g/e;->a:Lc/c/a/g/b;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/a;->b:Lc/c/a/g/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lc/c/a/g/a;->a:Z

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, v0, Lc/c/a/g/e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lc/c/a/g/a;->b:Lc/c/a/g/e;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lc/c/a/g/e;

    if-eqz v0, :cond_1

    check-cast p1, Lc/c/a/g/e;

    iput-object p1, p0, Lc/c/a/g/a;->b:Lc/c/a/g/e;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/c/a/g/a;->a:Z

    goto :goto_0

    :cond_1
    new-instance v0, Lc/c/a/g/e;

    sget-object v1, Lc/c/a/g/b;->d:Lc/c/a/g/b;

    invoke-direct {v0, v1, p1}, Lc/c/a/g/e;-><init>(Lc/c/a/g/b;Ljava/lang/Object;)V

    iput-object v0, p0, Lc/c/a/g/a;->b:Lc/c/a/g/e;

    :goto_0
    return-void
.end method
