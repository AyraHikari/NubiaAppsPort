.class Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;
.super Ljava/lang/Object;
.source "CloudAlbumSet.java"

# interfaces
.implements Lcn/nubia/improve/xcloud/CloudManager$ListCloudAlbumListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/ui/CloudAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;


# direct methods
.method private constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumSet;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/cloud/ui/CloudAlbumSet;Lcn/nubia/cloud/ui/CloudAlbumSet$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSet;)V

    return-void
.end method


# virtual methods
.method public addAlbum(Lcn/nubia/improve/xcloud/CloudBucket;Z)V
    .locals 9

    const-string v0, "CloudAlbumSet"

    if-eqz p1, :cond_4

    .line 268
    iget-object v1, p1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buckets = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/improve/xcloud/CloudBucket;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finish load ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$100(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    new-instance v8, Lcn/nubia/cloud/ui/CloudAlbum;

    const-string v2, "/nubiacloud/all/cloud/"

    invoke-static {v2}, Lcn/nubia/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Path;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketPath:Ljava/lang/String;

    .line 273
    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    .line 272
    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/data/Path;->getChild(I)Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 274
    invoke-static {v2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$300(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-static {}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$408()I

    move-result v5

    iget-object v6, p1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcn/nubia/cloud/ui/CloudAlbum;-><init>(Lcn/nubia/gallery3d/data/Path;Lcn/nubia/gallery3d/app/GalleryApp;ILjava/lang/String;Ljava/util/ArrayList;)V

    .line 271
    invoke-static {v1, v8}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$202(Lcn/nubia/cloud/ui/CloudAlbumSet;Lcn/nubia/cloud/ui/CloudAlbum;)Lcn/nubia/cloud/ui/CloudAlbum;

    .line 275
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/nubia/cloud/ui/CloudAlbum;->setCloudPath(Ljava/lang/String;)V

    .line 276
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;

    move-result-object v1

    iget-object v2, p1, Lcn/nubia/improve/xcloud/CloudBucket;->mFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcn/nubia/cloud/ui/CloudAlbum;->setCloudItems(Ljava/util/ArrayList;)V

    .line 277
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$500(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$500(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$100(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/HashMap;

    move-result-object v1

    iget-object p1, p1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$600(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$600(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;->addOneAlbum()V

    .line 285
    :cond_1
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$700(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;

    move-result-object p1

    goto :goto_0

    .line 289
    :cond_2
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$100(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Lcn/nubia/improve/xcloud/CloudBucket;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-static {v1, v2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$202(Lcn/nubia/cloud/ui/CloudAlbumSet;Lcn/nubia/cloud/ui/CloudAlbum;)Lcn/nubia/cloud/ui/CloudAlbum;

    .line 290
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;

    move-result-object v1

    iget-object p1, p1, Lcn/nubia/improve/xcloud/CloudBucket;->mFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Lcn/nubia/cloud/ui/CloudAlbum;->setCloudItems(Ljava/util/ArrayList;)V

    .line 291
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$600(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 293
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$600(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet$Listener;->addOneAlbum()V

    .line 295
    :cond_3
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$700(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;

    :cond_4
    :goto_0
    if-eqz p2, :cond_7

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAlbums.size() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$500(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " mTempAlbums.size() = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 302
    invoke-static {p2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-static {v0, p1}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 304
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/gallery3d/data/MediaSet;

    .line 305
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    move-object v2, p2

    check-cast v2, Lcn/nubia/cloud/ui/CloudAlbum;

    invoke-static {v1, v2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$202(Lcn/nubia/cloud/ui/CloudAlbumSet;Lcn/nubia/cloud/ui/CloudAlbum;)Lcn/nubia/cloud/ui/CloudAlbum;

    .line 306
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$300(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    .line 307
    invoke-static {v2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$200(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbum;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/cloud/ui/CloudAlbum;->getAllCloudItemPath()Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    invoke-static {v1, v2}, Lcn/nubia/improve/xcloud/CloudTaskDbHelper;->updateDeleteColumnAfterDeleteCloudItem(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 308
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove album name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$100(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$500(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {v1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$900(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 315
    :cond_5
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$700(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 316
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$700(Lcn/nubia/cloud/ui/CloudAlbumSet;)Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet$AlbumChangeListener;->albumChanged()V

    .line 318
    :cond_6
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 319
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$800(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p2}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$500(Lcn/nubia/cloud/ui/CloudAlbumSet;)Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 321
    :cond_7
    iget-object p1, p0, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;->this$0:Lcn/nubia/cloud/ui/CloudAlbumSet;

    invoke-static {p1}, Lcn/nubia/cloud/ui/CloudAlbumSet;->access$1000(Lcn/nubia/cloud/ui/CloudAlbumSet;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener$1;

    invoke-direct {p2, p0}, Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener$1;-><init>(Lcn/nubia/cloud/ui/CloudAlbumSet$MyListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
