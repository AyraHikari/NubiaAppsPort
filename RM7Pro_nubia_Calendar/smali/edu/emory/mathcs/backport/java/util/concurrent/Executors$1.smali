.class Ledu/emory/mathcs/backport/java/util/concurrent/Executors$1;
.super Ljava/lang/Object;
.source "Executors.java"

# interfaces
.implements Ledu/emory/mathcs/backport/java/util/concurrent/Callable;


# instance fields
.field private final val$action:Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>(Ljava/security/PrivilegedAction;)V
    .locals 0
    .param p1, "val$action"    # Ljava/security/PrivilegedAction;

    .prologue
    .line 367
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$1;->val$action:Ljava/security/PrivilegedAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Ledu/emory/mathcs/backport/java/util/concurrent/Executors$1;->val$action:Ljava/security/PrivilegedAction;

    invoke-interface {v0}, Ljava/security/PrivilegedAction;->run()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
