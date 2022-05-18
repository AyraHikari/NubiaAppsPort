.class Lcn/nubia/collage/h$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/h;->J(Landroid/content/Context;ILcn/nubia/collage/h$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/collage/h$g;

.field final synthetic c:Lcn/nubia/collage/h;


# direct methods
.method constructor <init>(Lcn/nubia/collage/h;ILcn/nubia/collage/h$g;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/h$e;->c:Lcn/nubia/collage/h;

    iput p2, p0, Lcn/nubia/collage/h$e;->a:I

    iput-object p3, p0, Lcn/nubia/collage/h$e;->b:Lcn/nubia/collage/h$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/h$e;->c:Lcn/nubia/collage/h;

    invoke-static {v0}, Lcn/nubia/collage/h;->F(Lcn/nubia/collage/h;)Lcn/nubia/collage/l;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/h$e;->c:Lcn/nubia/collage/h;

    new-instance v1, Lcn/nubia/collage/l;

    invoke-static {v0}, Lcn/nubia/collage/h;->H(Lcn/nubia/collage/h;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/collage/l;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcn/nubia/collage/h;->G(Lcn/nubia/collage/h;Lcn/nubia/collage/l;)Lcn/nubia/collage/l;

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/h$e;->c:Lcn/nubia/collage/h;

    invoke-static {v0}, Lcn/nubia/collage/h;->F(Lcn/nubia/collage/h;)Lcn/nubia/collage/l;

    move-result-object v0

    iget v1, p0, Lcn/nubia/collage/h$e;->a:I

    invoke-virtual {v0, v1}, Lcn/nubia/collage/l;->a(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/h$e;->b:Lcn/nubia/collage/h$g;

    invoke-interface {v1, v0}, Lcn/nubia/collage/h$g;->a(Ljava/util/List;)V

    return-void
.end method
