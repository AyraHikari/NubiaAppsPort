.class public interface abstract Lcn/nubia/cloud/sync/common/SyncDataIterator;
.super Ljava/lang/Object;
.source "SyncDataIterator.java"


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
.method public abstract close()V
.end method

.method public abstract getCount()J
.end method

.method public abstract getNext(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract hasNext()Z
.end method
