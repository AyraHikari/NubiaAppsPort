.class Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;-><init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1300(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SlideshowSource;->isLoading()Z

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1202(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 214
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1000(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1, v2}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$202(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 216
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$SourceListener;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
