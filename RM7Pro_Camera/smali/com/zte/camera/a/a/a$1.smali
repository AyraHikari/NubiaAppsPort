.class Lcom/zte/camera/a/a/a$1;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zte/camera/a/a/a;


# direct methods
.method constructor <init>(Lcom/zte/camera/a/a/a;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/zte/camera/a/a/a$1;->a:Lcom/zte/camera/a/a/a;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 2

    .line 126
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio encoder: input buffer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/zte/camera/a/a/a$1;->a:Lcom/zte/camera/a/a/a;

    invoke-static {p1}, Lcom/zte/camera/a/a/a;->a(Lcom/zte/camera/a/a/a;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object p1, p0, Lcom/zte/camera/a/a/a$1;->a:Lcom/zte/camera/a/a/a;

    invoke-static {p1}, Lcom/zte/camera/a/a/a;->b(Lcom/zte/camera/a/a/a;)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    .line 132
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio encoder: output buffer index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/zte/camera/a/a/a$1;->a:Lcom/zte/camera/a/a/a;

    invoke-static {p1, p2, p3}, Lcom/zte/camera/a/a/a;->a(Lcom/zte/camera/a/a/a;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 3

    .line 120
    invoke-static {}, Lcom/zte/camera/a/a/a;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio encoder: outputformat changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/zte/camera/a/a/a$1;->a:Lcom/zte/camera/a/a/a;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/zte/camera/a/a/a;->a(Lcom/zte/camera/a/a/a;Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    .line 122
    iget-object p1, p0, Lcom/zte/camera/a/a/a$1;->a:Lcom/zte/camera/a/a/a;

    invoke-virtual {p1}, Lcom/zte/camera/a/a/a;->c()V

    return-void
.end method
