.class Lcom/nubia/nucms/network/frame/NuCmsNetClient$2;
.super Ljava/lang/Object;
.source "NuCmsNetClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/nucms/network/frame/NuCmsNetClient;->performAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

.field final synthetic val$request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;


# direct methods
.method constructor <init>(Lcom/nubia/nucms/network/frame/NuCmsNetClient;Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient$2;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    iput-object p2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient$2;->val$request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient$2;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient$2;->val$request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->execute(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
