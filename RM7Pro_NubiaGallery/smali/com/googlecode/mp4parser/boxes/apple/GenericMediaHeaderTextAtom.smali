.class public Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "GenericMediaHeaderTextAtom.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "text"


# instance fields
.field unknown_1:I

.field unknown_2:I

.field unknown_3:I

.field unknown_4:I

.field unknown_5:I

.field unknown_6:I

.field unknown_7:I

.field unknown_8:I

.field unknown_9:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "text"

    .line 25
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000

    .line 14
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    .line 18
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_2:I

    .line 50
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_3:I

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_4:I

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    .line 53
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_6:I

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_7:I

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_8:I

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 35
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_2:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 37
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_3:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 38
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_4:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 39
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 40
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_6:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 41
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_7:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_8:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x24

    return-wide v0
.end method

.method public getUnknown_1()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    return v0
.end method

.method public getUnknown_2()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_2:I

    return v0
.end method

.method public getUnknown_3()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_3:I

    return v0
.end method

.method public getUnknown_4()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_4:I

    return v0
.end method

.method public getUnknown_5()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    return v0
.end method

.method public getUnknown_6()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_6:I

    return v0
.end method

.method public getUnknown_7()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_7:I

    return v0
.end method

.method public getUnknown_8()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_8:I

    return v0
.end method

.method public getUnknown_9()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    return v0
.end method

.method public setUnknown_1(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    return-void
.end method

.method public setUnknown_2(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_2:I

    return-void
.end method

.method public setUnknown_3(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_3:I

    return-void
.end method

.method public setUnknown_4(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_4:I

    return-void
.end method

.method public setUnknown_5(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    return-void
.end method

.method public setUnknown_6(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_6:I

    return-void
.end method

.method public setUnknown_7(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_7:I

    return-void
.end method

.method public setUnknown_8(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_8:I

    return-void
.end method

.method public setUnknown_9(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    return-void
.end method
