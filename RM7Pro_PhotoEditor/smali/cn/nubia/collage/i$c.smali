.class Lcn/nubia/collage/i$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/nubia/collage/o/a/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/i;->p(Ljava/util/List;)V
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

    iput-object p1, p0, Lcn/nubia/collage/i$c;->a:Lcn/nubia/collage/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "presenter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LYHP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/i$c;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->b(Lcn/nubia/collage/i;)Lcn/nubia/collage/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/i$c;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->b(Lcn/nubia/collage/i;)Lcn/nubia/collage/f;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/collage/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/i$c;->a:Lcn/nubia/collage/i;

    invoke-static {v0}, Lcn/nubia/collage/i;->b(Lcn/nubia/collage/i;)Lcn/nubia/collage/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/nubia/collage/f;->f(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcn/nubia/collage/i$c;->a:Lcn/nubia/collage/i;

    invoke-virtual {v1, v0, p1}, Lcn/nubia/collage/i;->q(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
