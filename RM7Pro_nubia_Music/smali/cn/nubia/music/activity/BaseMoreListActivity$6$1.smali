.class Lcn/nubia/music/activity/BaseMoreListActivity$6$1;
.super Ljava/lang/Object;
.source "BaseMoreListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/BaseMoreListActivity$6;->onDestroyActionMode(Lcn/nubia/commonui/actionbar/view/ActionMode;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/BaseMoreListActivity$6;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/BaseMoreListActivity$6;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6$1;->a:Lcn/nubia/music/activity/BaseMoreListActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6$1;->a:Lcn/nubia/music/activity/BaseMoreListActivity$6;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$500(Lcn/nubia/music/activity/BaseMoreListActivity;)Lcn/nubia/music/ui/MiniMusicPlayBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcn/nubia/music/activity/BaseMoreListActivity$6$1;->a:Lcn/nubia/music/activity/BaseMoreListActivity$6;

    iget-object v0, v0, Lcn/nubia/music/activity/BaseMoreListActivity$6;->a:Lcn/nubia/music/activity/BaseMoreListActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/BaseMoreListActivity;->access$500(Lcn/nubia/music/activity/BaseMoreListActivity;)Lcn/nubia/music/ui/MiniMusicPlayBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setVisibility(I)V

    .line 429
    :cond_0
    return-void
.end method
