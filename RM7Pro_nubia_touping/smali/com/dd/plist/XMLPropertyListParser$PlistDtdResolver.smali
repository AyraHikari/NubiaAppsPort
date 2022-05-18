.class Lcom/dd/plist/XMLPropertyListParser$PlistDtdResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dd/plist/XMLPropertyListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlistDtdResolver"
.end annotation


# static fields
.field private static final PLIST_PUBLIC_ID_1:Ljava/lang/String; = "-//Apple Computer//DTD PLIST 1.0//EN"

.field private static final PLIST_PUBLIC_ID_2:Ljava/lang/String; = "-//Apple//DTD PLIST 1.0//EN"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method


# virtual methods
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 3

    .prologue
    .line 323
    const-string v0, "-//Apple Computer//DTD PLIST 1.0//EN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-//Apple//DTD PLIST 1.0//EN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 326
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
