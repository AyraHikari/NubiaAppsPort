.class Lcn/nubia/camera/bd/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bd/b;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bd/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bd/b;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcn/nubia/camera/bd/b$2;->a:Lcn/nubia/camera/bd/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcn/nubia/camera/bd/b$2;->a:Lcn/nubia/camera/bd/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/bd/b;Z)V

    .line 176
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 177
    iget-object v0, p0, Lcn/nubia/camera/bd/b$2;->a:Lcn/nubia/camera/bd/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/camera/bd/b$2;->a:Lcn/nubia/camera/bd/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const/16 v1, 0x8

    const-string v2, "zoomblur_drawer"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/bd/b$2;->a:Lcn/nubia/camera/bd/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/bd/b;->a(Lcn/nubia/camera/bd/b;Z)V

    .line 169
    iget-object v0, p0, Lcn/nubia/camera/bd/b$2;->a:Lcn/nubia/camera/bd/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcn/nubia/camera/bd/b$2;->a:Lcn/nubia/camera/bd/b;

    invoke-virtual {v0}, Lcn/nubia/camera/bd/b;->e()Lcn/nubia/camera/zoom/arc/a;

    move-result-object v0

    const-string v2, "zoomblur_drawer"

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/zoom/arc/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
