.class public Lcom/googlecode/mp4parser/h264/model/ChromaFormat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static MONOCHROME:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

.field public static YUV_420:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

.field public static YUV_422:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

.field public static YUV_444:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;


# instance fields
.field private id:I

.field private subHeight:I

.field private subWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;-><init>(III)V

    sput-object v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->MONOCHROME:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    .line 2
    new-instance v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;-><init>(III)V

    sput-object v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_420:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    .line 3
    new-instance v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    invoke-direct {v0, v2, v2, v1}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;-><init>(III)V

    sput-object v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_422:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    .line 4
    new-instance v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1, v1}, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;-><init>(III)V

    sput-object v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_444:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->id:I

    .line 3
    iput p2, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->subWidth:I

    .line 4
    iput p3, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->subHeight:I

    return-void
.end method

.method public static fromId(I)Lcom/googlecode/mp4parser/h264/model/ChromaFormat;
    .locals 2

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->MONOCHROME:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    iget v1, v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->id:I

    if-ne p0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_420:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    iget v1, v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->id:I

    if-ne p0, v1, :cond_1

    return-object v0

    .line 3
    :cond_1
    sget-object v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_422:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    iget v1, v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->id:I

    if-ne p0, v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    sget-object v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->YUV_444:Lcom/googlecode/mp4parser/h264/model/ChromaFormat;

    iget v1, v0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->id:I

    if-ne p0, v1, :cond_3

    return-object v0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->id:I

    return v0
.end method

.method public getSubHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->subHeight:I

    return v0
.end method

.method public getSubWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->subWidth:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChromaFormat{\nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->subWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/googlecode/mp4parser/h264/model/ChromaFormat;->subHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
