.class public interface abstract Lcom/nubia/reyun/sdk/ReYunHttp$IReYunHttpListener;
.super Ljava/lang/Object;
.source "ReYunHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/reyun/sdk/ReYunHttp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IReYunHttpListener"
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(ILorg/json/JSONObject;)V
.end method
