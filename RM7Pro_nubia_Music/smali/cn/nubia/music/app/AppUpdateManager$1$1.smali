.class Lcn/nubia/music/app/AppUpdateManager$1$1;
.super Ljava/lang/Object;
.source "AppUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/AppUpdateManager$1;->onDownloadError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcn/nubia/music/app/AppUpdateManager$1;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/AppUpdateManager$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcn/nubia/music/app/AppUpdateManager$1$1;->b:Lcn/nubia/music/app/AppUpdateManager$1;

    iput-object p2, p0, Lcn/nubia/music/app/AppUpdateManager$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/music/app/AppUpdateManager$1$1;->b:Lcn/nubia/music/app/AppUpdateManager$1;

    iget-object v0, v0, Lcn/nubia/music/app/AppUpdateManager$1;->a:Lcn/nubia/music/app/AppUpdateManager;

    invoke-static {v0}, Lcn/nubia/music/app/AppUpdateManager;->access$100(Lcn/nubia/music/app/AppUpdateManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/AppUpdateManager$1$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    return-void
.end method
