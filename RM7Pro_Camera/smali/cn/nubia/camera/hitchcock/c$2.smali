.class Lcn/nubia/camera/hitchcock/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/s$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/hitchcock/c;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcn/nubia/camera/hitchcock/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/c;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c$2;->c:Lcn/nubia/camera/hitchcock/c;

    iput-object p2, p0, Lcn/nubia/camera/hitchcock/c$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcn/nubia/camera/hitchcock/c$2;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const-string v0, "HitchcockFragment"

    const-string v1, "onEncoderFinish"

    .line 731
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    .line 733
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_pending"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$2;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1d

    if-gt v3, v4, :cond_0

    .line 735
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 736
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c$2;->a:Landroid/app/Activity;

    iget-object v5, p0, Lcn/nubia/camera/hitchcock/c$2;->b:Landroid/net/Uri;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v4, 0x9

    .line 737
    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 738
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 739
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 740
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 741
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$2;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c$2;->b:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcn/nubia/camera/ba/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "_size"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    :cond_0
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$2;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c$2;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 745
    sget-boolean v1, Lcn/nubia/camera/r/a;->a:Z

    if-nez v1, :cond_1

    .line 746
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$2;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->w(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$2;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v3}, Lcn/nubia/camera/hitchcock/c;->v(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/bb/w;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    invoke-virtual {v1, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 748
    :cond_1
    new-instance v1, Lcn/nubia/l/b/g;

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c$2;->c:Lcn/nubia/camera/hitchcock/c;

    .line 749
    invoke-static {v3}, Lcn/nubia/camera/hitchcock/c;->x(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c$2;->b:Landroid/net/Uri;

    invoke-direct {v1, v3, v4, v2, v2}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 753
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c$2;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/c;->y(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    .line 754
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$2;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->A(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/hitchcock/c$2$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/hitchcock/c$2$1;-><init>(Lcn/nubia/camera/hitchcock/c$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 766
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$2;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->B(Lcn/nubia/camera/hitchcock/c;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 767
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c$2;->c:Lcn/nubia/camera/hitchcock/c;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/c;->C(Lcn/nubia/camera/hitchcock/c;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "close fd fail"

    .line 769
    invoke-static {v0, v2, v1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
