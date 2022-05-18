.class Lcn/nubia/music/activity/AudioPreviewActivity$4;
.super Ljava/lang/Object;
.source "AudioPreviewActivity.java"

# interfaces
.implements Lcn/nubia/music/utils/CTA$OnBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;->checkPermission()V
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
    .line 219
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$4;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBtnClick()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$4;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$000(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$4;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$100(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$4;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$000(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/utils/CtsManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$4;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$500(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CtsManager;->requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    goto :goto_0
.end method
