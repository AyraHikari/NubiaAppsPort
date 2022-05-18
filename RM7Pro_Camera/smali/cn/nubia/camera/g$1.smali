.class Lcn/nubia/camera/g$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/g;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/g;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "reason"

    .line 88
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HomePressCloseCamera"

    invoke-static {v0, p2}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "recentapps"

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 94
    iget-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    invoke-static {p1, v2}, Lcn/nubia/camera/g;->a(Lcn/nubia/camera/g;Z)Z

    .line 95
    iget-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    invoke-static {p1}, Lcn/nubia/camera/g;->a(Lcn/nubia/camera/g;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    :cond_0
    const-string p2, "homekey"

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Home pressed"

    .line 97
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    invoke-static {p1, v2}, Lcn/nubia/camera/g;->b(Lcn/nubia/camera/g;Z)Z

    .line 100
    iget-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    invoke-static {p1}, Lcn/nubia/camera/g;->b(Lcn/nubia/camera/g;)V

    .line 101
    iget-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    invoke-static {p1}, Lcn/nubia/camera/g;->c(Lcn/nubia/camera/g;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 102
    iget-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    invoke-static {p1}, Lcn/nubia/camera/g;->d(Lcn/nubia/camera/g;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    invoke-static {p1}, Lcn/nubia/camera/g;->a(Lcn/nubia/camera/g;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 106
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/g$1;->a:Lcn/nubia/camera/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/camera/g;->a(Lcn/nubia/camera/g;Z)Z

    :cond_2
    :goto_1
    return-void
.end method
