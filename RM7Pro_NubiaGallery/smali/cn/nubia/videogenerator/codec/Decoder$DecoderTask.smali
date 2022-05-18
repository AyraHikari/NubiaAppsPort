.class Lcn/nubia/videogenerator/codec/Decoder$DecoderTask;
.super Ljava/lang/Thread;
.source "Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/codec/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecoderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/codec/Decoder;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/codec/Decoder;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/Decoder$DecoderTask;->this$0:Lcn/nubia/videogenerator/codec/Decoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/codec/Decoder;Lcn/nubia/videogenerator/codec/Decoder$1;)V
    .locals 0

    .line 653
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/codec/Decoder$DecoderTask;-><init>(Lcn/nubia/videogenerator/codec/Decoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 655
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Decoder$DecoderTask;->this$0:Lcn/nubia/videogenerator/codec/Decoder;

    invoke-static {v0}, Lcn/nubia/videogenerator/codec/Decoder;->access$000(Lcn/nubia/videogenerator/codec/Decoder;)V

    return-void
.end method
