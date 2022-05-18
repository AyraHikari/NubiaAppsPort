.class Lcn/nubia/camera/k/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/d$a;

.field final synthetic b:Lcn/nubia/camera/k/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/k/h;Lcn/nubia/camera/d$a;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcn/nubia/camera/k/h$1;->b:Lcn/nubia/camera/k/h;

    iput-object p2, p0, Lcn/nubia/camera/k/h$1;->a:Lcn/nubia/camera/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive camera fatal error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/h$1;->a:Lcn/nubia/camera/d$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/h$1;->b:Lcn/nubia/camera/k/h;

    invoke-static {v1}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surfaceDestroyed  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/h$1;->b:Lcn/nubia/camera/k/h;

    .line 124
    invoke-static {v1}, Lcn/nubia/camera/k/h;->b(Lcn/nubia/camera/k/h;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOpener"

    .line 123
    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/k/h$1;->b:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->a(Lcn/nubia/camera/k/h;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcn/nubia/camera/k/h$1;->b:Lcn/nubia/camera/k/h;

    invoke-static {v0}, Lcn/nubia/camera/k/h;->c(Lcn/nubia/camera/k/h;)Lcn/nubia/camera/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/k/h$1;->a:Lcn/nubia/camera/d$a;

    invoke-interface {v0, v1}, Lcn/nubia/camera/d;->a(Lcn/nubia/camera/d$a;)V

    :cond_0
    return-void
.end method
