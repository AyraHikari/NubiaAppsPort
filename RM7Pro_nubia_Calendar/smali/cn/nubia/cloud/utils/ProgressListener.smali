.class public interface abstract Lcn/nubia/cloud/utils/ProgressListener;
.super Ljava/lang/Object;
.source "ProgressListener.java"


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
.method public abstract onException(ILjava/lang/String;)V
.end method

.method public abstract onStatus(IJJLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJTT;)V"
        }
    .end annotation
.end method

.method public abstract progressInterval()J
.end method
