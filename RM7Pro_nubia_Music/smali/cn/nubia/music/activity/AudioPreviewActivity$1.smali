.class Lcn/nubia/music/activity/AudioPreviewActivity$1;
.super Ljava/lang/Object;
.source "AudioPreviewActivity.java"

# interfaces
.implements Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AudioPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$1;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$1;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$000(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$1;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    .line 100
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$1;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$000(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    .line 101
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$1;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$100(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    goto :goto_0
.end method
