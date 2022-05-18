.class public Lc/c/a/g/g;
.super Lc/c/a/g/e;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/g/e<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/c/a/g/b;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/c/a/g/e;-><init>(Lc/c/a/g/b;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lc/c/a/g/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
