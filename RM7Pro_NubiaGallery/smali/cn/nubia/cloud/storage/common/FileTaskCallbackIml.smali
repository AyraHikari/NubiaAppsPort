.class Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;
.super Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;
.source "FileTaskCallbackIml.java"


# instance fields
.field private mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/cloud/utils/ProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/utils/ProgressListener<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/IFileTaskCallback$Stub;-><init>()V

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/utils/ProgressListener;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;->mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;

    return-void
.end method


# virtual methods
.method public onException(ILjava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;->mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;

    invoke-interface {v0, p1, p2}, Lcn/nubia/cloud/utils/ProgressListener;->onException(ILjava/lang/String;)V

    return-void
.end method

.method public onFileTaskStatus(IJJLcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 7

    .line 26
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;->mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcn/nubia/cloud/utils/ProgressListener;->onStatus(IJJLjava/lang/Object;)V

    return-void
.end method

.method public progressInterval()J
    .locals 2

    .line 20
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/FileTaskCallbackIml;->mFileTaskListener:Lcn/nubia/cloud/utils/ProgressListener;

    invoke-interface {v0}, Lcn/nubia/cloud/utils/ProgressListener;->progressInterval()J

    move-result-wide v0

    return-wide v0
.end method
