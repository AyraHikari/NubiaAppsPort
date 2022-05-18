.class Lcn/nubia/videogenerator/media/LivePhotoGenerator$2;
.super Ljava/lang/Object;
.source "LivePhotoGenerator.java"

# interfaces
.implements Lcn/nubia/videogenerator/livephoto/FrameFilter$OnQueueBeginOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/videogenerator/media/LivePhotoGenerator;->startVideoEncode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/media/LivePhotoGenerator;


# direct methods
.method constructor <init>(Lcn/nubia/videogenerator/media/LivePhotoGenerator;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator$2;->this$0:Lcn/nubia/videogenerator/media/LivePhotoGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueueBeginOutput()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator$2;->this$0:Lcn/nubia/videogenerator/media/LivePhotoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->access$100(Lcn/nubia/videogenerator/media/LivePhotoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcn/nubia/videogenerator/media/LivePhotoGenerator$2;->this$0:Lcn/nubia/videogenerator/media/LivePhotoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/LivePhotoGenerator;->access$100(Lcn/nubia/videogenerator/media/LivePhotoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->start()V

    :cond_0
    return-void
.end method
