.class Lcn/nubia/music/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MainActivity;->updateApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcn/nubia/music/MainActivity$5;->a:Lcn/nubia/music/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcn/nubia/music/MainActivity$5;->a:Lcn/nubia/music/MainActivity;

    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-static {v1}, Lcn/nubia/music/app/AppUpdateManager;->getInstance(Landroid/content/Context;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/MainActivity;->access$602(Lcn/nubia/music/MainActivity;Lcn/nubia/music/app/AppUpdateManager;)Lcn/nubia/music/app/AppUpdateManager;

    .line 254
    iget-object v0, p0, Lcn/nubia/music/MainActivity$5;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$600(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MainActivity$5;->a:Lcn/nubia/music/MainActivity;

    invoke-virtual {v0, v1}, Lcn/nubia/music/app/AppUpdateManager;->setListener(Lcn/nubia/music/app/AppUpdateManager$IOnShowUpdateInfo;)Lcn/nubia/music/app/AppUpdateManager;

    move-result-object v0

    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/app/AppUpdateManager;->checkUpdate(Landroid/content/Context;Z)V

    .line 255
    return-void
.end method
