.class Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;
.super Ljava/lang/Object;
.source "SlideshowDataAdapter.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowDataAdapter;
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
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Lcn/nubia/gallery3d/app/SlideshowDataAdapter$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;-><init>(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 10

    .line 112
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v0

    .line 113
    :catch_0
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$100(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$200(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    .line 114
    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$300(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 116
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_1

    .line 122
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 123
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$100(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 124
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$402(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 126
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$500(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Lcn/nubia/gallery3d/data/MediaItem;

    move-result-object v0

    .line 128
    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$400(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 130
    :try_start_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$300(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$700(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$602(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;I)I

    .line 132
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_3
    const-string v3, "SlideshowDataAdapter"

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReloadTask mLoadIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v5}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$600(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$800(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$800(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$900(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 137
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$604(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    goto/16 :goto_0

    :cond_4
    if-nez v0, :cond_6

    .line 142
    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v3

    .line 143
    :try_start_4
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1000(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$202(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;Z)Z

    .line 144
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 145
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 151
    :cond_6
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v3, v4, :cond_7

    .line 153
    invoke-virtual {v0, v6}, Lcn/nubia/gallery3d/data/MediaItem;->requestImage(I)Lcn/nubia/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    .line 154
    invoke-interface {v3, p1}, Lcn/nubia/gallery3d/util/ThreadPool$Job;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_2

    .line 157
    :cond_7
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1100(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 158
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$800(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v1, v3}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1102(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;I)I

    .line 160
    :cond_8
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$800(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1110(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "/"

    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 162
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 163
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 164
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 165
    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 166
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 167
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 168
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 169
    invoke-static {v6}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v8

    int-to-float v8, v8

    .line 170
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v8, v4

    .line 171
    invoke-static {v8}, Lcn/nubia/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 172
    iput-boolean v2, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 173
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move v2, v6

    :goto_2
    if-eqz v3, :cond_a

    .line 184
    iget-object v4, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    monitor-enter v4

    .line 185
    :try_start_5
    iget-object v7, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v7}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$300(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v7

    new-instance v8, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;

    iget-object v9, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    .line 186
    invoke-static {v9}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$600(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    move-result v9

    invoke-direct {v8, v0, v9, v3, v1}, Lcn/nubia/gallery3d/app/SlideshowPage$Slide;-><init>(Lcn/nubia/gallery3d/data/MediaItem;ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 187
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$300(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v6, :cond_9

    .line 188
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 190
    :cond_9
    monitor-exit v4

    goto :goto_3

    :catchall_2
    move-exception p1

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :cond_a
    :goto_3
    if-nez v2, :cond_b

    .line 193
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$604(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    goto/16 :goto_0

    .line 195
    :cond_b
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$604(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    .line 196
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0, v5}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1102(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;I)I

    goto/16 :goto_0

    .line 175
    :cond_c
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0, v5}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$1102(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;I)I

    .line 176
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowDataAdapter$ReloadTask;->this$0:Lcn/nubia/gallery3d/app/SlideshowDataAdapter;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowDataAdapter;->access$604(Lcn/nubia/gallery3d/app/SlideshowDataAdapter;)I

    goto/16 :goto_0

    :catchall_3
    move-exception p1

    .line 122
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p1
.end method
