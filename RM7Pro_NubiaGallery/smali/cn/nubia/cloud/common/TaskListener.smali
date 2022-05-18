.class public interface abstract Lcn/nubia/cloud/common/TaskListener;
.super Ljava/lang/Object;
.source "TaskListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Cookie:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;TCookie;)V"
        }
    .end annotation
.end method

.method public abstract onException(ILjava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TCookie;)V"
        }
    .end annotation
.end method

.method public abstract onProgress(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TProgress;TCookie;)V"
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCookie;)V"
        }
    .end annotation
.end method
