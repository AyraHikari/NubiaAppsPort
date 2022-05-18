.class Lcn/nubia/music/app/model/MetadataCheck$1;
.super Ljava/lang/Object;
.source "MetadataCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/model/MetadataCheck;->startCheck(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/music/app/model/MetadataCheck;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/model/MetadataCheck;I)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcn/nubia/music/app/model/MetadataCheck$1;->b:Lcn/nubia/music/app/model/MetadataCheck;

    iput p2, p0, Lcn/nubia/music/app/model/MetadataCheck$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/app/model/MetadataCheck$1;->b:Lcn/nubia/music/app/model/MetadataCheck;

    iget v1, p0, Lcn/nubia/music/app/model/MetadataCheck$1;->a:I

    invoke-static {v0, v1}, Lcn/nubia/music/app/model/MetadataCheck;->access$000(Lcn/nubia/music/app/model/MetadataCheck;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, p0, Lcn/nubia/music/app/model/MetadataCheck$1;->b:Lcn/nubia/music/app/model/MetadataCheck;

    invoke-static {v0, v3}, Lcn/nubia/music/app/model/MetadataCheck;->access$102(Lcn/nubia/music/app/model/MetadataCheck;Z)Z

    .line 243
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCheckMetadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    iget-object v0, p0, Lcn/nubia/music/app/model/MetadataCheck$1;->b:Lcn/nubia/music/app/model/MetadataCheck;

    invoke-static {v0, v3}, Lcn/nubia/music/app/model/MetadataCheck;->access$102(Lcn/nubia/music/app/model/MetadataCheck;Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/nubia/music/app/model/MetadataCheck$1;->b:Lcn/nubia/music/app/model/MetadataCheck;

    invoke-static {v1, v3}, Lcn/nubia/music/app/model/MetadataCheck;->access$102(Lcn/nubia/music/app/model/MetadataCheck;Z)Z

    throw v0

    .line 238
    :catch_1
    move-exception v0

    goto :goto_1
.end method
