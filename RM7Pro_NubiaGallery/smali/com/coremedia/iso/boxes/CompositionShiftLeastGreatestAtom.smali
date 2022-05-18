.class public Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "CompositionShiftLeastGreatestAtom.java"


# instance fields
.field compositionOffsetToDisplayOffsetShift:I

.field displayEndTime:I

.field displayStartTime:I

.field greatestDisplayOffset:I

.field leastDisplayOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "cslg"

    .line 17
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 43
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->compositionOffsetToDisplayOffsetShift:I

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->leastDisplayOffset:I

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->greatestDisplayOffset:I

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayStartTime:I

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayEndTime:I

    return-void
.end method

.method public getCompositionOffsetToDisplayOffsetShift()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->compositionOffsetToDisplayOffsetShift:I

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 53
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    .line 54
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->compositionOffsetToDisplayOffsetShift:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->leastDisplayOffset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->greatestDisplayOffset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayStartTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayEndTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method protected getContentSize()J
    .locals 2

    const-wide/16 v0, 0x18

    return-wide v0
.end method

.method public getDisplayEndTime()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayEndTime:I

    return v0
.end method

.method public getDisplayStartTime()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayStartTime:I

    return v0
.end method

.method public getGreatestDisplayOffset()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->greatestDisplayOffset:I

    return v0
.end method

.method public getLeastDisplayOffset()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->leastDisplayOffset:I

    return v0
.end method

.method public setCompositionOffsetToDisplayOffsetShift(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->compositionOffsetToDisplayOffsetShift:I

    return-void
.end method

.method public setDisplayEndTime(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayEndTime:I

    return-void
.end method

.method public setDisplayStartTime(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->displayStartTime:I

    return-void
.end method

.method public setGreatestDisplayOffset(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->greatestDisplayOffset:I

    return-void
.end method

.method public setLeastDisplayOffset(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/coremedia/iso/boxes/CompositionShiftLeastGreatestAtom;->leastDisplayOffset:I

    return-void
.end method
