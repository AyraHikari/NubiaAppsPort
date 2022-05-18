.class Lcn/nubia/music/activity/ForceTouchActivity$2;
.super Ljava/lang/Object;
.source "ForceTouchActivity.java"

# interfaces
.implements Lcn/nubia/music/utils/CTA$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/ForceTouchActivity;->showCTADialog()V
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
    .line 78
    iput-object p1, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBtnClick()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->access$200(Lcn/nubia/music/activity/ForceTouchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->access$100(Lcn/nubia/music/activity/ForceTouchActivity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->access$000(Lcn/nubia/music/activity/ForceTouchActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/ForceTouchActivity;->access$100(Lcn/nubia/music/activity/ForceTouchActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/ForceTouchActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->finish()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/ForceTouchActivity;->access$000(Lcn/nubia/music/activity/ForceTouchActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/ForceTouchActivity$2;->a:Lcn/nubia/music/activity/ForceTouchActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/ForceTouchActivity;->access$300(Lcn/nubia/music/activity/ForceTouchActivity;)Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CtsManager;->requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    goto :goto_0
.end method
