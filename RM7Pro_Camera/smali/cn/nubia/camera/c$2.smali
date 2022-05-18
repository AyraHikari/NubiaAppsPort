.class Lcn/nubia/camera/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/c;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcn/nubia/camera/c$2;->a:Lcn/nubia/camera/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcn/nubia/camera/c$2;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->b(Lcn/nubia/camera/c;)Lcn/nubia/camera/ae/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/ae/a;->b(Z)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/c$2;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/e;)V

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/c$2;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/an/a;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/c$2;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/a/a;

    invoke-virtual {v0}, Lcn/nubia/camera/a/a;->w()Lcn/nubia/camera/an/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/an/a;->a(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/c$2;->a:Lcn/nubia/camera/c;

    invoke-static {v0}, Lcn/nubia/camera/c;->c(Lcn/nubia/camera/c;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/e;)V

    return-void
.end method
