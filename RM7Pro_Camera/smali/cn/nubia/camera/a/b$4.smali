.class Lcn/nubia/camera/a/b$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/b;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcn/nubia/camera/a/b$4;->a:Lcn/nubia/camera/a/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseActivity"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object p1, p0, Lcn/nubia/camera/a/b$4;->a:Lcn/nubia/camera/a/b;

    invoke-static {p1}, Lcn/nubia/camera/a/b;->h(Lcn/nubia/camera/a/b;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 478
    iget-object p1, p0, Lcn/nubia/camera/a/b$4;->a:Lcn/nubia/camera/a/b;

    invoke-virtual {p1}, Lcn/nubia/camera/a/b;->U()V

    :cond_0
    return-void
.end method
