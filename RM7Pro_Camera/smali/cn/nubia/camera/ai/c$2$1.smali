.class Lcn/nubia/camera/ai/c$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ai/c$2;->a(Landroid/hardware/camera2/TotalCaptureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ai/c$2;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ai/c$2;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/camera/ai/c$2$1;->a:Lcn/nubia/camera/ai/c$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/ai/c$2$1;->a:Lcn/nubia/camera/ai/c$2;

    iget-object v0, v0, Lcn/nubia/camera/ai/c$2;->a:Lcn/nubia/camera/ai/c;

    invoke-static {v0}, Lcn/nubia/camera/ai/c;->f(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/ai/c$2$1;->a:Lcn/nubia/camera/ai/c$2;

    iget-object v0, v0, Lcn/nubia/camera/ai/c$2;->a:Lcn/nubia/camera/ai/c;

    invoke-static {v0}, Lcn/nubia/camera/ai/c;->g(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->o()V

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/ai/c$2$1;->a:Lcn/nubia/camera/ai/c$2;

    iget-object v0, v0, Lcn/nubia/camera/ai/c$2;->a:Lcn/nubia/camera/ai/c;

    invoke-static {v0}, Lcn/nubia/camera/ai/c;->b(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ai/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/ai/c$2$1;->a:Lcn/nubia/camera/ai/c$2;

    iget-object v0, v0, Lcn/nubia/camera/ai/c$2;->a:Lcn/nubia/camera/ai/c;

    invoke-static {v0}, Lcn/nubia/camera/ai/c;->b(Lcn/nubia/camera/ai/c;)Lcn/nubia/camera/ai/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ai/a;->d()V

    :cond_0
    return-void
.end method
