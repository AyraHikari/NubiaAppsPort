.class Lcn/nubia/camera/aj/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/e;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ad/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcn/nubia/camera/aj/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/e;Lcn/nubia/camera/ad/a;Landroid/content/Context;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcn/nubia/camera/aj/e$2;->c:Lcn/nubia/camera/aj/e;

    iput-object p2, p0, Lcn/nubia/camera/aj/e$2;->a:Lcn/nubia/camera/ad/a;

    iput-object p3, p0, Lcn/nubia/camera/aj/e$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 489
    iget-object v0, p0, Lcn/nubia/camera/aj/e$2;->c:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->b(Lcn/nubia/camera/aj/e;)V

    .line 490
    iget-object v0, p0, Lcn/nubia/camera/aj/e$2;->c:Lcn/nubia/camera/aj/e;

    iget-object v1, p0, Lcn/nubia/camera/aj/e$2;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/aj/e$2;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->b()Lcn/nubia/camera/af/a;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aj/e$2;->b:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/camera/aj/e;->a(Lcn/nubia/camera/aj/e;Ljava/lang/String;Lcn/nubia/camera/af/a;Landroid/content/Context;)V

    .line 491
    iget-object v0, p0, Lcn/nubia/camera/aj/e$2;->c:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->c(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/q/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcn/nubia/camera/aj/e$2;->c:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->d(Lcn/nubia/camera/aj/e;)Lcn/nubia/camera/q/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/q/b;->e()V

    .line 494
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/e$2;->c:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->e(Lcn/nubia/camera/aj/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/aj/e$2;->c:Lcn/nubia/camera/aj/e;

    invoke-static {v0}, Lcn/nubia/camera/aj/e;->f(Lcn/nubia/camera/aj/e;)V

    :cond_1
    return-void
.end method
