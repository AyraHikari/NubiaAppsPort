.class public interface abstract Lcn/nubia/analytic/interfaces/IDataHandler;
.super Ljava/lang/Object;
.source "IDataHandler.java"


# virtual methods
.method public abstract insert(Landroid/content/Context;Ljava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract sendWhiteToTraffic(Landroid/content/Context;Lcn/nubia/analytic/interfaces/RemoteDataCallback;)V
.end method

.method public abstract sendtoTraffic(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRequestParams(Lcn/nubia/analytic/interfaces/IDataHandler;Landroid/os/Handler;)V
.end method
