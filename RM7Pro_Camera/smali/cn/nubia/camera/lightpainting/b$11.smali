.class Lcn/nubia/camera/lightpainting/b$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/lightpainting/b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/lightpainting/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/lightpainting/b;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcn/nubia/camera/lightpainting/b$11;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcn/nubia/k/a/b$a;)V
    .locals 1

    .line 525
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$11;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->j(Lcn/nubia/camera/lightpainting/b;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$11;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-virtual {p1}, Lcn/nubia/camera/lightpainting/b;->D()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$11;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->p(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/b;->a()I

    move-result p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0}, Lcn/nubia/camera/d/b;->a()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 526
    iget-object p1, p0, Lcn/nubia/camera/lightpainting/b$11;->a:Lcn/nubia/camera/lightpainting/b;

    invoke-static {p1}, Lcn/nubia/camera/lightpainting/b;->q(Lcn/nubia/camera/lightpainting/b;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 528
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStorageFinish "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LightPaitingFragment"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
