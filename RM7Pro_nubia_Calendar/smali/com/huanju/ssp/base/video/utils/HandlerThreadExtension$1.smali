.class Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$1;
.super Ljava/lang/Object;
.source "HandlerThreadExtension.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;-><init>(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;


# direct methods
.method constructor <init>(Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension$1;->this$0:Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 30
    invoke-static {}, Lcom/huanju/ssp/base/video/utils/HandlerThreadExtension;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uncaughtException, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 33
    return-void
.end method
