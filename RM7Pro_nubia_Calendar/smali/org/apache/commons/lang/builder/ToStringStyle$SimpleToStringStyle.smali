.class final Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;
.super Lorg/apache/commons/lang/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2238
    invoke-direct {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;-><init>()V

    .line 2239
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;->setUseClassName(Z)V

    .line 2240
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2241
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;->setUseFieldNames(Z)V

    .line 2242
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2243
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$SimpleToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2244
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2251
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method
