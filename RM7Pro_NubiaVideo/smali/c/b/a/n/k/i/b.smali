.class public Lc/b/a/n/k/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/i/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/i/k<",
        "Lc/b/a/n/k/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/k/i/a;


# direct methods
.method public constructor <init>(Lc/b/a/n/k/i/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Data must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/b/a/n/k/i/b;->a:Lc/b/a/n/k/i/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/b;->a:Lc/b/a/n/k/i/a;

    invoke-virtual {v0}, Lc/b/a/n/k/i/a;->a()Lc/b/a/n/i/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/b/a/n/i/k;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/b/a/n/k/i/b;->a:Lc/b/a/n/k/i/a;

    invoke-virtual {v0}, Lc/b/a/n/k/i/a;->b()Lc/b/a/n/i/k;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lc/b/a/n/i/k;->a()V

    :cond_1
    return-void
.end method

.method public b()Lc/b/a/n/k/i/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/b;->a:Lc/b/a/n/k/i/a;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/n/k/i/b;->b()Lc/b/a/n/k/i/a;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/k/i/b;->a:Lc/b/a/n/k/i/a;

    invoke-virtual {v0}, Lc/b/a/n/k/i/a;->c()I

    move-result v0

    return v0
.end method
