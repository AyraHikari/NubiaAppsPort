.class Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;
.super Ljava/lang/Thread;
.source "VideoMakerGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/media/VideoMakerGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncoderStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/media/VideoMakerGenerator;Lcn/nubia/videogenerator/media/VideoMakerGenerator$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;-><init>(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$400(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$400(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->start()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$500(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Decoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$500(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/codec/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Decoder;->start()V

    .line 107
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$600(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/local/AudioLocalSource;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcn/nubia/videogenerator/media/VideoMakerGenerator$AudioEncoderStart;->this$0:Lcn/nubia/videogenerator/media/VideoMakerGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/VideoMakerGenerator;->access$600(Lcn/nubia/videogenerator/media/VideoMakerGenerator;)Lcn/nubia/videogenerator/local/AudioLocalSource;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->start()V

    :cond_2
    return-void
.end method
