.class public interface abstract Lcom/zte/zms/INetProxy;
.super Ljava/lang/Object;
.source "INetProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zms/INetProxy$Stub;
    }
.end annotation


# virtual methods
.method public abstract asyncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncRequst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
