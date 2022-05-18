.class Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;
.super Ljava/lang/Thread;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadHeicTask"
.end annotation


# instance fields
.field heicPath:Ljava/lang/String;

.field heicRotation:I

.field index_heic:I

.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;II)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 894
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->heicPath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 895
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->heicRotation:I

    .line 896
    iput p1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->index_heic:I

    .line 899
    iput-object p2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->heicPath:Ljava/lang/String;

    .line 900
    iput p3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->heicRotation:I

    .line 901
    iput p4, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->index_heic:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    .line 907
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$500(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    .line 909
    :try_start_1
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v3, v3, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    if-eqz v3, :cond_2

    .line 910
    iget v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->index_heic:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 911
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v6, v3, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    iget v7, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->index_heic:I

    invoke-virtual {v6, v7, v2}, Landroid/media/MediaMetadataRetriever;->getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$602(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 912
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iput-boolean v0, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_load_finish:Z

    .line 913
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iput-boolean v5, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic0_has_rotation:Z

    .line 914
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    .line 916
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v6, v3, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    iget v7, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->index_heic:I

    invoke-virtual {v6, v7, v2}, Landroid/media/MediaMetadataRetriever;->getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$802(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 917
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iput-boolean v0, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_load_finish:Z

    .line 918
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iput-boolean v5, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic1_has_rotation:Z

    .line 919
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 921
    iget-object v3, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iget-object v6, v3, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->mediaMetadataRetriever:Landroid/media/MediaMetadataRetriever;

    iget v7, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->index_heic:I

    invoke-virtual {v6, v7, v2}, Landroid/media/MediaMetadataRetriever;->getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$902(Lcn/nubia/gallery3d/app/PhotoDataAdapter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 922
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iput-boolean v5, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_has_rotation:Z

    .line 923
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    iput-boolean v0, v2, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->heic2_load_finish:Z

    .line 924
    iget-object v2, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$700(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 927
    :cond_2
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    .line 930
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 931
    iget-object v1, p0, Lcn/nubia/gallery3d/app/PhotoDataAdapter$LoadHeicTask;->this$0:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->access$100(Lcn/nubia/gallery3d/app/PhotoDataAdapter;)Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter$DataListener;->onHeifLoadStatus(Z)V

    const-string v0, "PhotoDataAdapter"

    const-string v1, "LoadHeicTask error!!!"

    .line 932
    invoke-static {v0, v1}, Lcn/nubia/gallery3d/data/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
