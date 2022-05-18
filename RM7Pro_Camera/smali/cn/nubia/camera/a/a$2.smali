.class Lcn/nubia/camera/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/a/a;)V
    .locals 0

    .line 1681
    iput-object p1, p0, Lcn/nubia/camera/a/a$2;->a:Lcn/nubia/camera/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ActivityBase"

    const-string v0, "onServiceConnected"

    .line 1684
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object p1, p0, Lcn/nubia/camera/a/a$2;->a:Lcn/nubia/camera/a/a;

    invoke-static {p2}, Lcom/android/captureCamera/IWatermarkTypeSync$a;->a(Landroid/os/IBinder;)Lcom/android/captureCamera/IWatermarkTypeSync;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/a;Lcom/android/captureCamera/IWatermarkTypeSync;)Lcom/android/captureCamera/IWatermarkTypeSync;

    .line 1686
    iget-object p1, p0, Lcn/nubia/camera/a/a$2;->a:Lcn/nubia/camera/a/a;

    invoke-static {p1}, Lcn/nubia/camera/a/a;->i(Lcn/nubia/camera/a/a;)Lcom/android/preference/c;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/a/a$2;->a:Lcn/nubia/camera/a/a;

    invoke-static {p2, v0}, Lcn/nubia/camera/ba/a;->a(Lcom/android/preference/c;Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/nubia/camera/a/a;->b(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "ActivityBase"

    const-string v0, "onServiceDisconnected"

    .line 1691
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    iget-object p1, p0, Lcn/nubia/camera/a/a$2;->a:Lcn/nubia/camera/a/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/camera/a/a;->a(Lcn/nubia/camera/a/a;Lcom/android/captureCamera/IWatermarkTypeSync;)Lcom/android/captureCamera/IWatermarkTypeSync;

    return-void
.end method
