.class final Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;
.super Lorg/apache/commons/lang/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiLineToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 2274
    invoke-direct {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;-><init>()V

    .line 2275
    const-string v0, "["

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2276
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 2277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;->setFieldSeparatorAtStart(Z)V

    .line 2278
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$MultiLineToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2279
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2287
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method
