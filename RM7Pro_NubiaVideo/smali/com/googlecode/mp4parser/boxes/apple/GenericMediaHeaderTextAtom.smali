.class public Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "SourceFile"


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

    .line 1
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000

    .line 2
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    .line 3
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    return-void
.end method


# virtual methods
.method protected _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_2:I

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_3:I

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_4:I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_6:I

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_7:I

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_8:I

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_2:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_3:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_4:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 5
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 6
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_6:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 7
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_7:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_8:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 9
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

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    return v0
.end method

.method public getUnknown_2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_2:I

    return v0
.end method

.method public getUnknown_3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_3:I

    return v0
.end method

.method public getUnknown_4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_4:I

    return v0
.end method

.method public getUnknown_5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    return v0
.end method

.method public getUnknown_6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_6:I

    return v0
.end method

.method public getUnknown_7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_7:I

    return v0
.end method

.method public getUnknown_8()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_8:I

    return v0
.end method

.method public getUnknown_9()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    return v0
.end method

.method public setUnknown_1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_1:I

    return-void
.end method

.method public setUnknown_2(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_2:I

    return-void
.end method

.method public setUnknown_3(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_3:I

    return-void
.end method

.method public setUnknown_4(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_4:I

    return-void
.end method

.method public setUnknown_5(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_5:I

    return-void
.end method

.method public setUnknown_6(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_6:I

    return-void
.end method

.method public setUnknown_7(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_7:I

    return-void
.end method

.method public setUnknown_8(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_8:I

    return-void
.end method

.method public setUnknown_9(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;->unknown_9:I

    return-void
.end method
