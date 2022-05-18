.class public interface abstract Lcom/nubia/nucms/api/NuCmsModelCallback;
.super Ljava/lang/Object;
.source "NuCmsModelCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nubia/nucms/bean/NuCmsStatusBean;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFail(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/nubia/nucms/bean/NuCmsStatusBean;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
