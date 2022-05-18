.class Lc/d/a/b/j/i/b$c;
.super Lc/d/a/b/j/i/b$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/a/b/j/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/d/a/b/j/i/b<",
        "TE;>.b;"
    }
.end annotation


# instance fields
.field final synthetic e:Lc/d/a/b/j/i/b;


# direct methods
.method private constructor <init>(Lc/d/a/b/j/i/b;)V
    .locals 0

    iput-object p1, p0, Lc/d/a/b/j/i/b$c;->e:Lc/d/a/b/j/i/b;

    invoke-direct {p0, p1}, Lc/d/a/b/j/i/b$b;-><init>(Lc/d/a/b/j/i/b;)V

    return-void
.end method

.method synthetic constructor <init>(Lc/d/a/b/j/i/b;Lc/d/a/b/j/i/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d/a/b/j/i/b$c;-><init>(Lc/d/a/b/j/i/b;)V

    return-void
.end method


# virtual methods
.method b()Lc/d/a/b/j/i/b$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/d/a/b/j/i/b$d<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/d/a/b/j/i/b$c;->e:Lc/d/a/b/j/i/b;

    iget-object v0, v0, Lc/d/a/b/j/i/b;->a:Lc/d/a/b/j/i/b$d;

    return-object v0
.end method

.method c(Lc/d/a/b/j/i/b$d;)Lc/d/a/b/j/i/b$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/j/i/b$d<",
            "TE;>;)",
            "Lc/d/a/b/j/i/b$d<",
            "TE;>;"
        }
    .end annotation

    iget-object p1, p1, Lc/d/a/b/j/i/b$d;->c:Lc/d/a/b/j/i/b$d;

    return-object p1
.end method
