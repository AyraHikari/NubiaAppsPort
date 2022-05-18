.class Lcn/nubia/a/b$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/a/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/a/b;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcn/nubia/a/b$5;->a:Lcn/nubia/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 226
    iget-object p1, p0, Lcn/nubia/a/b$5;->a:Lcn/nubia/a/b;

    invoke-virtual {p1}, Lcn/nubia/a/b;->a()Z

    move-result p1

    const-string v0, "CameraFamilyFragment"

    if-eqz p1, :cond_0

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraFamilyAnimating: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/a/b$5;->a:Lcn/nubia/a/b;

    invoke-virtual {v1}, Lcn/nubia/a/b;->a()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_0
    iget-object p1, p0, Lcn/nubia/a/b$5;->a:Lcn/nubia/a/b;

    invoke-virtual {p1}, Lcn/nubia/a/b;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CameraFamily is not visibility"

    .line 232
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 236
    :cond_1
    iget-object p1, p0, Lcn/nubia/a/b$5;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->f(Lcn/nubia/a/b;)Lcn/nubia/a/e;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 237
    iget-object p1, p0, Lcn/nubia/a/b$5;->a:Lcn/nubia/a/b;

    invoke-static {p1}, Lcn/nubia/a/b;->f(Lcn/nubia/a/b;)Lcn/nubia/a/e;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/a/b$5;->a:Lcn/nubia/a/b;

    invoke-static {v0}, Lcn/nubia/a/b;->g(Lcn/nubia/a/b;)Lcn/nubia/a/d;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/a/d;->e:Lcn/nubia/a/c;

    invoke-virtual {p1, v0}, Lcn/nubia/a/e;->b(Lcn/nubia/a/c;)Z

    :cond_2
    return-void
.end method
