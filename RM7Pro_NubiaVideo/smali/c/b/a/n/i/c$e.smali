.class Lc/b/a/n/i/c$e;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lc/b/a/n/i/h<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/c;


# direct methods
.method public constructor <init>(Lc/b/a/n/c;Lc/b/a/n/i/h;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            "Lc/b/a/n/i/h<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-",
            "Lc/b/a/n/i/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    iput-object p1, p0, Lc/b/a/n/i/c$e;->a:Lc/b/a/n/c;

    return-void
.end method

.method static synthetic a(Lc/b/a/n/i/c$e;)Lc/b/a/n/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/n/i/c$e;->a:Lc/b/a/n/c;

    return-object p0
.end method
