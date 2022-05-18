.class final Lcn/nubia/collage/o/b/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/collage/o/b/l;->a(Ljava/lang/String;Landroid/content/Context;Lcn/nubia/collage/o/b/l$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/nubia/collage/o/b/l$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/nubia/collage/o/b/l$b;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/o/b/l$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/collage/o/b/l$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/collage/o/b/l$a;->c:Lcn/nubia/collage/o/b/l$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/o/b/l$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/collage/o/b/l$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/collage/m;->l(Landroid/content/Context;Ljava/lang/String;)Lcn/nubia/collage/o/b/k;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TemplateLoader"

    const-string v1, "template is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcn/nubia/collage/o/b/l$a;->c:Lcn/nubia/collage/o/b/l$b;

    iget-object v1, p0, Lcn/nubia/collage/o/b/l$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcn/nubia/collage/o/b/l$b;->a(Ljava/lang/String;Lcn/nubia/collage/o/b/k;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcn/nubia/collage/o/b/l$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/collage/o/b/k;->E(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/collage/n/h;->f()Lcn/nubia/collage/n/h;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/collage/o/b/l$a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/collage/o/b/l$a$a;

    invoke-direct {v3, p0}, Lcn/nubia/collage/o/b/l$a$a;-><init>(Lcn/nubia/collage/o/b/l$a;)V

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/collage/n/h;->h(Lcn/nubia/collage/o/b/k;Ljava/lang/String;Lcn/nubia/collage/n/h$c;)Z

    return-void
.end method
