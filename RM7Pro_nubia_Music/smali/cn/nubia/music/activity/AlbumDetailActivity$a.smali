.class Lcn/nubia/music/activity/AlbumDetailActivity$a;
.super Ljava/lang/Object;
.source "AlbumDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AlbumDetailActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/music/activity/AlbumDetailActivity;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/activity/AlbumDetailActivity;Lcn/nubia/music/activity/AlbumDetailActivity$1;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcn/nubia/music/activity/AlbumDetailActivity$a;-><init>(Lcn/nubia/music/activity/AlbumDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$100(Lcn/nubia/music/activity/AlbumDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/AlbumDetailActivity;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-virtual {v2}, Lcn/nubia/music/activity/AlbumDetailActivity;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fav_album"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/activity/AlbumDetailActivity;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$102(Lcn/nubia/music/activity/AlbumDetailActivity;Z)Z

    .line 239
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$200(Lcn/nubia/music/activity/AlbumDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$400(Lcn/nubia/music/activity/AlbumDetailActivity;)Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$300(Lcn/nubia/music/activity/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;->unLikeAlbum(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$500(Lcn/nubia/music/activity/AlbumDetailActivity;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$500(Lcn/nubia/music/activity/AlbumDetailActivity;)[J

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$400(Lcn/nubia/music/activity/AlbumDetailActivity;)Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$300(Lcn/nubia/music/activity/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$600(Lcn/nubia/music/activity/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/music/activity/AlbumDetailActivity$a;->a:Lcn/nubia/music/activity/AlbumDetailActivity;

    invoke-static {v3}, Lcn/nubia/music/activity/AlbumDetailActivity;->access$500(Lcn/nubia/music/activity/AlbumDetailActivity;)[J

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/music/activity/presenter/AlbumDetailContract$Presenter;->likeAlbum(Ljava/lang/String;Ljava/lang/String;[J)V

    goto :goto_0
.end method
