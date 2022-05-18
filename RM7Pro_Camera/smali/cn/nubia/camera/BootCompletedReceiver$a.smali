.class Lcn/nubia/camera/BootCompletedReceiver$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/BootCompletedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/BootCompletedReceiver;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/BootCompletedReceiver;Landroid/content/Context;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->a:Lcn/nubia/camera/BootCompletedReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->b:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    const-string p1, "BootCompletedReceiver"

    const-string v0, "BootCompletedReceiver doInBackground"

    .line 38
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object p1, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 42
    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "pref_key_capture_camera"

    const-string v2, "off"

    .line 43
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 45
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    .line 52
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BootCompletedReceiver"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 59
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->b:Landroid/content/Context;

    const-class v2, Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "notification_title"

    .line 60
    iget-object v2, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->b:Landroid/content/Context;

    const v3, 0x7f0f0039

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->a:Lcn/nubia/camera/BootCompletedReceiver;

    iget-object v2, p0, Lcn/nubia/camera/BootCompletedReceiver$a;->b:Landroid/content/Context;

    invoke-static {v0, v2, p1}, Lcn/nubia/camera/BootCompletedReceiver;->a(Lcn/nubia/camera/BootCompletedReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "start service failed!"

    .line 63
    invoke-static {v1, v0, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/BootCompletedReceiver$a;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/BootCompletedReceiver$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
