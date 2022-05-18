.class public final Lcom/a/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/e$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/a/a/a/d;)Lcom/a/a/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/a/d<",
            "TT;>;)",
            "Lcom/a/a/a/d<",
            "TT;>;"
        }
    .end annotation

    .line 97
    instance-of v0, p0, Lcom/a/a/a/e$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/a/a/a/e$a;

    invoke-static {p0}, Lcom/a/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/a/a/a/d;

    invoke-direct {v0, p0}, Lcom/a/a/a/e$a;-><init>(Lcom/a/a/a/d;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
