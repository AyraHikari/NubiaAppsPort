.class Lcn/nubia/camera/aa/b$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aa/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aa/b;)V
    .locals 0

    .line 491
    iput-object p1, p0, Lcn/nubia/camera/aa/b$7;->a:Lcn/nubia/camera/aa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcn/nubia/camera/aa/b$7;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->i:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/aa/b$7;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->l(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aa/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcn/nubia/camera/aa/b$7;->a:Lcn/nubia/camera/aa/b;

    invoke-static {v0}, Lcn/nubia/camera/aa/b;->l(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/aa/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/aa/b$b;->k_()V

    :cond_0
    return-void
.end method
