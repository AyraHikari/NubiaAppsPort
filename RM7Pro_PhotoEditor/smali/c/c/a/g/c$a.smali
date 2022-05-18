.class Lc/c/a/g/c$a;
.super Lc/c/a/g/c$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/g/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/g/c$e<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lc/c/a/g/c;


# direct methods
.method constructor <init>(Lc/c/a/g/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/g/c$a;->b:Lc/c/a/g/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lc/c/a/g/c$e;-><init>(Lc/c/a/g/c$a;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/c$a;->b:Lc/c/a/g/c;

    invoke-static {v0}, Lc/c/a/g/c;->b(Lc/c/a/g/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lc/c/a/g/c$a;->b:Lc/c/a/g/c;

    iget-object v1, p0, Lc/c/a/g/c$e;->a:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/c/a/g/c;->f([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/g/c;->c(Lc/c/a/g/c;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
