.class Lcom/nubia/nucms/network/frame/NuCmsNetClient$1;
.super Ljava/lang/Object;
.source "NuCmsNetClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/nucms/network/frame/NuCmsNetClient;->executeAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

.field final synthetic val$request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;


# direct methods
.method constructor <init>(Lcom/nubia/nucms/network/frame/NuCmsNetClient;Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient$1;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    iput-object p2, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient$1;->val$request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient$1;->this$0:Lcom/nubia/nucms/network/frame/NuCmsNetClient;

    iget-object v1, p0, Lcom/nubia/nucms/network/frame/NuCmsNetClient$1;->val$request:Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;

    invoke-virtual {v0, v1}, Lcom/nubia/nucms/network/frame/NuCmsNetClient;->execute(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;

    .line 83
    return-void
.end method
