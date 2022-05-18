.class Lc/b/a/n/j/k$a;
.super Lc/b/a/t/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/n/j/k;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/t/e<",
        "Lc/b/a/n/j/k$b<",
        "TA;>;TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lc/b/a/n/j/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lc/b/a/t/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/n/j/k$b;

    invoke-virtual {p0, p1, p2}, Lc/b/a/n/j/k$a;->n(Lc/b/a/n/j/k$b;Ljava/lang/Object;)V

    return-void
.end method

.method protected n(Lc/b/a/n/j/k$b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/k$b<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/b/a/n/j/k$b;->c()V

    return-void
.end method
