.class Lcn/nubia/videogenerator/codec/Encoder$EncoderTask;
.super Ljava/lang/Thread;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/videogenerator/codec/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncoderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/videogenerator/codec/Encoder;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/codec/Encoder;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcn/nubia/videogenerator/codec/Encoder$EncoderTask;->this$0:Lcn/nubia/videogenerator/codec/Encoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/codec/Encoder;Lcn/nubia/videogenerator/codec/Encoder$1;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/codec/Encoder$EncoderTask;-><init>(Lcn/nubia/videogenerator/codec/Encoder;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcn/nubia/videogenerator/codec/Encoder$EncoderTask;->this$0:Lcn/nubia/videogenerator/codec/Encoder;

    invoke-static {v0}, Lcn/nubia/videogenerator/codec/Encoder;->access$000(Lcn/nubia/videogenerator/codec/Encoder;)V

    return-void
.end method
