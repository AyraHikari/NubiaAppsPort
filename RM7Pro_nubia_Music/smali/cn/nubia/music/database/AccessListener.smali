.class public interface abstract Lcn/nubia/music/database/AccessListener;
.super Ljava/lang/Object;
.source "AccessListener.java"


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
.method public abstract onAccessFail(Lcn/nubia/music/database/AccessError;)V
.end method

.method public abstract onAccessSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
