.class Lcn/nubia/camera/aj/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/c;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/c;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcn/nubia/camera/aj/c$1;->a:Lcn/nubia/camera/aj/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/aj/c$1;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->c(Lcn/nubia/camera/aj/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    sget-object v1, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    .line 166
    invoke-virtual {v1}, Lcn/nubia/camera/d/b;->a()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/aj/c$1;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcn/nubia/camera/aj/c$1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/aj/c$1;->a:Lcn/nubia/camera/aj/c;

    invoke-virtual {v0}, Lcn/nubia/camera/aj/c;->I()V

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/aj/c$1;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->a(Lcn/nubia/camera/aj/c;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/camera/aj/c$1;->a:Lcn/nubia/camera/aj/c;

    invoke-static {v0}, Lcn/nubia/camera/aj/c;->b(Lcn/nubia/camera/aj/c;)V

    :cond_1
    :goto_0
    return-void
.end method
