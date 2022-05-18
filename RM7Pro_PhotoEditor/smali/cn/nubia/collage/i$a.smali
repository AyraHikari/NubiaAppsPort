.class Lcn/nubia/collage/i$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/o/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/i;-><init>(Lcn/nubia/collage/g;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/collage/i;


# direct methods
.method constructor <init>(Lcn/nubia/collage/i;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/i$a;->a:Lcn/nubia/collage/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i$a;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->a(Lcn/nubia/collage/i;)Lcn/nubia/collage/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/collage/g;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/i$a;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->b(Lcn/nubia/collage/i;)Lcn/nubia/collage/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/i$a;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->a(Lcn/nubia/collage/i;)Lcn/nubia/collage/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/i$a;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->a(Lcn/nubia/collage/i;)Lcn/nubia/collage/g;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/i$a;->a:Lcn/nubia/collage/i;

    invoke-static {v1}, Lcn/nubia/collage/i;->b(Lcn/nubia/collage/i;)Lcn/nubia/collage/f;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/collage/f;->h()Lcn/nubia/collage/o/b/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/collage/g;->d(Lcn/nubia/collage/o/b/k;)V

    iget-object v0, p0, Lcn/nubia/collage/i$a;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->a(Lcn/nubia/collage/i;)Lcn/nubia/collage/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/collage/g;->c()V

    iget-object v0, p0, Lcn/nubia/collage/i$a;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->a(Lcn/nubia/collage/i;)Lcn/nubia/collage/g;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/collage/g;->e()V

    :cond_0
    return-void
.end method
