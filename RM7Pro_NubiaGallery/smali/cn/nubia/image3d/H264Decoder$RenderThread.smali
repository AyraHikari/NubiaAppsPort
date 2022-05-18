.class Lcn/nubia/image3d/H264Decoder$RenderThread;
.super Ljava/lang/Thread;
.source "H264Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/image3d/H264Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/image3d/H264Decoder;


# direct methods
.method private constructor <init>(Lcn/nubia/image3d/H264Decoder;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcn/nubia/image3d/H264Decoder$RenderThread;->this$0:Lcn/nubia/image3d/H264Decoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/image3d/H264Decoder;Lcn/nubia/image3d/H264Decoder$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcn/nubia/image3d/H264Decoder$RenderThread;-><init>(Lcn/nubia/image3d/H264Decoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    :try_start_0
    iget-object v0, p0, Lcn/nubia/image3d/H264Decoder$RenderThread;->this$0:Lcn/nubia/image3d/H264Decoder;

    invoke-static {v0}, Lcn/nubia/image3d/H264Decoder;->access$100(Lcn/nubia/image3d/H264Decoder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 127
    :goto_0
    iget-object v0, p0, Lcn/nubia/image3d/H264Decoder$RenderThread;->this$0:Lcn/nubia/image3d/H264Decoder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/image3d/H264Decoder;->access$202(Lcn/nubia/image3d/H264Decoder;Z)Z

    return-void
.end method
