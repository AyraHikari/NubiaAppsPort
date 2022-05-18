.class Lcom/a/a/b/j;
.super Lcom/a/a/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/d<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/a/a/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/b/e<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/b/d;Lcom/a/a/b/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/d<",
            "TE;>;",
            "Lcom/a/a/b/e<",
            "+TE;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/a/a/b/c;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/a/a/b/j;->a:Lcom/a/a/b/d;

    .line 37
    iput-object p2, p0, Lcom/a/a/b/j;->b:Lcom/a/a/b/e;

    return-void
.end method

.method constructor <init>(Lcom/a/a/b/d;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/b/d<",
            "TE;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-static {p2}, Lcom/a/a/b/e;->a([Ljava/lang/Object;)Lcom/a/a/b/e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/a/a/b/j;-><init>(Lcom/a/a/b/d;Lcom/a/a/b/e;)V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/a/a/b/j;->b:Lcom/a/a/b/e;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/e;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method a()Lcom/a/a/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/d<",
            "TE;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/a/a/b/j;->a:Lcom/a/a/b/d;

    return-object v0
.end method

.method public a(I)Lcom/a/a/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/a/a/b/n<",
            "TE;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/a/a/b/j;->b:Lcom/a/a/b/e;

    invoke-virtual {v0, p1}, Lcom/a/a/b/e;->a(I)Lcom/a/a/b/n;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/a/a/b/j;->b:Lcom/a/a/b/e;

    invoke-virtual {v0, p1}, Lcom/a/a/b/e;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/a/a/b/j;->a(I)Lcom/a/a/b/n;

    move-result-object p1

    return-object p1
.end method
