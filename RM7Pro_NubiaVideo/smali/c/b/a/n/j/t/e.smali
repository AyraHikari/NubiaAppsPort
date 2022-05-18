.class public Lc/b/a/n/j/t/e;
.super Lc/b/a/n/j/p;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/j/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/j/t/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/n/j/p<",
        "Ljava/io/InputStream;",
        ">;",
        "Ljava/lang/Object<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc/b/a/n/j/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/j/l<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/n/j/p;-><init>(Lc/b/a/n/j/l;)V

    return-void
.end method
