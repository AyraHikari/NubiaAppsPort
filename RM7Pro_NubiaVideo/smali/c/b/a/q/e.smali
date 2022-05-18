.class public Lc/b/a/q/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/q/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/q/f<",
        "TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/j/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/j/l<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/k/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation
.end field

.field private final c:Lc/b/a/q/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/q/b<",
            "TT;TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/n/j/l;Lc/b/a/n/k/j/c;Lc/b/a/q/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/l<",
            "TA;TT;>;",
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;",
            "Lc/b/a/q/b<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ModelLoader must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/b/a/q/e;->a:Lc/b/a/n/j/l;

    const-string p1, "Transcoder must not be null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lc/b/a/q/e;->b:Lc/b/a/n/k/j/c;

    const-string p1, "DataLoadProvider must not be null"

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lc/b/a/q/e;->c:Lc/b/a/q/b;

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/e;->c:Lc/b/a/q/b;

    invoke-interface {v0}, Lc/b/a/q/b;->a()Lc/b/a/n/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lc/b/a/n/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/j/l<",
            "TA;TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/e;->a:Lc/b/a/n/j/l;

    return-object v0
.end method

.method public c()Lc/b/a/n/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/f<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/e;->c:Lc/b/a/q/b;

    invoke-interface {v0}, Lc/b/a/q/b;->c()Lc/b/a/n/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lc/b/a/n/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/e;->c:Lc/b/a/q/b;

    invoke-interface {v0}, Lc/b/a/q/b;->d()Lc/b/a/n/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/b/a/n/k/j/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/e;->b:Lc/b/a/n/k/j/c;

    return-object v0
.end method

.method public f()Lc/b/a/n/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/e<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/e;->c:Lc/b/a/q/b;

    invoke-interface {v0}, Lc/b/a/q/b;->f()Lc/b/a/n/e;

    move-result-object v0

    return-object v0
.end method
