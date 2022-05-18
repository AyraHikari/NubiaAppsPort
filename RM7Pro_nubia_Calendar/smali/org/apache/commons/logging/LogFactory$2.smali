.class Lorg/apache/commons/logging/LogFactory$2;
.super Ljava/lang/Object;
.source "LogFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field private final val$classLoader:Ljava/lang/ClassLoader;

.field private final val$factoryClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "val$factoryClass"    # Ljava/lang/String;
    .param p2, "val$classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/logging/LogFactory$2;->val$factoryClass:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/commons/logging/LogFactory$2;->val$classLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lorg/apache/commons/logging/LogFactory$2;->val$factoryClass:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/logging/LogFactory$2;->val$classLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lorg/apache/commons/logging/LogFactory;->createFactory(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
