.class Lcn/nubia/music/activity/PlayListDetailActivity$1;
.super Ljava/lang/Object;
.source "PlayListDetailActivity.java"

# interfaces
.implements Lcn/nubia/music/app/listener/ICurrentAlbumCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/PlayListDetailActivity;->setPlayListInfo(Lcn/nubia/music/online/model/PlaylistModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlayListDetailActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/PlayListDetailActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$1;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentAlbumUpdate(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$1;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    const v1, 0x7f100067

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/PlayListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 92
    iget-object v1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$1;->a:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v1}, Lcn/nubia/music/activity/PlayListDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/GaussianBlur;->with(Landroid/content/Context;)Lcn/nubia/music/utils/GaussianBlur;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/nubia/music/utils/GaussianBlur;->render(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_0
    return-void
.end method
