.class Lcn/nubia/camera/m/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/m/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/m/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/m/b;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcn/nubia/camera/m/b$2;->a:Lcn/nubia/camera/m/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "SecondDisplayDialog"

    const-string v1, "surfaceCreated"

    .line 157
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/m/b$2;->a:Lcn/nubia/camera/m/b;

    new-instance v1, Lcn/nubia/camera/m/c;

    invoke-direct {v1, p1}, Lcn/nubia/camera/m/c;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-static {v0, v1}, Lcn/nubia/camera/m/b;->a(Lcn/nubia/camera/m/b;Lcn/nubia/camera/m/c;)Lcn/nubia/camera/m/c;

    .line 159
    iget-object p1, p0, Lcn/nubia/camera/m/b$2;->a:Lcn/nubia/camera/m/b;

    invoke-static {p1}, Lcn/nubia/camera/m/b;->b(Lcn/nubia/camera/m/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->c()Lcn/nubia/camera/d/e;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    if-ne p1, v0, :cond_0

    .line 160
    iget-object p1, p0, Lcn/nubia/camera/m/b$2;->a:Lcn/nubia/camera/m/b;

    invoke-static {p1}, Lcn/nubia/camera/m/b;->c(Lcn/nubia/camera/m/b;)Lcn/nubia/camera/m/c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/m/c;->a(Z)V

    .line 162
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/m/b$2;->a:Lcn/nubia/camera/m/b;

    invoke-static {p1}, Lcn/nubia/camera/m/b;->b(Lcn/nubia/camera/m/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/m/b$2;->a:Lcn/nubia/camera/m/b;

    invoke-static {v0}, Lcn/nubia/camera/m/b;->c(Lcn/nubia/camera/m/b;)Lcn/nubia/camera/m/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "SecondDisplayDialog"

    const-string v0, "surfaceDestroy"

    .line 172
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcn/nubia/camera/m/b$2;->a:Lcn/nubia/camera/m/b;

    invoke-static {p1}, Lcn/nubia/camera/m/b;->c(Lcn/nubia/camera/m/b;)Lcn/nubia/camera/m/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/m/c;->a()V

    .line 174
    iget-object p1, p0, Lcn/nubia/camera/m/b$2;->a:Lcn/nubia/camera/m/b;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/m/b;->a(Lcn/nubia/camera/m/b;Lcn/nubia/camera/m/c;)Lcn/nubia/camera/m/c;

    return-void
.end method
