.class Lcn/nubia/camera/g/e$1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/k/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/g/e$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/camera/g/e$1;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/g/e$1;Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcn/nubia/camera/g/e$1$a;->b:Lcn/nubia/camera/g/e$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lcn/nubia/camera/g/e$1$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcn/nubia/k/a/b$a;)V
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStorageFinish "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeneralJpegPictureCallback"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcn/nubia/camera/g/e$1$a;->b:Lcn/nubia/camera/g/e$1;

    iget-object v0, v0, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    iget-object v1, p0, Lcn/nubia/camera/g/e$1$a;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/g/e;->a(Lcn/nubia/camera/g/e;Landroid/net/Uri;Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcn/nubia/k/a/b$a;->a:Lcn/nubia/k/a/b$a;

    if-ne p2, v0, :cond_0

    .line 280
    iget-object p2, p0, Lcn/nubia/camera/g/e$1$a;->b:Lcn/nubia/camera/g/e$1;

    iget-object p2, p2, Lcn/nubia/camera/g/e$1;->a:Lcn/nubia/camera/g/e;

    invoke-static {p2}, Lcn/nubia/camera/g/e;->e(Lcn/nubia/camera/g/e;)Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lcn/nubia/camera/ba/a;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
