.class Lcn/nubia/music/activity/ForceTouchActivity$1;
.super Ljava/lang/Object;
.source "ForceTouchActivity.java"

# interfaces
.implements Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/ForceTouchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/ForceTouchActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/ForceTouchActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/music/activity/ForceTouchActivity$1;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$1;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->access$000(Lcn/nubia/music/activity/ForceTouchActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$1;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->finish()V

    .line 58
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$1;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->access$000(Lcn/nubia/music/activity/ForceTouchActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    .line 59
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$1;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/ForceTouchActivity$1;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/ForceTouchActivity;->access$100(Lcn/nubia/music/activity/ForceTouchActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/ForceTouchActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$1;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->finish()V

    goto :goto_0
.end method
