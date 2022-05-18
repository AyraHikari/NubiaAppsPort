.class Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "SlideShowEffectDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;-><init>(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 7

    .line 50
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->access$000(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)Lcn/nubia/gallery3d/app/GalleryContext;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030001

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    const-string v5, "drawable"

    .line 55
    invoke-virtual {p1, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 59
    iget-object v5, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    monitor-enter v5

    .line 60
    :try_start_0
    iget-object v6, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    invoke-static {v6}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->access$100(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v4, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    invoke-static {v4}, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;->access$100(Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 63
    iget-object v4, p0, Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter$ReloadTask;->this$0:Lcn/nubia/improve/slideshow/SlideShowEffectDataAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 65
    :cond_0
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
