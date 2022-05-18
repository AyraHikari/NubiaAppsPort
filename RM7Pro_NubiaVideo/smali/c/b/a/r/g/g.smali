.class public Lc/b/a/r/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/r/g/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/r/g/d<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/r/g/f$a;

.field private b:Lc/b/a/r/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/r/g/c<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc/b/a/r/g/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/r/g/g;->a:Lc/b/a/r/g/f$a;

    return-void
.end method


# virtual methods
.method public a(ZZ)Lc/b/a/r/g/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lc/b/a/r/g/c<",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lc/b/a/r/g/g;->b:Lc/b/a/r/g/c;

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lc/b/a/r/g/f;

    iget-object p2, p0, Lc/b/a/r/g/g;->a:Lc/b/a/r/g/f$a;

    invoke-direct {p1, p2}, Lc/b/a/r/g/f;-><init>(Lc/b/a/r/g/f$a;)V

    iput-object p1, p0, Lc/b/a/r/g/g;->b:Lc/b/a/r/g/c;

    .line 3
    :cond_1
    iget-object p1, p0, Lc/b/a/r/g/g;->b:Lc/b/a/r/g/c;

    return-object p1

    .line 4
    :cond_2
    :goto_0
    invoke-static {}, Lc/b/a/r/g/e;->c()Lc/b/a/r/g/c;

    move-result-object p1

    return-object p1
.end method
