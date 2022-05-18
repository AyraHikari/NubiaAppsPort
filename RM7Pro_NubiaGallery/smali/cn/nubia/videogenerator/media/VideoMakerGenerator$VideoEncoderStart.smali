.class Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;
.super Ljava/lang/Thread;
.source "VideoMakerGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/media/VideoMakerGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoEncoderStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/media/VideoMakerGenerator;Lcn/nubia/videogenerator/media/VideoMakerGenerator$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;-><init>(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$200(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$200(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->start()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$300(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/ImageRender;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$300(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/ImageRender;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/ImageRender;->startRender()V

    :cond_1
    return-void
.end method
