.class Lcn/nubia/camera/ao/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/n/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/ao/h;->h(Landroid/view/View;)V
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

    .line 313
    iput-object p1, p0, Lcn/nubia/camera/ao/h$3;->a:Lcn/nubia/camera/ao/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 316
    iget-object p1, p0, Lcn/nubia/camera/ao/h$3;->a:Lcn/nubia/camera/ao/h;

    invoke-virtual {p1}, Lcn/nubia/camera/ao/h;->D()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/ao/h$3;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p1}, Lcn/nubia/camera/ao/h;->d(Lcn/nubia/camera/ao/h;)Lcn/nubia/camera/ao/m;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ao/m;->k()V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    const-string v0, "Effect_CTF_CUSTOM"

    .line 324
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcn/nubia/camera/ao/h$3;->a:Lcn/nubia/camera/ao/h;

    iput-object p2, v0, Lcn/nubia/camera/ao/h;->b:Ljava/lang/String;

    .line 326
    iget-object p2, p0, Lcn/nubia/camera/ao/h$3;->a:Lcn/nubia/camera/ao/h;

    iput p1, p2, Lcn/nubia/camera/ao/h;->c:I

    .line 327
    iget-object p1, p0, Lcn/nubia/camera/ao/h$3;->a:Lcn/nubia/camera/ao/h;

    invoke-static {p1}, Lcn/nubia/camera/ao/h;->e(Lcn/nubia/camera/ao/h;)V

    :cond_0
    return-void
.end method
