.class Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;
.super Landroid/database/ContentObserver;
.source "NubiaPCMirror.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingValueChangedObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 837
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 838
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 842
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 843
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver$1;

    invoke-direct {v1, p0, p2}, Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver$1;-><init>(Lcn/nubia/touping/NubiaPCMirror/NubiaPCMirror$SettingValueChangedObserver;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 913
    return-void
.end method
