.class Lcn/nubia/music/activity/MoreActivity$2;
.super Ljava/lang/Object;
.source "MoreActivity.java"

# interfaces
.implements Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MoreActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MoreActivity;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcn/nubia/music/activity/MoreActivity$2;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$2;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MoreActivity;->access$500(Lcn/nubia/music/activity/MoreActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$2;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/MoreActivity;->finish()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MoreActivity$2;->a:Lcn/nubia/music/activity/MoreActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MoreActivity;->access$500(Lcn/nubia/music/activity/MoreActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    .line 100
    return-void
.end method
