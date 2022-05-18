.class Lorg/apache/commons/logging/impl/LogFactoryImpl$1;
.super Ljava/lang/Object;
.source "LogFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 667
    invoke-static {}, Lorg/apache/commons/logging/impl/LogFactoryImpl;->access$000()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
