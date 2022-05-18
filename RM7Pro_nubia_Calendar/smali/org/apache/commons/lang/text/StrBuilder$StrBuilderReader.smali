.class Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;
.super Ljava/io/Reader;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderReader"
.end annotation


# instance fields
.field private mark:I

.field private pos:I

.field private final this$0:Lorg/apache/commons/lang/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang/text/StrBuilder;)V
    .locals 0

    .prologue
    .line 2676
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 2675
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    .line 2677
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 2682
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I

    .prologue
    .line 2736
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->mark:I

    .line 2737
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 2731
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .prologue
    .line 2686
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2687
    const/4 v0, -0x1

    .line 2689
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public read([CII)I
    .locals 3
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 2694
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p3

    if-gez v0, :cond_1

    .line 2696
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2698
    :cond_1
    if-nez p3, :cond_2

    .line 2699
    const/4 v0, 0x0

    .line 2709
    :goto_0
    return v0

    .line 2701
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 2702
    const/4 v0, -0x1

    goto :goto_0

    .line 2704
    :cond_3
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 2705
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    sub-int p3, v0, v1

    .line 2707
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    iget v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v2, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/commons/lang/text/StrBuilder;->getChars(II[CI)V

    .line 2708
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    move v0, p3

    .line 2709
    goto :goto_0
.end method

.method public ready()Z
    .locals 2

    .prologue
    .line 2726
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 2741
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->mark:I

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    .line 2742
    return-void
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 2714
    iget v2, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v4}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2715
    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v2}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    sub-int/2addr v2, v3

    int-to-long p1, v2

    .line 2717
    :cond_0
    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 2721
    .end local p1    # "n":J
    :goto_0
    return-wide p1

    .line 2720
    .restart local p1    # "n":J
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderReader;->pos:I

    goto :goto_0
.end method
