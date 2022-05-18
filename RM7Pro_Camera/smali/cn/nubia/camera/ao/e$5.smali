.class Lcn/nubia/camera/ao/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/e;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/nubia/camera/ao/e$5;->a:Lcn/nubia/camera/ao/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcn/nubia/camera/ao/e$5;->a:Lcn/nubia/camera/ao/e;

    invoke-static {v0}, Lcn/nubia/camera/ao/e;->c(Lcn/nubia/camera/ao/e;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcn/nubia/camera/ao/e$5;->a:Lcn/nubia/camera/ao/e;

    invoke-static {v0}, Lcn/nubia/camera/ao/e;->c(Lcn/nubia/camera/ao/e;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/aj/i;->b()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/e$5;->a:Lcn/nubia/camera/ao/e;

    invoke-static {v0}, Lcn/nubia/camera/ao/e;->d(Lcn/nubia/camera/ao/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcn/nubia/camera/ao/e$5;->a:Lcn/nubia/camera/ao/e;

    invoke-static {v0}, Lcn/nubia/camera/ao/e;->d(Lcn/nubia/camera/ao/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    :cond_1
    return-void
.end method
