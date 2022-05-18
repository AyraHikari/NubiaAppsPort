.class Lcn/nubia/camera/bb/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/bb/o;->a(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/bb/o;


# direct methods
.method constructor <init>(Lcn/nubia/camera/bb/o;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcn/nubia/camera/bb/o$1;->a:Lcn/nubia/camera/bb/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SlomoVideoRecordManagerImpl"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object p1, p0, Lcn/nubia/camera/bb/o$1;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 207
    iget-object p1, p0, Lcn/nubia/camera/bb/o$1;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    :try_start_0
    iget-object p1, p0, Lcn/nubia/camera/bb/o$1;->a:Lcn/nubia/camera/bb/o;

    invoke-virtual {p1}, Lcn/nubia/camera/bb/o;->t()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/camera/bb/o$1;->a:Lcn/nubia/camera/bb/o;

    invoke-static {v1}, Lcn/nubia/camera/bb/o;->b(Lcn/nubia/camera/bb/o;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    .line 210
    iget-object p1, p0, Lcn/nubia/camera/bb/o$1;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1, v0}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :catch_0
    iget-object p1, p0, Lcn/nubia/camera/bb/o$1;->a:Lcn/nubia/camera/bb/o;

    invoke-static {p1}, Lcn/nubia/camera/bb/o;->a(Lcn/nubia/camera/bb/o;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
