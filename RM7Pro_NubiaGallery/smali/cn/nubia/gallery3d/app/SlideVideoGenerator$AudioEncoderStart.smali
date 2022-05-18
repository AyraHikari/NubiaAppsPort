.class Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;
.super Ljava/lang/Thread;
.source "SlideVideoGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioEncoderStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/SlideVideoGenerator;Lcn/nubia/gallery3d/app/SlideVideoGenerator$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;-><init>(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 206
    :try_start_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$100(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$200(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$100(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->start()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$300(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$200(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$300(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Encoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Encoder;->start()V

    .line 212
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$400(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Decoder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$200(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$400(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/codec/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/codec/Decoder;->start()V

    .line 215
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$500(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/local/AudioLocalSource;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$200(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$500(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/videogenerator/local/AudioLocalSource;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$600(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)V

    .line 225
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 219
    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideVideoGenerator$AudioEncoderStart;->this$0:Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->access$600(Lcn/nubia/gallery3d/app/SlideVideoGenerator;)V

    .line 221
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
