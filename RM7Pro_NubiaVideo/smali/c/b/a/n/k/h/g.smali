.class Lc/b/a/n/k/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/j/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/k/h/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/n/j/l<",
        "Lc/b/a/l/a;",
        "Lc/b/a/l/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)Lc/b/a/n/h/c;
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/l/a;

    invoke-virtual {p0, p1, p2, p3}, Lc/b/a/n/k/h/g;->b(Lc/b/a/l/a;II)Lc/b/a/n/h/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Lc/b/a/l/a;II)Lc/b/a/n/h/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/l/a;",
            "II)",
            "Lc/b/a/n/h/c<",
            "Lc/b/a/l/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lc/b/a/n/k/h/g$a;

    invoke-direct {p2, p1}, Lc/b/a/n/k/h/g$a;-><init>(Lc/b/a/l/a;)V

    return-object p2
.end method
