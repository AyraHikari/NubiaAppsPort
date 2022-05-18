.class Lc/b/a/n/i/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/b/a/n/c;",
            "Ljava/lang/ref/WeakReference<",
            "Lc/b/a/n/i/h<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lc/b/a/n/i/h<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lc/b/a/n/c;",
            "Ljava/lang/ref/WeakReference<",
            "Lc/b/a/n/i/h<",
            "*>;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lc/b/a/n/i/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/i/c$d;->a:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lc/b/a/n/i/c$d;->b:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/c$d;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lc/b/a/n/i/c$e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/b/a/n/i/c$d;->a:Ljava/util/Map;

    invoke-static {v0}, Lc/b/a/n/i/c$e;->a(Lc/b/a/n/i/c$e;)Lc/b/a/n/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
