.class Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;
.super Lorg/apache/commons/lang/text/StrTokenizer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/lang/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang/text/StrBuilder;)V
    .locals 0

    .prologue
    .line 2639
    invoke-direct {p0}, Lorg/apache/commons/lang/text/StrTokenizer;-><init>()V

    .line 2638
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    .line 2640
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2653
    invoke-super {p0}, Lorg/apache/commons/lang/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 2654
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2655
    iget-object v1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2657
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 2644
    if-nez p1, :cond_0

    .line 2645
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    iget-object v0, v0, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v2}, Lorg/apache/commons/lang/text/StrBuilder;->size()I

    move-result v2

    invoke-super {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 2647
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
