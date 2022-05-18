.class final Lcn/nubia/gallery3d/data/DownloadUtils$1;
.super Ljava/lang/Object;
.source "DownloadUtils.java"

# interfaces
.implements Lcn/nubia/gallery3d/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/data/DownloadUtils;->dump(Lcn/nubia/gallery3d/util/ThreadPool$JobContext;Ljava/io/InputStream;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/gallery3d/data/DownloadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/nubia/gallery3d/data/DownloadUtils$1;->val$thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
