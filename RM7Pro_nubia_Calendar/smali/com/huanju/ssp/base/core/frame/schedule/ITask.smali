.class public interface abstract Lcom/huanju/ssp/base/core/frame/schedule/ITask;
.super Ljava/lang/Object;
.source "ITask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
    }
.end annotation


# virtual methods
.method public abstract getLaunchMode()Lcom/huanju/ssp/base/core/frame/schedule/ITask$LaunchMode;
.end method

.method public abstract getName()Ljava/lang/String;
.end method
