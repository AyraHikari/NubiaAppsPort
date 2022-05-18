.class Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;
.super Ljava/lang/Object;
.source "CloudPage.java"

# interfaces
.implements Lcn/nubia/improve/xcloud/CloudManager$ListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/CloudPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCloudAlbumListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/CloudPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/CloudPage;Lcn/nubia/gallery3d/app/CloudPage$1;)V
    .locals 0

    .line 861
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;-><init>(Lcn/nubia/gallery3d/app/CloudPage;)V

    return-void
.end method


# virtual methods
.method public addAlbum(Lcn/nubia/improve/xcloud/CloudBucket;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 871
    iget-object p1, p1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 872
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/app/CloudPage;->access$3302(Lcn/nubia/gallery3d/app/CloudPage;Z)Z

    .line 874
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$3300(Lcn/nubia/gallery3d/app/CloudPage;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 875
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$800(Lcn/nubia/gallery3d/app/CloudPage;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    if-eqz p2, :cond_2

    .line 877
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 878
    iget-object p1, p0, Lcn/nubia/gallery3d/app/CloudPage$LoadCloudAlbumListener;->this$0:Lcn/nubia/gallery3d/app/CloudPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/CloudPage;->access$1400(Lcn/nubia/gallery3d/app/CloudPage;)Lcn/nubia/improve/xcloud/CloudManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/improve/xcloud/CloudManager;->resetListListener()V

    :cond_2
    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method
