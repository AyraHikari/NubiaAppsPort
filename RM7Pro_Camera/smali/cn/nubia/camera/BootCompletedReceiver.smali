.class public Lcn/nubia/camera/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/BootCompletedReceiver$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 72
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/BootCompletedReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/BootCompletedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/BootCompletedReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "BootCompletedReceiver"

    const-string v1, "startForegroundService"

    .line 80
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: intent.action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BootCompletedReceiver"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance p2, Lcn/nubia/camera/BootCompletedReceiver$a;

    invoke-direct {p2, p0, p1}, Lcn/nubia/camera/BootCompletedReceiver$a;-><init>(Lcn/nubia/camera/BootCompletedReceiver;Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 26
    invoke-virtual {p2, p1}, Lcn/nubia/camera/BootCompletedReceiver$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
