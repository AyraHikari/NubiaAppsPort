.class Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$ReplaceASingleEntryList;
.super Ljava/util/AbstractList;
.source "ReplaceSampleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReplaceASingleEntryList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$ReplaceASingleEntryList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$ReplaceASingleEntryList;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$ReplaceASingleEntryList;->get(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$ReplaceASingleEntryList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;

    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;->access$100(Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;)J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 92
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$ReplaceASingleEntryList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;

    invoke-static {p1}, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;->access$200(Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$ReplaceASingleEntryList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack$ReplaceASingleEntryList;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;

    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/ReplaceSampleTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
