.class Lcn/nubia/camera/a/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/a/a;->ag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    const-string v0, "ActivityBase"

    const-string v1, "FirstFrameAvailable"

    .line 782
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-static {v1}, Lcn/nubia/camera/a/a;->d(Lcn/nubia/camera/a/a;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-static {v2}, Lcn/nubia/camera/a/a;->d(Lcn/nubia/camera/a/a;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-static {v1, v3, v4}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/a;J)J

    .line 787
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-static {v1}, Lcn/nubia/camera/a/a;->b(Lcn/nubia/camera/a/a;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/camera/ad/a;->c(Z)V

    .line 788
    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    iget-object v1, v1, Lcn/nubia/camera/a/a;->c:Lcn/nubia/camera/ae/a;

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Lcn/nubia/camera/ae/a;->c(J)V

    .line 789
    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->B()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcn/nubia/camera/m/a;->a(J)V

    .line 794
    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->isVoiceInteraction()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.CAMERA_OPEN_ONLY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v1}, Lcn/nubia/camera/a/a;->V()Z

    move-result v1

    if-nez v1, :cond_1

    .line 795
    iget-object v1, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    iget-object v1, v1, Lcn/nubia/camera/a/a;->d:Landroid/os/Handler;

    new-instance v4, Lcn/nubia/camera/a/a$6$1;

    invoke-direct {v4, p0}, Lcn/nubia/camera/a/a$6$1;-><init>(Lcn/nubia/camera/a/a$6;)V

    const-wide/16 v5, 0x1f4

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceInteraction; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    invoke-virtual {v4}, Lcn/nubia/camera/a/a;->isVoiceInteraction()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "; CAMERA_OPEN_ONLY:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/camera/a/a$6;->a:Lcn/nubia/camera/a/a;

    .line 803
    invoke-virtual {v4}, Lcn/nubia/camera/a/a;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 802
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
