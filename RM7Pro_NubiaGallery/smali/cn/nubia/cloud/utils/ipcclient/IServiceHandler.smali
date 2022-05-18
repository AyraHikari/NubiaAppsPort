.class public interface abstract Lcn/nubia/cloud/utils/ipcclient/IServiceHandler;
.super Ljava/lang/Object;
.source "IServiceHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onServiceIntent()Landroid/content/Intent;
.end method

.method public abstract onTransact(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method
