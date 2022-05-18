.class Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;
.super Ljava/lang/Object;
.source "CategoryProcessTask.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/category/CategoryProcessTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookupJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field private mLatitude:D

.field private mLongitude:D

.field final synthetic this$0:Lcn/nubia/improve/category/CategoryProcessTask;


# direct methods
.method protected constructor <init>(Lcn/nubia/improve/category/CategoryProcessTask;DD)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-wide p2, p0, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->mLatitude:D

    .line 362
    iput-wide p4, p0, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->mLongitude:D

    return-void
.end method

.method private isValidNetwork()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {v0}, Lcn/nubia/improve/category/CategoryProcessTask;->access$1000(Lcn/nubia/improve/category/CategoryProcessTask;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 399
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private lookupAddress(DD)Landroid/location/Address;
    .locals 9

    const-string v0, "CategoryProcessTask"

    .line 371
    invoke-direct {p0}, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->isValidNetwork()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 372
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zh"

    .line 373
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "en"

    .line 376
    :cond_0
    new-instance v3, Landroid/location/Geocoder;

    iget-object v4, p0, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->this$0:Lcn/nubia/improve/category/CategoryProcessTask;

    invoke-static {v4}, Lcn/nubia/improve/category/CategoryProcessTask;->access$1000(Lcn/nubia/improve/category/CategoryProcessTask;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/util/Locale;

    invoke-direct {v5, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v8, 0x1

    move-wide v4, p1

    move-wide v6, p3

    .line 378
    :try_start_0
    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    .line 379
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 380
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lookupAdrress Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 386
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lookupAdrress IOException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 383
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lookupAdrress Illegal: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v2
.end method


# virtual methods
.method public run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;
    .locals 4

    .line 366
    iget-wide v0, p0, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->mLatitude:D

    iget-wide v2, p0, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->mLongitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->lookupAddress(DD)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Lcn/nubia/improve/category/CategoryProcessTask$AddressLookupJob;->run(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method
