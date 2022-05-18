.class Lcom/nubia/nucms/api/NuCmsSdk$2;
.super Lcom/nubia/nucms/network/frame/NuCmsNetListener;
.source "NuCmsSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nubia/nucms/api/NuCmsSdk;->requestJsonBeanAsync(Lcom/nubia/nucms/network/http/request/NuCmsHttpStringRequest;Ljava/util/List;Lcom/nubia/nucms/api/NuCmsModelCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nubia/nucms/network/frame/NuCmsNetListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nubia/nucms/api/NuCmsSdk;

.field final synthetic val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;


# direct methods
.method constructor <init>(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nubia/nucms/api/NuCmsSdk;

    .prologue
    .line 606
    iput-object p1, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iput-object p2, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    invoke-direct {p0}, Lcom/nubia/nucms/network/frame/NuCmsNetListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<Ljava/lang/String;>;"
    const-string v0, "NuCmsSdk"

    const-string v1, "requestNews onCancel."

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getHttpStatus()Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v1, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getHttpStatus()Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->getCode()I

    move-result v2

    .line 681
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getHttpStatus()Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 680
    invoke-static {v0, v1, v2, v3}, Lcom/nubia/nucms/api/NuCmsSdk;->access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v1, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    sget-object v2, Lcom/nubia/nucms/api/NuCmsCallbackError;->STATUS_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v2}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v2

    sget-object v3, Lcom/nubia/nucms/api/NuCmsCallbackError;->STATUS_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 684
    invoke-virtual {v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-static {v0, v1, v2, v3}, Lcom/nubia/nucms/api/NuCmsSdk;->access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onEnd(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 715
    .local p1, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<Ljava/lang/String;>;"
    const-string v0, "NuCmsSdk"

    const-string v1, "requestNews onEnd."

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public onFailure(Lcom/nubia/nucms/network/exception/NuCmsHttpException;Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 4
    .param p1, "e"    # Lcom/nubia/nucms/network/exception/NuCmsHttpException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/exception/NuCmsHttpException;",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p2, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<Ljava/lang/String;>;"
    const-string v0, "NuCmsSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNews onFailure."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p2}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getHttpStatus()Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v1, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    invoke-virtual {p2}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getHttpStatus()Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->getCode()I

    move-result v2

    .line 667
    invoke-virtual {p2}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getHttpStatus()Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nubia/nucms/network/http/params/NuCmsHttpStatus;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-static {v0, v1, v2, v3}, Lcom/nubia/nucms/api/NuCmsSdk;->access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v1, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    sget-object v2, Lcom/nubia/nucms/api/NuCmsCallbackError;->STATUS_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v2}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v2

    sget-object v3, Lcom/nubia/nucms/api/NuCmsCallbackError;->STATUS_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 670
    invoke-virtual {v3}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-static {v0, v1, v2, v3}, Lcom/nubia/nucms/api/NuCmsSdk;->access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onLoading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V
    .locals 2
    .param p2, "total"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<Ljava/lang/String;>;"
    const-string v0, "NuCmsSdk"

    const-string v1, "requestNews onLoading."

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public onRedirect(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V
    .locals 2
    .param p2, "max"    # I
    .param p3, "times"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<Ljava/lang/String;>;"
    const-string v0, "NuCmsSdk"

    const-string v1, "requestNews onRedirect."

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public onRetry(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;II)V
    .locals 2
    .param p2, "max"    # I
    .param p3, "times"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<Ljava/lang/String;>;"
    const-string v0, "NuCmsSdk"

    const-string v1, "requestNews onRetry."

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public onStart(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<Ljava/lang/String;>;"
    const-string v0, "NuCmsSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNews onStart."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method public onSuccess(Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p1, "response":Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;, "Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse<Ljava/lang/String;>;"
    const-string v5, "NuCmsSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestNews onSuccess."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/nubia/nucms/utils/NuCmsLog;->iDebugLines(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Lcom/nubia/nucms/network/http/params/NuCmsHttpResponse;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 618
    .local v3, "jsonStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    if-eqz v5, :cond_0

    .line 620
    :try_start_0
    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    .line 621
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v4, v5, v6

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 622
    .local v4, "type":Ljava/lang/reflect/ParameterizedType;
    const/4 v0, 0x0

    .line 624
    .local v0, "bean":Lcom/nubia/nucms/bean/NuCmsStatusBean;, "TT;"
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    check-cast v1, Ljava/lang/Class;

    .line 625
    .local v1, "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->get()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lcom/nubia/nucms/network/frame/NuCmsJsonParser;->toObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bean":Lcom/nubia/nucms/bean/NuCmsStatusBean;, "TT;"
    check-cast v0, Lcom/nubia/nucms/bean/NuCmsStatusBean;

    .line 629
    .restart local v0    # "bean":Lcom/nubia/nucms/bean/NuCmsStatusBean;, "TT;"
    if-nez v0, :cond_1

    .line 630
    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v6, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    sget-object v7, Lcom/nubia/nucms/api/NuCmsCallbackError;->REPONSE_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v7}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v7

    sget-object v8, Lcom/nubia/nucms/api/NuCmsCallbackError;->REPONSE_NULL:Lcom/nubia/nucms/api/NuCmsCallbackError;

    invoke-virtual {v8}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/nubia/nucms/api/NuCmsSdk;->access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    .line 658
    .end local v0    # "bean":Lcom/nubia/nucms/bean/NuCmsStatusBean;, "TT;"
    .end local v1    # "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v4    # "type":Ljava/lang/reflect/ParameterizedType;
    :cond_0
    :goto_0
    return-void

    .line 633
    .restart local v0    # "bean":Lcom/nubia/nucms/bean/NuCmsStatusBean;, "TT;"
    .restart local v1    # "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v4    # "type":Ljava/lang/reflect/ParameterizedType;
    :cond_1
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 634
    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v6, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    invoke-static {v5, v6, v0}, Lcom/nubia/nucms/api/NuCmsSdk;->access$300(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;Lcom/nubia/nucms/bean/NuCmsStatusBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    .end local v0    # "bean":Lcom/nubia/nucms/bean/NuCmsStatusBean;, "TT;"
    .end local v1    # "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v4    # "type":Ljava/lang/reflect/ParameterizedType;
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    if-eqz v5, :cond_0

    .line 650
    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v6, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    sget-object v7, Lcom/nubia/nucms/api/NuCmsCallbackError;->JSON_CONVERT_FAILED:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 651
    invoke-virtual {v7}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/nubia/nucms/api/NuCmsCallbackError;->JSON_CONVERT_FAILED:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 652
    invoke-virtual {v9}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nJsonStr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 654
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 650
    invoke-static {v5, v6, v7, v8}, Lcom/nubia/nucms/api/NuCmsSdk;->access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V

    goto :goto_0

    .line 637
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bean":Lcom/nubia/nucms/bean/NuCmsStatusBean;, "TT;"
    .restart local v1    # "beanClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v4    # "type":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v6, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 638
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;->getResult()Ljava/lang/String;

    move-result-object v8

    .line 637
    invoke-static {v5, v6, v7, v8}, Lcom/nubia/nucms/api/NuCmsSdk;->access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 639
    :catch_1
    move-exception v2

    .line 640
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    iget-object v5, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->this$0:Lcom/nubia/nucms/api/NuCmsSdk;

    iget-object v6, p0, Lcom/nubia/nucms/api/NuCmsSdk$2;->val$cb:Lcom/nubia/nucms/api/NuCmsModelCallback;

    sget-object v7, Lcom/nubia/nucms/api/NuCmsCallbackError;->PARSE_SERVER_EXCEPTION_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 641
    invoke-virtual {v7}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getCode()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/nubia/nucms/api/NuCmsCallbackError;->PARSE_SERVER_EXCEPTION_ERROR:Lcom/nubia/nucms/api/NuCmsCallbackError;

    .line 642
    invoke-virtual {v9}, Lcom/nubia/nucms/api/NuCmsCallbackError;->getMsg()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nOrigin Server Error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 644
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;->getCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 645
    invoke-virtual {v0}, Lcom/nubia/nucms/bean/NuCmsStatusBean;->getResult()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 640
    invoke-static {v5, v6, v7, v8}, Lcom/nubia/nucms/api/NuCmsSdk;->access$200(Lcom/nubia/nucms/api/NuCmsSdk;Lcom/nubia/nucms/api/NuCmsModelCallback;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public onUploading(Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;JJ)V
    .locals 2
    .param p2, "total"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest",
            "<",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "request":Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest;, "Lcom/nubia/nucms/network/http/request/NuCmsHttpAbstractRequest<Ljava/lang/String;>;"
    const-string v0, "NuCmsSdk"

    const-string v1, "requestNews onUploading."

    invoke-static {v0, v1}, Lcom/nubia/nucms/utils/NuCmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method
