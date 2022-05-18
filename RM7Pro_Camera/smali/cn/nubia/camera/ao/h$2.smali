.class Lcn/nubia/camera/ao/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/h;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/ao/h;


# direct methods
.method constructor <init>(Lcn/nubia/camera/ao/h;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcn/nubia/camera/ao/h$2;->a:Lcn/nubia/camera/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 174
    iget-object p1, p0, Lcn/nubia/camera/ao/h$2;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p1}, Lcn/nubia/camera/ao/h;->b(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ao/h$2;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p1}, Lcn/nubia/camera/ao/h;->c(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    new-instance v1, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    return-void
.end method
