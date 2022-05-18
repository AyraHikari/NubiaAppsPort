.class Lcn/nubia/music/activity/DeleteItemsActivity$2$1;
.super Ljava/lang/Object;
.source "DeleteItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/DeleteItemsActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/DeleteItemsActivity$2;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/DeleteItemsActivity$2;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$2$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcn/nubia/music/activity/DeleteItemsActivity$2$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity$2;

    iget-object v0, v0, Lcn/nubia/music/activity/DeleteItemsActivity$2;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$000(Lcn/nubia/music/activity/DeleteItemsActivity;)[J

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/DeleteItemsActivity$2$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity$2;

    iget-object v1, v1, Lcn/nubia/music/activity/DeleteItemsActivity$2;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    const/4 v2, 0x1

    iget-object v3, p0, Lcn/nubia/music/activity/DeleteItemsActivity$2$1;->a:Lcn/nubia/music/activity/DeleteItemsActivity$2;

    iget-object v3, v3, Lcn/nubia/music/activity/DeleteItemsActivity$2;->a:Lcn/nubia/music/activity/DeleteItemsActivity;

    .line 125
    invoke-static {v3}, Lcn/nubia/music/activity/DeleteItemsActivity;->access$600(Lcn/nubia/music/activity/DeleteItemsActivity;)Z

    move-result v3

    .line 124
    invoke-static {v0, v1, v2, v3}, Lcn/nubia/music/utils/MusicUtils;->deleteTracksWithCallback([JLcn/nubia/music/app/listener/IDeleteMusicCallBack;ZZ)V

    .line 126
    return-void
.end method
