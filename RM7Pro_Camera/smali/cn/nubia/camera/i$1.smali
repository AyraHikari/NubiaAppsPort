.class Lcn/nubia/camera/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/i;


# direct methods
.method constructor <init>(Lcn/nubia/camera/i;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/i$1;->a:Lcn/nubia/camera/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcn/nubia/camera/i$1;->a:Lcn/nubia/camera/i;

    invoke-static {p1}, Lcn/nubia/camera/i;->a(Lcn/nubia/camera/i;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/camera/ad/a;->b(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 38
    iget-object p1, p0, Lcn/nubia/camera/i$1;->a:Lcn/nubia/camera/i;

    invoke-static {p1}, Lcn/nubia/camera/i;->a(Lcn/nubia/camera/i;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/ad/a;->b(Z)V

    .line 39
    iget-object p1, p0, Lcn/nubia/camera/i$1;->a:Lcn/nubia/camera/i;

    invoke-static {p1}, Lcn/nubia/camera/i;->b(Lcn/nubia/camera/i;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
