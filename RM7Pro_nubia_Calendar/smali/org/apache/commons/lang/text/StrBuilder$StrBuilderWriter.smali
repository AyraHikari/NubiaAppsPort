.class Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;
.super Ljava/io/Writer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderWriter"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/lang/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang/text/StrBuilder;)V
    .locals 0

    .prologue
    .line 2755
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2754
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    .line 2756
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 2761
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 2766
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 2770
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2771
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2785
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2786
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 2790
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2791
    return-void
.end method

.method public write([C)V
    .locals 1
    .param p1, "cbuf"    # [C

    .prologue
    .line 2775
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append([C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2776
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 2780
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrBuilder$StrBuilderWriter;->this$0:Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    .line 2781
    return-void
.end method
