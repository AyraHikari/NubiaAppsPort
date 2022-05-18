.class Lcn/nubia/camera/ao/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/g;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcn/nubia/camera/ao/g$2;->a:Lcn/nubia/camera/ao/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/ao/g$2;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->c(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/ao/g$2;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->c(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/ao/g$2;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->c(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/a/a;->a(Z)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/ao/g$2;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->d(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/ao/g$2;->a:Lcn/nubia/camera/ao/g;

    invoke-static {v0}, Lcn/nubia/camera/ao/g;->d(Lcn/nubia/camera/ao/g;)Lcn/nubia/camera/aj/i;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/aj/i;->b()V

    :cond_1
    return-void
.end method
