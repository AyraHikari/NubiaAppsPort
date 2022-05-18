.class Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;
.super Ljava/lang/Thread;
.source "SlomoVideoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/editor/SlomoVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoEncoderStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/editor/SlomoVideoEditor;


# direct methods
.method private constructor <init>(Lcn/nubia/video/editor/SlomoVideoEditor;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/editor/SlomoVideoEditor;Lcn/nubia/video/editor/SlomoVideoEditor$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;-><init>(Lcn/nubia/video/editor/SlomoVideoEditor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SlomoVideoEditor"

    const-string v1, "start editing local video"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$100(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$200(Lcn/nubia/video/editor/SlomoVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$300(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/video/editor/VideoEditorInfo;

    move-result-object v0

    iget v0, v0, Lcn/nubia/video/editor/VideoEditorInfo;->mTrimMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$400(Lcn/nubia/video/editor/SlomoVideoEditor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$100(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/codec/Encoder;->setVideoPts(J)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$100(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$200(Lcn/nubia/video/editor/SlomoVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$100(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->start()V

    .line 119
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$500(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/codec/Decoder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$200(Lcn/nubia/video/editor/SlomoVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 120
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$500(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/codec/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Decoder;->start()V

    .line 122
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$600(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/local/VideoEditorSource;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$200(Lcn/nubia/video/editor/SlomoVideoEditor;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    :try_start_0
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$600(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/local/VideoEditorSource;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/local/VideoEditorSource;->setFirstPts(J)V

    .line 125
    iget-object v0, p0, Lcn/nubia/video/editor/SlomoVideoEditor$VideoEncoderStart;->this$0:Lcn/nubia/video/editor/SlomoVideoEditor;

    invoke-static {v0}, Lcn/nubia/video/editor/SlomoVideoEditor;->access$600(Lcn/nubia/video/editor/SlomoVideoEditor;)Lcn/nubia/videogenerator/local/VideoEditorSource;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/VideoEditorSource;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
