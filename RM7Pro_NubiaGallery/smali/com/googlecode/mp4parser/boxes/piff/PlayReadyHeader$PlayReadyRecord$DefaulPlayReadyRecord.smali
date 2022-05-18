.class public Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$DefaulPlayReadyRecord;
.super Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
.source "PlayReadyHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaulPlayReadyRecord"
.end annotation


# instance fields
.field value:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 236
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/nio/ByteBuffer;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$DefaulPlayReadyRecord;->value:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public parse(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/piff/PlayReadyHeader$PlayReadyRecord$DefaulPlayReadyRecord;->value:Ljava/nio/ByteBuffer;

    return-void
.end method
