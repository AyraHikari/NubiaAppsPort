.class Lcn/nubia/music/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MainActivity;->initContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcn/nubia/music/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity;Z)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcn/nubia/music/MainActivity$4;->b:Lcn/nubia/music/MainActivity;

    iput-boolean p2, p0, Lcn/nubia/music/MainActivity$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcn/nubia/music/MainActivity$4;->a:Z

    if-eqz v0, :cond_0

    .line 234
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcn/nubia/music/MainActivity$4;->b:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$500(Lcn/nubia/music/MainActivity;)V

    .line 237
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method
