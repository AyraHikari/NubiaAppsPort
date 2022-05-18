.class public interface abstract Lcn/nubia/cloud/sync/common/attachment/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final STATE_TASK_CANCELLED:I = 0x6e

.field public static final STATE_TASK_DONE:I = 0x6a

.field public static final STATE_TASK_FAILED:I = 0x67

.field public static final STATE_TASK_REMOVE:I = 0x70

.field public static final STATE_TASK_RUNNING:I = 0x65


# virtual methods
.method public abstract onStatus(IJJLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJTResult;)V"
        }
    .end annotation
.end method
