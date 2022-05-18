.class final Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;
.super Lorg/apache/commons/lang/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoFieldNameToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2172
    invoke-direct {p0}, Lorg/apache/commons/lang/builder/ToStringStyle;-><init>()V

    .line 2173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/ToStringStyle$NoFieldNameToStringStyle;->setUseFieldNames(Z)V

    .line 2174
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2182
    sget-object v0, Lorg/apache/commons/lang/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/commons/lang/builder/ToStringStyle;

    return-object v0
.end method
