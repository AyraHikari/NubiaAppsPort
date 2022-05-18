.class interface abstract Lcom/huanju/ssp/base/core/frame/net/NetTaskListener;
.super Ljava/lang/Object;
.source "NetTaskListener.java"


# virtual methods
.method public abstract onAdStatusChange(I)V
.end method

.method public abstract onDataReceived(Lcom/huanju/ssp/base/core/frame/net/http/HttpResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onErrorReceived(Ljava/lang/String;I)V
.end method

.method public abstract onNetworkError()V
.end method
