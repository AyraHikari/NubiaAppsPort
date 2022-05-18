.class Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;
.super Ljava/lang/Thread;
.source "SlomoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/media/SlomoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoEncoderStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/media/SlomoGenerator;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/media/SlomoGenerator;Lcn/nubia/videogenerator/media/SlomoGenerator$1;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;-><init>(Lcn/nubia/videogenerator/media/SlomoGenerator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SlomoGenerator"

    const-string v1, "start editing local video"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$100(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$200(Lcn/nubia/videogenerator/media/SlomoGenerator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$100(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/Encoder;->setVideoPts(J)V

    .line 110
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$100(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->start()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$300(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/codec/Decoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$200(Lcn/nubia/videogenerator/media/SlomoGenerator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$300(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/codec/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Decoder;->start()V

    .line 115
    :cond_1
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$400(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/local/VideoEditorSource;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$200(Lcn/nubia/videogenerator/media/SlomoGenerator;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$400(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/local/VideoEditorSource;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setFirstPts(J)V

    .line 118
    iget-object v0, p0, Lcn/nubia/videogenerator/media/SlomoGenerator$VideoEncoderStart;->this$0:Lcn/nubia/videogenerator/media/SlomoGenerator;

    invoke-static {v0}, Lcn/nubia/videogenerator/media/SlomoGenerator;->access$400(Lcn/nubia/videogenerator/media/SlomoGenerator;)Lcn/nubia/videogenerator/local/VideoEditorSource;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/VideoEditorSource;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
