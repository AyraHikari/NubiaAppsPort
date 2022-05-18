.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$2;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/Callable;


# instance fields
.field private final val$action:Ljava/security/PrivilegedExceptionAction;


# direct methods
.method constructor <init>(Ljava/security/PrivilegedExceptionAction;)V
    .locals 0
    .param p1, "val$action"    # Ljava/security/PrivilegedExceptionAction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$2;->val$action:Ljava/security/PrivilegedExceptionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$2;->val$action:Ljava/security/PrivilegedExceptionAction;

    invoke-interface {v0}, Ljava/security/PrivilegedExceptionAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
