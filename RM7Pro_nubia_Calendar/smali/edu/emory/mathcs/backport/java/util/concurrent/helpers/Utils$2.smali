.class Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final this$0:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;


# direct methods
.method constructor <init>(Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;)V
    .locals 0
    .param p1, "this$0"    # Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;

    .prologue
    .line 211
    iput-object p1, p0, Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$2;->this$0:Ledu/emory/mathcs/backport/java/util/concurrent/helpers/Utils$SunPerfProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lsun/misc/Perf;->getPerf()Lsun/misc/Perf;

    move-result-object v0

    return-object v0
.end method
