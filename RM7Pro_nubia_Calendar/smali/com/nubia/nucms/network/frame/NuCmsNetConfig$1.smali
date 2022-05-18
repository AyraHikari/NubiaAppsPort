.class Lcom/nubia/nucms/network/frame/NuCmsNetConfig$1;
.super Ljava/lang/Object;
.source "NuCmsNetConfig.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/nucms/network/frame/NuCmsNetConfig;->initDefaultComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "nubiaCmsSdk-"


# instance fields
.field IDS:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;


# direct methods
.method constructor <init>(Lcom/nubia/nucms/network/frame/NuCmsNetConfig;)V
    .locals 2
    .param p1, "this$0"    # Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig$1;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig$1;->IDS:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nubiaCmsSdk-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetConfig$1;->IDS:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
