.class Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/ui/DetailsHelper$DetailsSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDetailsSource"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 2385
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/PhotoPage$1;)V
    .locals 0

    .line 2385
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public findIndex(I)I
    .locals 0

    .line 2400
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;->mIndex:I

    return p1
.end method

.method public getDetails()Lcn/nubia/gallery3d/data/MediaDetails;
    .locals 2

    .line 2390
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2200(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/app/PhotoPage$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/app/PhotoPage$Model;->getMediaItem(I)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getDetails()Lcn/nubia/gallery3d/data/MediaDetails;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 2406
    iget v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;->mIndex:I

    return v0
.end method

.method public isCameraPic()Z
    .locals 1

    .line 2412
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$4800(Lcn/nubia/gallery3d/app/PhotoPage;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 2395
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2400(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/data/FilterDeleteSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$MyDetailsSource;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2400(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/data/FilterDeleteSet;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/FilterDeleteSet;->getMediaItemCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
